import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/cards/birthdate-cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)),

        onPressed: () {
          // Add your action here
        },
        child: Icon( CupertinoIcons.plus, size: 32, color: Colors.white,),
        tooltip: 'Add',
        backgroundColor: RefColor.darkPink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: RefColor.pastelBlue,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.fromLTRB(0, 56, 0, 32),
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16 , 8 , 16 , 8),
                child: BirthdateCard(),
              );
            },),
          ),
        ],
      ),
    ) ;
  }
}
