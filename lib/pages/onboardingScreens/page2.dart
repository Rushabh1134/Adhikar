import 'package:adhikar/pages/onboardingScreens/Page1.dart';
import 'package:adhikar/pages/onboardingScreens/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset('assets/images/camera.png',height: 399,),
            Text('Upload any legal document to get the summary of it',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 130,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Page1();
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
                            return Page3();
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