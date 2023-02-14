import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 15,right: 10,left: 10),
          child: TextFormField(
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),hintText:"title",hintStyle: TextStyle(color:floatingColor, ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white60,width: 2, ),borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60,right: 10,left: 10),
          child: TextFormField(
            decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 60,horizontal: 10),hintText:"title",hintStyle: TextStyle(color:floatingColor, ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white60,width: 2, ),borderRadius: BorderRadius.circular(10))),
          ),
        ),

        Container(
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
    );
  }
}
