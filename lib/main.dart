import 'package:flutter/material.dart';
import 'package:project/core/di/debendency_injection.dart';
import 'package:project/core/routing/app_router.dart';
import 'package:project/doc_app.dart';

void main() {
  setupGetIt();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}
