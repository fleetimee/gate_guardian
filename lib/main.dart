import 'package:flutter/material.dart';
import 'package:gate_guardian/app/theme/light.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(480, name: DESKTOP),
        ],
        background: Container(color: const Color(0xFFF5F5F5)),
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
    ),
  );
}
