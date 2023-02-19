import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';
import 'package:notes_app_bloc_local_database/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key,required this.note}) : super(key: key);
  final NoteModel  note;
  @override
  Widget build(BuildContext context) {
    return  EditNoteViewBody(note: note);
  }
}
