import 'package:flutter/material.dart';

import '../../../gen/i18n/strings.g.dart';
import '../../../headphones/framework/headphones_settings.dart';
import '../../../headphones/huawei/freebuds-5/freebuds5_settings.dart';
import '../../../headphones/huawei/settings.dart';
import '../../common/headphones_connection_ensuring_overlay.dart';
import 'auto_pause_section.dart';
import 'huawei/double_tap_section.dart';
import 'huawei/hold_section.dart';
import 'separate_action_selector.dart';

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
      SizedBox(height: 16),
      AutoPauseSection(
        autoPauseStream: settings.settings.map((s) => s.autoPause),
        onAutoPauseChanged:
            (v) => settings.setSettings(HuaweiFreeBuds5Settings(autoPause: v)),
      ),
      const Divider(indent: 16, endIndent: 16),

      // const Divider(indent: 16, endIndent: 16),
      SeparateActionSelector(
        rightItems: [
          'Play/Pause',
          'Next track',
          'Previous track',
          'Wake voice assistant',
        ],
        onRightChanged: (v) {},
        leftItems: [
          'Play/Pause',
          'Next track',
          'Previous track',
          'Wake voice assistant',
        ],
        onLeftChanged: (v) {},
      ),

      Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
        child: Test(),
      ),
      RadioListTile(
        value: 'test2',
        groupValue: 'test',
        onChanged: (v) {},
        title: Text('None'),
      ),
      RadioListTile(
        value: 'test',
        groupValue: 'test',
        onChanged: (v) {},
        title: Text('Answer/End call'),
      ),

      // const Divider(indent: 16, endIndent: 16),
      // HoldSection(settings),
      // const SizedBox(height: 64),
    ];
  }

  if (settings is HeadphonesSettings<HuaweiFreeBuds4iSettings>) {
    return [
      AutoPauseSection(
        autoPauseStream: settings.settings.map((s) => s.autoPause),
        onAutoPauseChanged:
            (v) => settings.setSettings(HuaweiFreeBuds4iSettings(autoPause: v)),
      ),
      const Divider(indent: 16, endIndent: 16),
      DoubleTapSection(settings),
      const Divider(indent: 16, endIndent: 16),
      HoldSection(settings),
      const SizedBox(height: 64),
    ];
  }
  throw "You shouldn't be on this screen if you don't have settings!";
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Either bud', style: Theme.of(context).textTheme.headlineSmall);
  }
}
