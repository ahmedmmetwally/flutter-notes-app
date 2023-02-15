
import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                if( form.currentState!.validate()){
                  form.currentState!.save();
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              }, //icon data for elevated button
              child: Text("Add",style: TextStyle(color: Colors.black),), //label text
              style: ElevatedButton.styleFrom(
                  primary: floatingColor
                //elevated btton background color
              ),
            ),
          ),
        ],
      ),
    );
  }
}

