import 'package:flutter/material.dart';
import './custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(itemBuilder: (context,index){
      return const NoteItem();
    })
    );
  }
}
