import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/cubit/headphones_connection_cubit.dart';

class DisconnectedInfoWidget extends StatelessWidget {
  const DisconnectedInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          context.t.pageHomeDisconnected,
          style: tt.displaySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(context.t.pageHomeDisconnectedDesc, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed:
              () =>
                  context
                      .read<HeadphonesConnectionCubit>()
                      .openBluetoothSettings(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              context.t.pageHomeDisconnectedOpenSettings,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
