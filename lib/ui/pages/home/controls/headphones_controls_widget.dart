import 'package:flutter/material.dart';

import '../../../../gen/i18n/strings.g.dart';
import '../../../../headphones/framework/anc.dart';
import '../../../../headphones/framework/bluetooth_headphones.dart';
import '../../../../headphones/framework/headphones_info.dart';
import '../../../../headphones/framework/headphones_settings.dart';
import '../../../../headphones/framework/lrc_battery.dart';
import '../../../theme/layouts.dart';
import 'anc_card.dart';
import 'anc_switcher.dart';
import 'battery_card.dart';
import 'battery_circles.dart';
import 'headphones_image.dart';

/// Main whole-screen widget with controls for headphones
///
/// It contains battery, anc buttons, button to settings etc - just give it
/// the [headphones] and all done ☺
///
/// ...in fact, it is built so simple that you can freely hot-swap the
/// headphones object - for example, if they disconnect for a moment,
/// you can give it [HeadphonesMockNever] object, and previous values will stay
/// because it won't override them
class HeadphonesControlsWidget extends StatelessWidget {
  final BluetoothHeadphones headphones;

  const HeadphonesControlsWidget({super.key, required this.headphones});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    // TODO here:
    // - [ ] Make this clearer - this padding shouldn't be here?
    // - [ ] De-duplicate responsive stuff
    // - [ ] Think what to put when we have no image, or generally not many
    //       features 🤷
    return Padding(
      padding:
          const EdgeInsets.all(8) +
          EdgeInsets.only(bottom: MediaQuery.viewPaddingOf(context).bottom),
      child:
          WindowSizeClass.of(context) == WindowSizeClass.compact
              ? ListView(
                children: [
                  StreamBuilder(
                    stream: headphones.bluetoothAlias,
                    builder:
                        (_, snap) => Text(
                          snap.data ?? headphones.bluetoothName,
                          style: tt.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                  ),
                  if (headphones is LRCBattery)
                    BatteryCircles(headphones as LRCBattery),

                  if (headphones is HeadphonesSettings)
                    const Align(
                      alignment: Alignment.centerRight,
                      child: _HeadphonesSettingsButton(),
                    ),

                  DevicesList(),

                  if (headphones is Anc) AncSwitcher(headphones as Anc),
                ],
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        StreamBuilder(
                          stream: headphones.bluetoothAlias,
                          builder:
                              (_, snap) => Text(
                                snap.data ?? headphones.bluetoothName,
                                style: tt.headlineMedium,
                              ),
                        ),
                        if (headphones is HeadphonesModelInfo)
                          HeadphonesImage(headphones as HeadphonesModelInfo)
                        else
                          // TODO: This is ugly. Very
                          const Expanded(
                            child: Icon(Icons.headphones, size: 64),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (headphones is HeadphonesSettings)
                            const Align(
                              alignment: Alignment.centerRight,
                              child: _HeadphonesSettingsButton(),
                            ),
                          if (headphones is LRCBattery)
                            BatteryCard(headphones as LRCBattery),
                          if (headphones is Anc) AncCard(headphones as Anc),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    );
  }
}

class DevicesList extends StatelessWidget {
  const DevicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.pushNamed(context, '/devices'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Devices',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  // Spacer(),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios, size: 18),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.phone_android),
                        ),
                        SizedBox(height: 8),
                        Text('My Phone'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.laptop)),
                        SizedBox(height: 8),
                        Text('My Laptop'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.watch)),
                        SizedBox(height: 8),
                        Text('My Watch'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

/// Simple button leading to headphones settings page
class _HeadphonesSettingsButton extends StatelessWidget {
  const _HeadphonesSettingsButton();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    return Padding(
      // TODO: Move this to theme stuff some day
      padding: t.cardTheme.margin ?? const EdgeInsets.all(4.0),
      child: OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, '/headphones_settings'),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.settings_outlined, size: 20),
              const SizedBox(width: 4),
              Text(context.t.settings),
            ],
          ),
        ),
      ),
    );
  }
}
