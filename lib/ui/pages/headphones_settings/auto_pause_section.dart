import 'package:flutter/material.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../common/list_tile_switch.dart';

class AutoPauseSection extends StatelessWidget {
  const AutoPauseSection({
    super.key,
    required this.autoPauseStream,
    required this.onAutoPauseChanged,
  });

  final Stream<bool?> autoPauseStream;
  final void Function(bool) onAutoPauseChanged;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: autoPauseStream,
      initialData: false,
      builder: (_, snap) {
        return ListTileSwitch(
          title: Text(context.t.autoPause),
          subtitle: Text(context.t.autoPauseDesc),
          value: snap.data ?? false,
          onChanged: onAutoPauseChanged,
        );
      },
    );
  }
}
