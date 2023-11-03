import 'package:birthdate_reminder/data/data-source/birthdate-data-source.dart';
import 'package:birthdate_reminder/data/models/birthdate.dart';
import 'package:birthdate_reminder/data/repository/birthdate-repository.dart';
import 'package:birthdate_reminder/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'app.dart';
import 'notification-controller.dart';
import 'package:provider/provider.dart';

void main() async {
/*  //--- init awesome notifications ---//
  AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
      'resource://drawable/res_app_icon',
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(channelGroupKey: 'basic_channel_group', channelGroupName: 'Basic group')
      ],
      debug: true);

  //--- start awesome notifications ---//
  ReceivedAction? receivedAction =
      await AwesomeNotifications().getInitialNotificationAction(removeFromActionEvents: false);
  if (receivedAction?.channelKey == 'call_channel') {
    const MyApp();
  } else {
    const MyApp();
  }*/

  //initialize Awesome Notifications ++++
  // await NotificationController.initializeLocalNotifications();
  // await NotificationController.interceptInitialCallActionRequest();

  //Hive
  await Hive.initFlutter();
  Hive.registerAdapter(BirthdateAdapter());
  await Hive.openBox<Birthdate>(birthdateBoxName);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<BirthdateRepository>(
        create: (BuildContext context) =>
            BirthdateRepository(context.read<BirthdateDataSource>())),
    Provider<BirthdateDataSource>(
        create: (context) => BirthdateDataSource(Hive.box(birthdateBoxName)))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
