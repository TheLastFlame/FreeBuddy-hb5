import 'package:flutter/material.dart';

import '../../../../gen/freebuddy_icons.dart';
import '../../../../gen/i18n/strings.g.dart';
import '../../../../headphones/framework/lrc_battery.dart';

class BatteryCircles extends StatelessWidget {
  const BatteryCircles(this.lrcBattery, {super.key});

  final LRCBattery lrcBattery;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: lrcBattery.lrcBattery,
      builder: (context, snapshot) {
        final battery = snapshot.data;

        return Row(
          children: [
            SizedBox(width: 16),
            BatteryCircle(
              value:
                  battery?.levelLeft != null ? battery!.levelLeft! / 100 : null,
              title: context.t.leftBudShort,
              icon: FreebuddyIcons.leftEarbud,
              isCharging: battery?.chargingLeft,
            ),
            BatteryCircle(
              value:
                  battery?.levelCase != null ? battery!.levelCase! / 100 : null,
              title: context.t.caseShort,
              icon: FreebuddyIcons.earbudsCase,
              isCharging: battery?.chargingCase,
            ),
            BatteryCircle(
              value:
                  battery?.levelRight != null
                      ? battery!.levelRight! / 100
                      : null,
              title: context.t.rightBudShort,
              icon: FreebuddyIcons.rightEarbud,
              isCharging: battery?.chargingRight,
            ),
            SizedBox(width: 16),
          ],
        );
      },
    );
  }
}

class BatteryCircle extends StatelessWidget {
  const BatteryCircle({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
    this.isCharging,
  });

  final double? value;
  final String title;
  final IconData icon;
  final bool? isCharging;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: 16),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surfaceBright,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Icon(
                    icon,
                    size: 48,
                    // color: Theme.of(context).colorScheme.primary,
                  ),
                  CircularProgressIndicator(
                    value: value,
                    strokeWidth: 4,
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).colorScheme.primary,
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceBright,
                  ),
                ],
              ),
            ),
          ),
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style.copyWith(),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Builder(
                    builder: (context) {
                      final value = this.value ?? 0;

                      return Icon(
                        isCharging ?? false
                            ? Icons.battery_charging_full
                            : value >= 0.99
                            ? Icons.battery_full
                            : value >= 0.90
                            ? Icons.battery_6_bar
                            : value >= 0.75
                            ? Icons.battery_5_bar
                            : value >= 0.60
                            ? Icons.battery_4_bar
                            : value >= 0.45
                            ? Icons.battery_3_bar
                            : value >= 0.30
                            ? Icons.battery_2_bar
                            : value >= 0.15
                            ? Icons.battery_1_bar
                            : Icons.battery_0_bar,
                        size: 16,
                      );
                    },
                  ),
                ),
                TextSpan(
                  text: '${value != null ? (value! * 100).round() : '??'}%',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
