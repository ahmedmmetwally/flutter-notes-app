import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/views/widgets/add_note_button_sheet.dart';
import 'package:notes_app_bloc_local_database/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton:FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: floatingColor,
              onPressed: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                   return const AddNoteButtonSheet();
                  },
                );
              }
          ),
          body: const NotesViewBody()),
    );
  }
}
