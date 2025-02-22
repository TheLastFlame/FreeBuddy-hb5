import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/i18n/strings.g.dart';
import '../../headphones/cubit/headphones_connection_cubit.dart';
import '../../headphones/cubit/headphones_cubit_objects.dart';
import '../../headphones/framework/bluetooth_headphones.dart';
import '../pages/disabled.dart';
import '../pages/home/bluetooth_disabled_info_widget.dart';
import '../pages/home/connected_closed_widget.dart';
import '../pages/home/disconnected_info_widget.dart';
import '../pages/home/no_permission_info_widget.dart';
import '../pages/home/not_paired_info_widget.dart';

/// This listens to [HeadphonesConnectionCubit] and (through big-ass switch
/// machinery), decides whether to:
/// - show card about not having bluetooth granted/enabled
/// - show disabled widget from builder, covered with info about disconnection
/// - actually show the damn widget
///
/// When headphones are, for example, paired but not connected, it gives your
/// widget a [HeadphonesMockNever] object (so be aware of that!), prevents
/// user form tapping it and shows appropriate message 👍
///
/// This is meant to be used on pretty much every screens that requires connected
/// headphones
class HeadphonesConnectionEnsuringOverlay extends StatelessWidget {
  /// Build your widget of desire here - note that headphones may be Mock
  /// (as always 🙄)
  final Widget Function(BuildContext context, BluetoothHeadphones headphones)
  builder;

  const HeadphonesConnectionEnsuringOverlay({super.key, required this.builder});

  Widget _padded(Widget child) =>
      Padding(padding: const EdgeInsets.all(16), child: child);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    return BlocBuilder<HeadphonesConnectionCubit, HeadphonesConnectionState>(
      builder:
          (context, state) => switch (state) {
            HeadphonesNoPermission() => _padded(const NoPermissionInfoWidget()),
            HeadphonesNotPaired() => _padded(const NotPairedInfoWidget()),
            HeadphonesBluetoothDisabled() => _padded(
              const BluetoothDisabledInfoWidget(),
            ),
            // We know that we *have* the headphones, but not necessary connected
            HeadphonesDisconnected() ||
            HeadphonesConnecting() ||
            HeadphonesConnectedClosed() ||
            HeadphonesConnectedOpen() => Disabled(
              disabled: state is! HeadphonesConnectedOpen,
              coveringWidget: switch (state) {
                HeadphonesDisconnected() => const DisconnectedInfoWidget(),
                HeadphonesConnecting() => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(context.t.pageHomeConnecting, style: tt.displaySmall),
                    const SizedBox(height: 16),
                    const CircularProgressIndicator(),
                  ],
                ),
                HeadphonesConnectedClosed() => const ConnectedClosedWidget(),
                // Disabled() widget has a non-0ms transition so we need to swap
                // the overlay even when it's connected
                HeadphonesConnectedOpen() => const SizedBox(),
                _ => Text(context.t.pageHomeUnknown),
              },
              child: builder(context, switch (state) {
                HeadphonesConnectedOpen(headphones: final hp) => hp,
                HeadphonesDisconnected(placeholder: final ph) ||
                HeadphonesConnecting(placeholder: final ph) ||
                HeadphonesConnectedClosed(placeholder: final ph) => ph,
                _ => throw 'impossible :O',
              }),
            ),
            _ => Text(context.t.pageHomeUnknown),
          },
    );
  }
}
