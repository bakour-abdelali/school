import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/core/servises/servises.dart';
import 'package:managmentsh/get_pages.dart';
import 'package:managmentsh/screen/view/Onboarding.dart';

import 'bindings/inital_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      textDirection: TextDirection.rtl,
      initialBinding: InitialBinding(),
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primarycolor),
        useMaterial3: true,
      ),
      getPages: getPages,
    );
  }
}
