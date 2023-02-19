import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_app_bar.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
   EditNoteViewBody({Key? key,required this.note}) : super(key: key);
  final NoteModel  note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body :Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children:  [
             CustomAppBar(title: "Edit Note",icon: (Icons.search),onPressed: (){
              widget.note.title=title??widget.note.title;
              widget.note.subtitle=subtitle??widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
            },),
            CustomTextField(hint:widget.note.title ,onChanged: (value){
              title=value;
            },),
            Container(height: 15,),
            CustomTextField(hint: widget.note.subtitle,maxLines: 5,onChanged: (value){
              subtitle=value;
            },),
          ],
        ),
      )),
    );
  }
}
