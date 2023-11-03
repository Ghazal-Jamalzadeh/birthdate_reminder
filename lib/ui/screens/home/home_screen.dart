import 'package:birthdate_reminder/data/models/birthdate.dart';
import 'package:birthdate_reminder/data/repository/birthdate-repository.dart';
import 'package:birthdate_reminder/ui/screens/insert/insert-screen.dart';
import 'package:birthdate_reminder/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          Navigator.push(context, CupertinoPageRoute(builder: (context) => InsertScreen(),)) ;
        },
        child: Icon( CupertinoIcons.plus, size: 32, color: Colors.white,),
        tooltip: 'Add',
        backgroundColor: RefColor.darkPink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: RefColor.pastelBlue,
      body: Column(
        children: [
          Consumer<BirthdateRepository>(
            builder: (context, repository, child) {
              List<Birthdate> list = repository.getAll() ;
             return list.isEmpty ? Text('empty wwnfnf w fer fer  wf er  fefef e fe f') : Expanded(
               child: ListView.builder(
                 padding: EdgeInsets.fromLTRB(0, 56, 0, 32),
                 physics: BouncingScrollPhysics(),
                 itemCount: list.length,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.fromLTRB(16 , 8 , 16 , 8),
                     child: BirthdateCard(),
                   );
                 },),
             ) ;

            },
          ),
        ],
      ),
    ) ;
  }
}
