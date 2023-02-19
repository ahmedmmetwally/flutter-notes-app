import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_bloc_local_database/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_bloc_local_database/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app_bloc_local_database/views/widgets/add_note_form.dart';



class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit,AddNoteState>(listener:(context,state){
      if(state is AddNoteFailure){
        print ("retry again");
      }if(state is AddNoteSuccess){
        BlocProvider.of<NoteCubit>(context).fetchAllNotes();
        Navigator.pop(context);
      }
    } ,builder: (context,state){
      return BlocBuilder<AddNoteCubit,AddNoteState>(builder: (context,state){
        return AbsorbPointer(
          absorbing: state is AddNoteLoadign?true:false,
          child:   Padding(
            padding:EdgeInsets.only(top: 20,right: 10,left: 10,bottom: MediaQuery.of(context).viewInsets.bottom),
            child:SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }

      );
    },);

  }
}
