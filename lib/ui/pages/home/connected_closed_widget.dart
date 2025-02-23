import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/cubit/headphones_connection_cubit.dart';

class ConnectedClosedWidget extends StatelessWidget {
  const ConnectedClosedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.t.pageHomeConnectedClosed,
          style: tt.displaySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          context.t.pageHomeConnectedClosedDesc,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        FilledButton(
          onPressed: () => context.read<HeadphonesConnectionCubit>().connect(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(context.t.pageHomeConnectedClosedConnect),
          ),
        ),
      ],
    );
  }
}
