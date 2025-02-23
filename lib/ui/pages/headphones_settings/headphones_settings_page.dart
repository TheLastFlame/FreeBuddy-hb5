import 'package:flutter/material.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/framework/headphones_settings.dart';
import '../../../headphones/huawei/freebuds-5/freebuds5_settings.dart';
import '../../../headphones/huawei/settings.dart';
import '../../common/headphones_connection_ensuring_overlay.dart';
import 'huawei/auto_pause_section.dart';
import 'huawei/double_tap_section.dart';
import 'huawei/hold_section.dart';

class HeadphonesSettingsPage extends StatelessWidget {
  const HeadphonesSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.t.pageHeadphonesSettingsTitle)),
      body: Center(
        child: HeadphonesConnectionEnsuringOverlay(
          builder:
              (_, h) =>
                  ListView(children: widgetsForModel(h as HeadphonesSettings)),
        ),
      ),
    );
  }
}

// this is shitty. and we don't want this. not here.
// ...
// but i have no better idea for now :)))))
List<Widget> widgetsForModel(HeadphonesSettings settings) {
  if (settings is HeadphonesSettings<HuaweiFreeBuds5Settings>) {
    return [
      // AutoPauseSection(settings),
      // const Divider(indent: 16, endIndent: 16),
      // DoubleTapSection(settings),
      // const Divider(indent: 16, endIndent: 16),
      // HoldSection(settings),
      // const SizedBox(height: 64),
    ];
  }

  if (settings is HeadphonesSettings<HuaweiFreeBuds4iSettings>) {
    return [
      AutoPauseSection(settings),
      const Divider(indent: 16, endIndent: 16),
      DoubleTapSection(settings),
      const Divider(indent: 16, endIndent: 16),
      HoldSection(settings),
      const SizedBox(height: 64),
    ];
  }
  throw "You shouldn't be on this screen if you don't have settings!";
}
