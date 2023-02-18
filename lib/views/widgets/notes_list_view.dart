import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_bloc_local_database/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';
import './custome_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit,NoteState>(builder: (context,state){
      List<NoteModel> notes= state is NoteSuccess? state.noteList:[];
      return  Expanded(child: ListView.builder(itemCount: notes.length,itemBuilder: (context,index){
        return  NoteItem(note: notes[index],);
      })
      );
    });
  }
}
