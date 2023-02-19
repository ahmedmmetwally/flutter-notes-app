
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_bloc_local_database/models/note_model.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {

  const AddNoteForm({Key? key, }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  bool isLoading=true;
  GlobalKey<FormState> form=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: <Widget>[
          CustomTextField(hint: "title",onSaved: (value){
            title=value;
          },),
          Container(height: 15,),
          CustomTextField(hint: "description",maxLines: 5,onSaved: (value){
            subtitle=value;
          },),
          Container(height: 20,),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ElevatedButton(
                onPressed: (){
                  if( form.currentState!.validate()){
                    form.currentState!.save();
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
                    final note=NoteModel(title: title!, subtitle: subtitle!, date:formattedDate, color: Colors.red.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);

                  }else{
                    autovalidateMode=AutovalidateMode.always;
                    setState(() {

                    });
                  }
                }, //icon data for elevated button
                child:BlocBuilder<AddNoteCubit,AddNoteState>(builder: (context,state){
                 return (state is AddNoteLoadign)?  const SizedBox(height: 24,width: 25,child: CircularProgressIndicator(color: Colors.black,))
                     :Text("Add",style: TextStyle(color: Colors.black),);
                }
                ),
                //label text
                style: ElevatedButton.styleFrom(
                    primary: floatingColor
                  //elevated btton background color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

