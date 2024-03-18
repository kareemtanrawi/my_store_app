import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/app/env.variable.dart';
import 'package:store_app/firebase_options.dart';
import 'package:store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const StoreApp(),
  );
}
