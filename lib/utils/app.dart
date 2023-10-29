import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:birthdate_reminder/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'colors.dart';
import 'notification-controller.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static const String name = 'Awesome Notifications - Example App';
  static const Color mainColor = Colors.deepPurple;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    // Only after at least the action method is set, the notification events are delivered
    AwesomeNotifications().setListeners(
        onActionReceivedMethod:         NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:    NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:  NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:  NotificationController.onDismissActionReceivedMethod
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // The navigator key is necessary to allow to navigate through static methods
        navigatorKey: App.navigatorKey,


        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("fa", "98"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: const Locale("fa") , // OR Locale('ar', 'AE')
        title: 'یادآور تولد',
        theme: _myTheme,
        home: const HomeScreen()
    );
  }
}


final ThemeData _myTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: SysColor.primary,
      onPrimary: SysColor.onPrimary,
      secondary: SysColor.secondary,
      onSecondary: SysColor.onSecondary,
      tertiary: SysColor.tertiary,
      onTertiary: SysColor.onTertiary,
      error: SysColor.error,
      onError: SysColor.onError,
      background: SysColor.background,
      onBackground: SysColor.onBackground,
      surface: SysColor.surface,
      onSurface: SysColor.onSurface,
      surfaceVariant: SysColor.surfaceVariant,
      onSurfaceVariant: SysColor.onSurfaceVariant,
      outline: SysColor.outline,
    ),
    textTheme: _buildGymakTextTheme(base.textTheme),
  );
}

TextTheme _buildGymakTextTheme(TextTheme base) {
  return base
      .copyWith(
    //M3
    displayLarge: base.displayLarge!.copyWith(
      fontSize: 48.0,
    ),
    displayMedium: base.displayMedium!.copyWith(
      fontSize: 40.0,
    ),
    displaySmall: base.displaySmall!.copyWith(
      fontSize: 36.0,
    ),
    headlineLarge: base.headlineLarge!.copyWith(
      fontSize: 32.0,
    ),
    headlineMedium: base.headlineMedium!.copyWith(
      fontSize: 28.0,
    ),
    headlineSmall: base.headlineSmall!.copyWith(
      fontSize: 24.0,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontSize: 22.0,
    ),
    titleMedium: base.titleMedium!.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.bold
    ),
    titleSmall: base.titleSmall!.copyWith(
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: base.bodyMedium!.copyWith(
      fontSize: 14.0,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontSize: 12.0,
    ),
    labelLarge: base.labelLarge!.copyWith(
      fontSize: 14.0,
    ),
    labelMedium: base.labelMedium!.copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,

    ),
    labelSmall: base.labelSmall!.copyWith(
      fontSize: 10.0,
    ),

    //M2
    // headline6: base.headline6!.copyWith(
    //   fontSize: 40.0,
    // ),
    // headline5: base.headline5!.copyWith(
    //   fontSize: 36.0,
    // ),
    // headline4: base.headline4!.copyWith(
    //   fontSize: 32.0,
    // ),
    // headline3: base.headline3!.copyWith(
    //   fontSize: 28.0,
    // ),
    // headline2: base.headline2!.copyWith(
    //   fontSize: 24.0,
    // ),
    // headline1: base.headline1!.copyWith(
    //   fontSize: 22.0,
    // ),
    // subtitle1: base.subtitle1!.copyWith(
    //   fontSize: 16.0,
    // ),
    // subtitle2: base.subtitle2!.copyWith(
    //   fontSize: 14.0,
    // ),
    // bodyText1: base.bodyText1!.copyWith(
    //   fontSize: 16.0,
    // ),
    // bodyText2: base.bodyText2!.copyWith(
    //   fontSize: 14.0,
    // ),
    // button: base.button!.copyWith(
    //   fontSize: 14.0,
    // ),
    // caption: base.caption!.copyWith(
    //   fontSize: 12.0,
    // ),
    // overline: base.overline!.copyWith(
    //   fontSize: 10.0,
    // ),
  )
      .apply(
    fontFamily: 'IranSans',
  );
}