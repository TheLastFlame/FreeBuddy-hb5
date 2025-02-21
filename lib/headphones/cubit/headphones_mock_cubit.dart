import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../huawei/freebuds4i_sim.dart';
import 'headphones_connection_cubit.dart';
import 'headphones_cubit_objects.dart';

class HeadphonesMockCubit extends Cubit<HeadphonesConnectionState>
    implements HeadphonesConnectionCubit {
  HeadphonesMockCubit()
    : super(const HeadphonesDisconnected(HuaweiFreeBuds4iSimPlaceholder())) {
    // i do this because otherwise initial data isn't even emitted and
    // [BlocListener]s don't work >:(
    Future.microtask(
      () => emit(HeadphonesConnectedOpen(HuaweiFreeBuds4iSim())),
    );
  }

  @override
  Future<void> connect() async {}

  @override
  Future<bool> enableBluetooth() async => false;

  @override
  Future<void> openBluetoothSettings() async {}

  @override
  Future<void> requestPermission() async {}
}
