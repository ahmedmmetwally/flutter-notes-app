import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home: NotesView(),
    );
  }
}

