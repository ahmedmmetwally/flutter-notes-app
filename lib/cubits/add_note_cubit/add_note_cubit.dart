import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoadign());
    try{
      var noteBox=Hive.box<NoteModel>(KNoteBox);
       await noteBox.add(note);
       emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFailure(message: e.toString()));
    }

  }
}
