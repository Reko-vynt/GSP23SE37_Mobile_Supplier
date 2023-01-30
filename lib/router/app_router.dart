import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gsp23se37_mobile_supplier/router/app_router_constants.dart';
import 'package:gsp23se37_mobile_supplier/screens/auth/login_screen.dart';
import 'package:gsp23se37_mobile_supplier/screens/auth/register_screen.dart';
import 'package:gsp23se37_mobile_supplier/screens/error/error_screen.dart';
import 'package:gsp23se37_mobile_supplier/screens/homescreen.dart';

class AppRouter{
  GoRouter router=GoRouter(routes: <GoRoute>[
    GoRoute(
      name: AppRouterConstants.homeRouteName,
      path: '/',
      pageBuilder: (context,state){
        return const MaterialPage(child: HomeScreen());
      }
    ),
    GoRoute(
        name: AppRouterConstants.loginRouteName,
        path: '/login',
        pageBuilder: (context,state){
          return const MaterialPage(child: LoginScreen());
        }
    ),
    GoRoute(
        name: AppRouterConstants.registerRouteName,
        path: '/${AppRouterConstants.registerRouteName}',
        pageBuilder: (context,state){
          return const MaterialPage(child: RegisterScreen());
        }
    ),
  ],
  errorPageBuilder: (context,state){
    return const MaterialPage(child: ErrorScreen());
  },
  );
}