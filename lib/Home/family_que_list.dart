import 'package:adhikar/Home/inputpage.dart';
import 'package:adhikar/widgets/query_card.dart';
import 'package:flutter/material.dart';

class FamilyQueList extends StatelessWidget {
  const FamilyQueList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String practiceArea = 'Family Law';
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
                  'What are the legal requirements for getting a [divorce]?`',false),
                      queList(context, practiceArea,
                  'What are the rights of [unmarried fathers] in family law?',false),
                      queList(context, practiceArea,
                  'What are the legal implications of [domestic violence] in family law?',false),
                      queList(context, practiceArea,
                  'How does [child custody and visitation] work in family law?',false),
                      queList(context, practiceArea,
                  'What rights do [grandparents] ave in matters of [child custody]',true),
                   queList(context, practiceArea,
                  'What legal protection are available for victims of [parental abduction]?',false),
                   queList(context, practiceArea,
                  'How does family law handel issues of [guardianship] and [conservatorship]?',false),
                  queList(context, practiceArea,
                  'What are the rights and obligations of [unmarried couple] in family law?',false),
                      queList(context, practiceArea,
                  'What rights do [grandparents] ave in matters of [child custody]',true),
                   queList(context, practiceArea,
                  'What legal protection are available for victims of [parental abduction]?',false),
                   queList(context, practiceArea,
                  'How does family law handel issues of [guardianship] and [conservatorship]?',false),
            ],
          ),
        ),
      )),
    );
  }

  Widget queList(BuildContext context, String practiceArea, String que,bool anotherInput) {
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
