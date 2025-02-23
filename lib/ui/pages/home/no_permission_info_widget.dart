import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/cubit/headphones_connection_cubit.dart';

class NoPermissionInfoWidget extends StatelessWidget {
  const NoPermissionInfoWidget({super.key});

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
              context.t.pageHomeNoPermission,
              style: tt.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed:
                  () =>
                      context
                          .read<HeadphonesConnectionCubit>()
                          .requestPermission(),
              child: Text(
                context.t.pageHomeNoPermissionGrant,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => AppSettings.openAppSettings(asAnotherTask: true),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  context.t.pageHomeNoPermissionOpenSettings,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
