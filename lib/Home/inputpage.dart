import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  final String text;
  final String practiceArea;
  final bool anotherInput;
  
  const InputPage(
      {super.key,
      required this.text,
      required this.practiceArea,
      required this.anotherInput});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.practiceArea),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(widget.text),
              widget.anotherInput
                  ? Column(
                  
                      children: [
                        TextField(
                          controller: secondcontroller,
                          decoration: const InputDecoration(hintText: 'Enter here'),
                        ),
                        TextField(
                          controller: firstcontroller,
                          decoration:
                              const InputDecoration(hintText: 'Enter here'),
                        ),
                      ],
                    )
                  : TextField(
                      controller: firstcontroller,
                      decoration: const InputDecoration(hintText: 'Enter here'),
                    ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  //take statecontroller and text with navigator and redirect it to chat screen
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  child: const Card(
                      color: Colors.black,
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
