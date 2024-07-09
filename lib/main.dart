import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:terminal_mobile_app/estratini/estratini.dart';
import 'package:terminal_mobile_app/register/register.dart';
import 'package:terminal_mobile_app/street_corner/StreetCorner.dart';
import 'package:terminal_mobile_app/terminal/terminal.dart';
import 'package:terminal_mobile_app/login/login.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';
import 'package:terminal_mobile_app/auth/firebaseAuth.dart';
import 'package:terminal_mobile_app/notifications/Notifications.dart';
import 'package:terminal_mobile_app/firebase_options.dart';
import 'package:terminal_mobile_app/top100/top100.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthState(),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        title: 'Terminal App',
        theme: _themeData,
        routerConfig: _router,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Terminal(
          loggedIn: appState.loggedIn,
          signOut: () {
            FirebaseAuth.instance.signOut();
          },
          loggedInUser: appState.getLoggedInUser,
        ),
      ),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Register(
          loggedIn: appState.loggedIn,
          signOut: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Login(
          loggedIn: appState.loggedIn,
          signOut: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ),
    ),
    GoRoute(
      path: '/estratini',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Estratini(
          loggedInUser: appState.getLoggedInUser,
        ),
      ),
      redirect: (context, state) {
        final loggedIn = Provider.of<AuthState>(context, listen: false).loggedIn;
        if (!loggedIn) {
          return '/login';
        }
        return null;
      },
    ),
    GoRoute(
      path: '/estratini/tophundred',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Top100(
          loggedInUser: appState.getLoggedInUser,
        ),
      ),
      redirect: (context, state) {
        final loggedIn = Provider.of<AuthState>(context, listen: false).loggedIn;
        if (!loggedIn) {
          return '/login';
        }
        return null;
      },
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => Notifications(
          loggedInUser: appState.getLoggedInUser,
        ),
      ),
      redirect: (context, state) {
        final loggedIn = Provider.of<AuthState>(context, listen: false).loggedIn;
        if (!loggedIn) {
          return '/login';
        }
        return null;
      },
    ),
    GoRoute(
      path: '/streetcorner',
      builder: (context, state) => Consumer<AuthState>(
        builder: (context, appState, _) => StreetCorner(
          loggedInUser: appState.getLoggedInUser,
        ),
      ),
      redirect: (context, state) {
        final loggedIn = Provider.of<AuthState>(context, listen: false).loggedIn;
        if (!loggedIn) {
          return '/login';
        }
        return null;
      },
    ),
  ],
);

final _themeData = ThemeData(
  datePickerTheme: DatePickerThemeData(
    backgroundColor: GlobalStyles.lightBlue,
    headerHelpStyle: TextStyle(fontSize: 18.0),
    headerBackgroundColor: Colors.black87,
    headerForegroundColor: GlobalStyles.scamtoBlue,
    dayBackgroundColor: MaterialStateColor.resolveWith(
          (states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.transparent; // Color when disabled
        }
        return GlobalStyles.backgroundWhite; // Default color
      },
    ),
    dayForegroundColor: MaterialStateColor.resolveWith(
          (states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.transparent; // Color when disabled
        }
        return Colors.black; // Default color
      },
    ),
    dayOverlayColor: MaterialStateColor.resolveWith(
          (states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.black; // Color when disabled
        }
        return GlobalStyles.streetGrey; // Default color
      },
    ),
    dayStyle: TextStyle(fontSize: 18.0),
    todayBackgroundColor: MaterialStateColor.resolveWith(
          (states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.blueGrey; // Color when disabled
        }
        return GlobalStyles.backgroundWhite; // Default color
      },
    ),
    yearStyle: TextStyle(fontSize: 20.0),
    weekdayStyle: TextStyle(fontSize: 20.0),
    shadowColor: GlobalStyles.niceBlue,
    elevation: 500.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
  ),
);
