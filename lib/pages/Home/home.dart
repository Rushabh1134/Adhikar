import 'package:adhikar/pages/Home/cvil_que_list.dart';
import 'package:adhikar/pages/Home/family_que_list.dart';
import 'package:adhikar/widgets/practice_area_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        title: Row(
          children: [
            const Text(
              'Adhikar',
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10,),
            Image.asset('assets/images/logo.png',height: 40,)
          ],
        ),
      ),
      body:  SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: const Text('Adhikar is your Legal Assistance that will help your doubts about law get clear in most exact way out. \nChat with AI to clear your queries \nGet answers to most asked questions',style: TextStyle(color: Colors.black,fontSize: 18),),
            ),
                     
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CivilQueListPage();
                    }));
                  },
                  child: const PracticeAreaCard(
                    image: 'assets/images/civil.png',
                    text: 'Civil Law',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FamilyQueList();
                    }));
                  },
                  child: const PracticeAreaCard(
                    image: 'assets/images/family.png',
                    text: 'Family Law',
                  ),
                ),
                const PracticeAreaCard(
                  image: 'assets/images/coporate.png',
                  text: 'Coporate Law',
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PracticeAreaCard(
                  image: 'assets/images/property.png',
                  text: 'Intellectual Property Law',
                ),
                PracticeAreaCard(
                  image: 'assets/images/health.png',
                  text: 'Health Care Law',
                ),
                PracticeAreaCard(
                  image: 'assets/images/immigration.png',
                  text: 'Immigration Law',
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PracticeAreaCard(
                  image: 'assets/images/smuggling.png',
                  text: 'Smuggling Law',
                ),
                PracticeAreaCard(
                  image: 'assets/images/environment.png',
                  text: 'Environmental Law',
                ),
               
              ],
            ),
                    ],
                  ),
          )),
    );
  }
}
