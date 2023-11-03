import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:birthdate_reminder/ui/widgets/text-field/my-text-field.dart';
import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/notification-controller.dart';
import '../../../utils/notifications_util.dart';

class InsertScreen extends StatefulWidget {
   InsertScreen({Key? key}) : super(key: key);

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {

  //--- controllers ---//
  TextEditingController nameController = TextEditingController() ;
  TextEditingController dayController = TextEditingController() ;
  bool notifyMeTheSameDay = true ;
  bool notifyMeEarlier = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: RefColor.darkPink,
        actions: [Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.delete_forever_sharp),
        )],
      ),

      floatingActionButton: FloatingActionButton.extended(onPressed: () async{
        // Navigator.pop(context) ;

        //+++++++
        // NotificationUtils.requestBasicPermissionToSendNotifications(context) ;

/*        await AwesomeNotifications().createNotification(
            content: NotificationContent(
            id: -1,
            channelKey: 'scheduled',
            title: 'Wait 5 seconds to show',
            body: 'Now it is 5 seconds later.',
            wakeUpScreen: true,
            category: NotificationCategory.Alarm,
        ),
        schedule: NotificationInterval(
        interval: 5,
        timeZone:  await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        preciseAlarm: true,
        ));*/

     /*   AwesomeNotifications().isNotificationAllowed().then((isAllowed) async {
          if (!isAllowed) {
            // This is just a basic example. For real apps, you must show some
            // friendly dialog box before call the request method.
            // This is very important to not harm the user experience
            AwesomeNotifications().requestPermissionToSendNotifications();
            debugPrint('not allowed...') ;
          }else{
            debugPrint('show notification ') ;
            await AwesomeNotifications().createNotification(
                content: NotificationContent(
                    id: -1, // -1 is replaced by a random number
                    channelKey: 'alerts',
                    title: 'title',
                    // body: body,
                    // largeIcon: ,
                    // icon: 'asset://assets/icons/filter.png',
                    // icon: 'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
                    // bigPicture: 'https://storage.googleapis.com/cms-storage-bucket/d406c736e7c4c57f5f61.png',
                    // largeIcon: 'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
                    //'asset://assets/images/balloons-in-sky.jpg',

                    notificationLayout: NotificationLayout.Default,
                    payload: {
                      'notificationId': '1234567890'
                    }),
                actionButtons: [
                  // NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
                  NotificationActionButton(
                      key: 'DISMISS',
                      label: 'بستن',
                      actionType: ActionType.DismissAction,
                      isDangerousOption: true)
                ],
                schedule: NotificationCalendar.fromDate(
                    date: DateTime.now().add(const Duration(seconds: 3))));
          }
        });*/


      },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)),
          backgroundColor: RefColor.darkPink,
          label: Row(
        children: [
          Icon(Icons.save) ,
          SizedBox(width: 8,) ,
          Text('ذخیره'),
        ],
      )),
      backgroundColor: RefColor.pastelLime,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16 , 52 , 16 , 32),
          child: Column(
            children: [
              MyTextField(controller: nameController ,
              label: 'اسم',
              filledColor: Colors.white,
              isMandatory: true,) ,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تاریخ تولد',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(color: SysColor.onSurface),
                  ),
                  SizedBox(height: 4,) ,
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2) ,
                        border: Border.all(color: RefColor.darkPink , width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16 , 12 , 16 , 12),
                      child: Text('۳ دی ۷۳' , style: Theme.of(context).textTheme.bodyLarge,),
                    ),
                  ) ,


                  SizedBox(height: 16,) ,

                  CheckboxListTile(
                    title: Text("همان روز به من اطلاع بده"),
                    value: notifyMeTheSameDay,
                    onChanged: (newValue) {
                      if(newValue != null){
                      setState(() {
                        notifyMeTheSameDay = newValue;
                      });

                      }
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ) ,

                  SizedBox(height: 16,) ,

                  CheckboxListTile(
                    title: Text("زودتر هم به من اطلاع بده"),
                    value: notifyMeEarlier,
                    onChanged: (newValue) {
                      if(newValue != null){
                      setState(() {
                        notifyMeEarlier = newValue;
                      });

                      }
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ) ,

                  SizedBox(height: 16,) ,

                  Visibility(
                    visible: notifyMeEarlier,
                    child: Container(
                      child: MyTextField.formattedDigits(
                        controller: dayController ,
                        label: 'چند روز زودتر؟',
                        maxLength: 2,
                        textAlign: TextAlign.right,
                        filledColor: Colors.white,

                      ),
                    ),
                  ) ,
                  SizedBox(height: 64,) ,
                ],




              )


            ],
          ),
        ),
      ),

    );
  }
}
