import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/starter.dart';

Future<void> main(List<String> args) async {
  Flavor.create(
    Environment.production,
    name: "Prod",
    color: const Color.fromARGB(255, 47, 9, 112),
  );
  launchApp();
}