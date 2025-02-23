import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/cubit/headphones_connection_cubit.dart';

class BluetoothDisabledInfoWidget extends StatelessWidget {
  const BluetoothDisabledInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.t.pageHomeBluetoothDisabled,
              style: tt.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // the_last_bluetooth plugin doesn't support this for now
            // TextButton(
            //   onPressed: onEnable,
            //   child: Text(context.t.pageHomeBluetoothDisabledEnable),
            // ),
            FilledButton(
              onPressed:
                  () =>
                      context
                          .read<HeadphonesConnectionCubit>()
                          .openBluetoothSettings(),
              child: Text(context.t.pageHomeBluetoothDisabledOpenSettings),
            ),
          ],
        ),
      ),
    );
  }
}
