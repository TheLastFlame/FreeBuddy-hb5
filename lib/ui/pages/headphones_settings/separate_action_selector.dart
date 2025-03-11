import 'package:flutter/material.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../common/list_tile_radio.dart';

class SeparateActionSelector extends StatelessWidget {
  const SeparateActionSelector({
    super.key,
    required this.rightItems,
    required this.onRightChanged,
    required this.leftItems,
    required this.onLeftChanged,
  });

  final List<String> rightItems;
  final Function(String) onRightChanged;
  final List<String> leftItems;
  final void Function(String) onLeftChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: SeparateActionColumn(
              title: context.t.pageHeadphonesSettingsLeftBud,
              values: leftItems,
              selectedValue: leftItems[1],
              onChanged: onLeftChanged,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SeparateActionColumn(
              title: context.t.pageHeadphonesSettingsRightBud,
              values: rightItems,
              selectedValue: rightItems[1],
              onChanged: onRightChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class SeparateActionColumn extends StatelessWidget {
  const SeparateActionColumn({
    super.key,
    required this.values,
    this.onChanged,
    this.title,
    required this.selectedValue,
  });

  final String? title;
  final List<String> values;
  final String selectedValue;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (title != null) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 6),
              child: Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Divider(indent: 32, endIndent: 32),
          ],
          for (final value in values)
            ListTileRadio(
              title: Text(value),
              value: value,
              dense: true,
              groupValue: selectedValue,
              onChanged: onChanged,
            ),
        ],
      ),
    );
  }
}
