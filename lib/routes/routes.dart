import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/all_routine/eachroutinescreen..dart';
import '../features/clients/bill.client.dart';
import '../features/homepage.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/', // Splash Screen
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/eachClientBill', // Splash Screen
      builder: (BuildContext context, GoRouterState state) {
        return ClientBill();
      },
    ),
    GoRoute(
      path:
          '/monthEachDayScreen', // Navigation in All transection from year to month to day wise,
      builder: (BuildContext context, GoRouterState state) {
        return EachMonthlRoutine();
      },
    ),
    // GoRoute(
    //   path: '/login', // Login Page
    //   builder: (BuildContext context, GoRouterState state) {
    //     return LoginPage();
    //   },
    // ),
    // GoRoute(
    //   path: '/signup', // Signup Page
    //   builder: (BuildContext context, GoRouterState state) {
    //     return SignupPageScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/home', // Home Page
    //   builder: (BuildContext context, GoRouterState state) {
    //     return NavigationPage();
    //   },
    // ),
  ],
);
