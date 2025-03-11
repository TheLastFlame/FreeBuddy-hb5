import 'package:flutter/material.dart';

import '../../../../headphones/framework/anc.dart';

class AncSwitcher extends StatelessWidget {
  const AncSwitcher(this.anc, {super.key});

  final Anc anc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SwitchListTile(
            title: Text(
              'ANC Mode',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),

            tileColor: Theme.of(context).colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            value: true,
            onChanged: (v) {},
          ),
        ),
        RadioListTile(
          value: 'test',
          groupValue: 'test',
          onChanged: (v) {},
          title: Text('Dynamic'),
          // subtitle: Text(
          //   'Automatically adjust noise canceling based on your surroundings',
          // ),
        ),
        RadioListTile(
          value: 'test2',
          groupValue: 'test',
          onChanged: (v) {},
          title: Text('Cozy'),
        ),
        RadioListTile(
          value: 'test1',
          groupValue: 'test',
          onChanged: (v) {},
          title: Text('General'),
        ),
      ],
    );
  }
}
