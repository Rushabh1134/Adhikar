import 'package:flutter/material.dart';

class AI_section extends StatelessWidget {
  const AI_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI section',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_rounded))
        ],
      ),
    );
  }
}