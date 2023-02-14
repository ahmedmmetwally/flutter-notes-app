import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( body: NotesViewBody()),
    );
  }
}
