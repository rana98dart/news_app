import 'package:flutter/material.dart';

class InputMassege extends StatelessWidget {
   InputMassege({required this.onsend,super.key});
   final Function onsend;

  TextEditingController textmassege = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: textmassege,
              decoration: InputDecoration(hintText: 'Massege'),
            ),
          )),
          IconButton(onPressed: () {
            if(textmassege.text.isNotEmpty){
              onsend(textmassege.text);
            }
          }, icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
