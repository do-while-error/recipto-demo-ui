import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/binding/app_bindings.dart';
import 'package:project_app/project_page/project_main_view.dart';
import 'package:project_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Recipto',
      
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          dialogBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        getPages: AppRoutes.appRoutes(),
        initialBinding: AppBindings(),
      home: const ProjectMainScreen(),
    );
  }
}


