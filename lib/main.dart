import 'dart:io';
import 'dart:js';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gsp23se37_mobile_supplier/blocs/auth/auth_bloc.dart';
import 'package:gsp23se37_mobile_supplier/firebase_options.dart';
import 'package:gsp23se37_mobile_supplier/network/dio/dio_client.dart';
import 'package:gsp23se37_mobile_supplier/network/services/authentication_service.dart';
import 'package:gsp23se37_mobile_supplier/router/app_router.dart';
import 'package:gsp23se37_mobile_supplier/screens/auth/login_screen.dart';
import 'package:gsp23se37_mobile_supplier/screens/homescreen.dart';
import 'package:url_strategy/url_strategy.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  Dio dio = Dio();
  HttpOverrides.global = MyHttpOverrides();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  runApp(RepositoryProvider<AuthenticationService>(
    create: (context) {
      return AuthenticationService();
    },
    // Injects the Authentication BLoC
    child: BlocProvider<AuthBloc>(
      create: (context) {
        final authService =
            RepositoryProvider.of<AuthenticationService>(context);
        return AuthBloc(authService)..add(AppLoaded());
      },
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routerDelegate: _router.routerDelegate,
      // routeInformationParser: _router.routeInformationParser,
      // routeInformationProvider: _router.routeInformationProvider,
      routerDelegate: AppRouter().router.routerDelegate,
      routeInformationParser: AppRouter().router.routeInformationParser,
      // routeInformationProvider: AppRouter().router.routeInformationProvider,
      // home: BlocBuilder<AuthBloc, AuthState>(
      //   builder: (context, state) {
      //     if (state is AuthAuthenticated) {
      //       // show home page
      //       return const HomeScreen();
      //     }
      //     // otherwise show login page
      //     return const LoginScreen();
      //   },
      // ),
    );
  }

  final GoRouter _router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          // routes: <GoRoute>[],
          path: '/',
          builder: (BuildContext context, GoRouterState state)=>const HomeScreen(),
        ),
      ],
  );
}
