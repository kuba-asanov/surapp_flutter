import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/core/app/app.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}
