import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:birthdate_reminder/ui/widgets/text-field/my-text-field.dart';
import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        // Navigator.pop(context) ;

        AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
          if (!isAllowed) {
            // This is just a basic example. For real apps, you must show some
            // friendly dialog box before call the request method.
            // This is very important to not harm the user experience
            AwesomeNotifications().requestPermissionToSendNotifications();
          }else{
            //TODO send notofication
          }
        });


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
