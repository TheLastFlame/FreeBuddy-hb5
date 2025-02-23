import 'package:flutter/material.dart';

import '../../../../gen/i18n/strings.g.dart';
import '../../../../headphones/framework/headphones_settings.dart';
import '../../../../headphones/huawei/settings.dart';
import '../../../common/list_tile_switch.dart';

class AutoPauseSection extends StatelessWidget {
  final HeadphonesSettings<HuaweiFreeBuds4iSettings> headphones;

  const AutoPauseSection(this.headphones, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: headphones.settings.map((s) => s.autoPause),
      initialData: false,
      builder: (_, snap) {
        return ListTileSwitch(
          title: Text(context.t.autoPause),
          subtitle: Text(context.t.autoPauseDesc),
          value: snap.data ?? false,
          onChanged:
              (newVal) => headphones.setSettings(
                HuaweiFreeBuds4iSettings(autoPause: newVal),
              ),
        );
      },
    );
  }
}
