import 'package:flutter/material.dart';

class QueryCard extends StatelessWidget {
  final text;
  const QueryCard({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: double.maxFinite,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 18),
          child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 16),),
        ),
      ),
    );
  }
}