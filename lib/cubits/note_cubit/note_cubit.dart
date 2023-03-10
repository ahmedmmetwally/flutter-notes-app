import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes()async{

      var noteBox=Hive.box<NoteModel>(kNoteBox);
       List<NoteModel> notes=noteBox.values.toList();
       emit(NoteSuccess(notes));
  }
}
