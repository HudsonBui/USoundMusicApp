import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:usound/screens/intro_screens/loading1_screen.dart';
import 'package:usound/screens/intro_screens/loading_screen.dart';
import 'package:usound/screens/login/sign_in_screen.dart';
import 'package:usound/screens/main_screem/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:usound/screens/splash_screen/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((ctx, snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return const SplashScreen();
        // }
        if (snapshot.hasData) {
          return const MainScreen();
        }

        return const LoadingScreen();
      }),
    );
  }
}
