import 'package:adhikar/Home/inputpage.dart';
import 'package:adhikar/widgets/query_card.dart';
import 'package:flutter/material.dart';

class CivilQueListPage extends StatelessWidget {
  const CivilQueListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String practiceArea = 'Civil';
    // String que
    //     ;
    return Scaffold(
      appBar: AppBar(
        title: Text(practiceArea),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              queList(context, practiceArea,
                  'What are the legal rights and responsibilities of landlords and tenants in [state]?',false),
                      queList(context, practiceArea,
                  'Explain the process of filing a lawsuit in civil court for [specific legal matter] in [state].',true),
                      queList(context, practiceArea,
                  'How does civil law in state  address issues of property ownership and transfer?',false),
                      queList(context, practiceArea,
                  'What is the statute of limitations for filling a personal injury claim in [state] under civil law?',false),
                      queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
                   queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
                   queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
                   queList(context, practiceArea,
                  'What is the statute of limitations for filling a personal injury claim in [state] under civil law?',false),
                      queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
                   queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
                   queList(context, practiceArea,
                  'Explain the concept of negligence and its inplications in [state] underr civil law',false),
            ],
          ),
        ),
      )),
    );
  }

  Widget queList(BuildContext context, String practiceArea, String que,bool anotherInput,) {
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return InputPage(
              text: que,
              practiceArea: practiceArea,
              anotherInput: anotherInput,
            );
          }));
        },
        child: QueryCard(
          text: que,
        ));
  }
}
