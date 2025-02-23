import 'package:rxdart/rxdart.dart';

import '../../simulators/anc_sim.dart';
import '../../simulators/bluetooth_headphones_sim.dart';
import '../../simulators/lrc_battery_sim.dart';
import 'freebuds5.dart';
import 'freebuds5_settings.dart';

final class HuaweiFreeBuds5iSim extends HuaweiFreeBuds5
    with BluetoothHeadphonesSim, LRCBatteryAlwaysFullSim, AncSim {
  // ehhhhhh...

  final _settingsCtrl = BehaviorSubject<HuaweiFreeBuds5Settings>.seeded(
    const HuaweiFreeBuds5Settings(
      doubleTapLeft: DoubleTap.playPause,
      doubleTapRight: DoubleTap.playPause,
      autoPause: true,
    ),
  );

  @override
  ValueStream<HuaweiFreeBuds5Settings> get settings => _settingsCtrl.stream;

  @override
  Future<void> setSettings(HuaweiFreeBuds5Settings newSettings) async {
    _settingsCtrl.add(
      _settingsCtrl.value.copyWith(
        doubleTapLeft: newSettings.doubleTapLeft,
        doubleTapRight: newSettings.doubleTapRight,
        autoPause: newSettings.autoPause,
      ),
    );
  }
}

/// Class to use as placeholder for Disabled() widget
// this is not done with mixins because we may want to fill it with
// last-remembered values in future, and we will pretty much override
// all of this
//
// ...or not. I just don't know yet 🤷
final class HuaweiFreeBuds5SimPlaceholder extends HuaweiFreeBuds5
    with
        BluetoothHeadphonesSimPlaceholder,
        LRCBatteryAlwaysFullSimPlaceholder,
        AncSimPlaceholder {
  const HuaweiFreeBuds5SimPlaceholder();

  @override
  ValueStream<HuaweiFreeBuds5Settings> get settings => BehaviorSubject();

  @override
  Future<void> setSettings(HuaweiFreeBuds5Settings newSettings) async {}
}
