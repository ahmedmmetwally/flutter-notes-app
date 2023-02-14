import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_app_bar.dart';
import './custome_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column (children: [
        CustomAppBar(),
        NoteItem(),
      ],),
    );
  }
}



