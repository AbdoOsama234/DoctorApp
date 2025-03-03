import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/di/debendency_injection.dart';
import 'package:project/core/routing/routes.dart';
import 'package:project/features/login/logic/login_cubit.dart';
import 'package:project/features/onboarding/onboarding_screen.dart';
import 'package:project/features/ui/login_screen.dart';
import 'package:project/features/ui/sign_up_screen.dart';
import 'package:bloc/bloc.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final argument=settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create:(contxt)=>getIt<LoginCubit>(),

              child: const LoginScreen()),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text("No route defined for ${settings.name}"),
                ),
              ),
        );
    }
  }
}