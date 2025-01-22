import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hunty/presentation/screen/my_app.dart';
import 'dart:io' show Platform;
import '../di/get_it.dart' as get_it;
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  unawaited(get_it.init());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Màu nền status bar
      statusBarIconBrightness: Brightness.light, // Icon tối màu
    ),
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode & !Platform.isIOS & !Platform.isAndroid,
      builder: (context) => const MyApp(),
    ),
  );
}
