import 'package:adhikar/pages/login.dart';
import 'package:adhikar/pages/onboardingScreens/page2.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset('assets/images/chat.png',height: 399,),
            Text('Chat or Talk with NyaySahayak which is an AI assistant to get you justice',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Page2();
                      }));
                    },
                    child: Card(
                      color: Colors.black,
                      elevation: 20,
                      child: Container(
                        height: 60,
                        width: 100,
                        child: const Center(
                            child: Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginScreen();
                          }));
                        },
                        child: Card(
                          color: Colors.black,
                          elevation: 20,
                          child: Container(
                            height: 60,
                            width: 100,
                            child: const Center(
                                child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}