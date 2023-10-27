import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdateCard extends StatelessWidget {
  const BirthdateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(2)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          //--- icons ---//
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios, color: SysColor.onBackground,
                  size: 16,),
                Text('جزییات', style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,)
              ],
            ),

            Row(
              children: [
                Icon(CupertinoIcons.bell_slash, size: 16,
                  color: SysColor.onBackground,),
                SizedBox(width: 16,),
                Row(
                  children: [
                    Text('ویرایش', style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium,),
                    Icon(Icons.edit, size: 16, color: SysColor.onBackground,),

                  ],
                ),
              ],
            )
          ],
        ),

        //--- name ---//
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Text('تولد غزل', style: Theme
                .of(context)
                .textTheme
                .labelMedium, textAlign: TextAlign.right,)),
          ],
        ),

        //--- date ---//
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Icon(CupertinoIcons.calendar_today, size: 16, color: SysColor.error,),
            SizedBox(width: 8,) ,
            Text('1373/10/03', style: Theme
                .of(context)
                .textTheme
                .bodyMedium,),

          ],
        ) ,
          //--- remain days ---//

            Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(Icons.cake_rounded, size: 16, color: SysColor.error,),
                SizedBox(width: 8,) ,
                Text('2 ماه و 20 روز دیگر تا تولد غزل', style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,),

              ],
            ) ,

          //--- notif message---//
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)) ,
                    color: RefColor.pastelYellow ,

                  ),
                  child:   Padding(
                    padding: const EdgeInsets.fromLTRB(8 , 0 , 8 , 0),
                    child: Text('۱۰ روز زودتر به من اطلاع بده', style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall!.copyWith(color: RefColor.darkerYellow) ,
                    textAlign: TextAlign.right),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
