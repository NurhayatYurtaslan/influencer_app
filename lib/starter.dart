
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:influencer_app/app/app.dart';

Future<void> launchApp() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );

  await Hive.initFlutter();
  runApp(const App());
}

