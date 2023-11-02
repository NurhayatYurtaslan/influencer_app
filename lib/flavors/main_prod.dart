import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:influencer_app/firebase_options.dart';
import 'package:influencer_app/starter.dart';

Future<void> main(List<String> args) async {
  SystemChrome.setSystemUIOverlayStyle(
      // statusBar kaldırmak için
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FirebaseMessaging.instance.setAutoInitEnabled(true);
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  Flavor.create(
    Environment.production,
    name: "Prod",
    color: const Color.fromARGB(255, 47, 9, 112),
  );
  launchApp();
}
