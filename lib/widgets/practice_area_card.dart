import 'package:flutter/material.dart';

class PracticeAreaCard extends StatelessWidget {
  final image;
  final text;
  const PracticeAreaCard({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 10,
          child: Container(
            height: 150,
        width: MediaQuery.of(context).size.width*0.28,  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image,height: 70,),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
          ),
        ),
    );
    
  }
}