import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_bloc_local_database/views/widgets/add_note_form.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';


class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit,AddNoteState>(listener:(context,state){
          if(state is AddNoteFailure){
            print ("retry again");
          }if(state is AddNoteSuccess){
            Navigator.pop(context);
          }
        } ,builder: (context,state){
          return  ModalProgressHUD(inAsyncCall: state is AddNoteLoadign ?true :false,
              child: const AddNoteForm());
        },),
      ),
    );
  }
}
