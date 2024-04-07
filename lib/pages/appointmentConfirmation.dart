import 'package:flutter/material.dart';

class AppointmentConfirmation extends StatelessWidget {
  final String name;
  const AppointmentConfirmation({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          
          children: [
            const SizedBox(height: 40,),
            Image.asset('assets/images/success.png',height: 300,),
            const Text('Your appointmwnt was booked successfully',style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.bold),),
            Text("${name} will contact you as soon as possible")
          ],
        ),
      )),
    );
  }
}