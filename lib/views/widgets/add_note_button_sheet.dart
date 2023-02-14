import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Wrap(
        children: [
          CustomTextField(hint: "title",),
          Container(height: 15,),
          CustomTextField(hint: "description",maxLines: 5,),
          Container(height: 20,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
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
