import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:one_signal_push_notification/firebase_options.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize('01932dff-6ad9-4196-ae91-3727e3b33bf6');
  OneSignal.Notifications.requestPermission(true);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

