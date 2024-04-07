import 'package:adhikar/pages/appointmentConfirmation.dart';
import 'package:flutter/material.dart';

class MarketPlaceProfile extends StatelessWidget {
  final String name;

  const MarketPlaceProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/C98PnTLuUEdNuO_ruurNGTRKvpIaecJk_XNynAjKVPQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS12ZWN0/b3IvYXZhdGFyLXBy/b2ZpbGUtY29sb3Jm/dWwtaWxsdXN0cmF0/aW9uLTJfNTQ5MjA5/LTgyLmpwZz9zaXpl/PTYyNiZleHQ9anBn'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            '15 years of experience',
            style: TextStyle(
              color: Color.fromARGB(255, 119, 116, 116),
              fontSize: 17,
            ),
          ),
          const Text(
            'LLB from Mumbai University',
            style: const TextStyle(
                color: Color.fromARGB(255, 119, 116, 116), fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AppointmentConfirmation(name: name,);
                }));
              },
              child: Card(
                color: Colors.black,
                elevation: 20,
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    child: const Center(
                      child: Text(
                                  'Book your appointment',
                                  style: TextStyle(color: Colors.white, fontSize: 23),
                                ),
                    ),
                  )),
            ),
          )
        ],
      )),
    );
  }
}
