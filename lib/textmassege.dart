import 'package:flutter/material.dart';
import 'package:flutter_application_1/input_massege.dart';

class Textmassege extends StatefulWidget {
  const Textmassege({super.key});

  @override
  State<Textmassege> createState() => _TextmassegeState();
}
 


class _TextmassegeState extends State<Textmassege> {
  
  
  List<String>chat=[];
  void addmassege (String text){
    setState(() {
      chat.add(text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Telegram',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chat.length,
              itemBuilder:(context, index) {
                return ListTile(title: Text(chat[index]));
              
            },),
          ),
        InputMassege(onsend: addmassege ,)],
      ),
    );
  }
}
