import 'package:adhikar/pages/marketplace_profile.dart';
import 'package:adhikar/widgets/lawyers_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Marketplace',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
               onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Prakash Thakkar');
                }));
              },
              child: const LawyersCard(
                username: 'Adv Prakash Thakkar',
              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Bhavika Jain');
                }));
              },
                child: const LawyersCard(
              username: 'Adv Bhavika Jain',
            )),


            GestureDetector(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Kalavati kadu');
                }));
              },
              child: const LawyersCard(
                username: 'Adv Kalavati kadu',
              ),
            ),


            GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Harsh Mali');
                }));
              },
              child: const LawyersCard(
                username: 'Adv Harsh Mali',
              ),
            ),


            GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Ankit Singh');
                }));
              },
              child: const LawyersCard(
                username: 'Adv Ankit Singh',
              ),
            ),


            GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MarketPlaceProfile(name:'Adv Rushsabh Patil');
                }));
              },
              child: const LawyersCard(
                username: 'Adv Rushsabh Patil',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
