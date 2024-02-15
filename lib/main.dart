// import 'package:final_project/firebase_options.dart';
import 'package:final_project/config/routes/routes.dart';

// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/di_manager.dart';
import 'core/observers/bloc_observer.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await dependencyInjectionInit();
  Bloc.observer = MyBlocObserver();
  // await Firebase.initializeApp(
  //
  //   options: DefaultFirebaseOptions.currentPlatform,
  //
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        onGenerateRoute: (settings) => Routes.OnGenerate(settings),
      ),
    );
  }
}
