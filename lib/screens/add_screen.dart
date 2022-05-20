import 'package:flutter/material.dart';
import 'package:note_making_app/models/NotesOperation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String titleText='';
    String descriptionText='';
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text('Notes Helper'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter title',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                )
              ),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
              onChanged: (value){
                titleText=value;
              },
            ),

            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter description',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )
                ),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                onChanged: (value){
                  descriptionText=value;
                },
              ),
            ),
            FlatButton(
              onPressed: (){
                Provider.of<NotesOperation>(context, listen: false).addNewNote(titleText, descriptionText);
                Navigator.pop(context);
              },
              color: Colors.white,
              child: const Text(
                'Add Note',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
