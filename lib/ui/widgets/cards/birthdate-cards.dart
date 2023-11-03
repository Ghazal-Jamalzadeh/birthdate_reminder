import 'package:birthdate_reminder/data/models/birthdate.dart';
import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdateCard extends StatelessWidget {

  Birthdate birthdate ;

  BirthdateCard({Key? key  , required this.birthdate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //--- icons ---//
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                     birthdate.sendMeNotification ? CupertinoIcons .bell : CupertinoIcons.bell_slash,
                      size: 16,
                      color: SysColor.onBackground,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          'ویرایش',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const Icon(
                          Icons.edit,
                          size: 16,
                          color: SysColor.onBackground,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'جزییات',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: SysColor.onBackground,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            //--- name ---//
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  'تولد ${birthdate.name}',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.right,
                )),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            //--- date ---//
            Row(
              textDirection: TextDirection.rtl,
              children: [
                const Icon(
                  CupertinoIcons.calendar_today,
                  size: 16,
                  color: SysColor.error,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  birthdate.dateFancyString,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            //--- remain days ---//

            Row(
              textDirection: TextDirection.rtl,
              children: [
                const Icon(
                  Icons.cake_rounded,
                  size: 16,
                  color: SysColor.error,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '2 ماه و 20 روز دیگر تا تولد غزل',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),

            //--- notif message---//
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    color: RefColor.pastelYellow,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    child: Text('${birthdate.daysEarlier} روز زودتر به من اطلاع بده',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: RefColor.darkerYellow),
                        textAlign: TextAlign.right),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
