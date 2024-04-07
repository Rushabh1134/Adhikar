import 'package:adhikar/pages/onboardingScreens/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  const Text(
                    'Adhikar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/logo.png')
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your one stop solution to your legal queries',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(child: Image.asset('assets/images/background.png')),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: InkWell(
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
                        'Next',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
