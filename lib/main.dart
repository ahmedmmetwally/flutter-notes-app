import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_bloc_local_database/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';
import 'package:notes_app_bloc_local_database/simple_bloc_observer.dart';
import 'package:notes_app_bloc_local_database/views/notes_view.dart';


void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer=SimpleBlocObserver();
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
        BlocProvider<NoteCubit>(create: (context)=>NoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
        home: NotesView(),
      ),
    );
  }
}

