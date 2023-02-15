import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';

class CustomTextField extends StatelessWidget {
   String hint;
   int maxLines;
   final void Function(String?)? onSaved;
   CustomTextField({Key? key,required this.hint,this.maxLines=1,this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty?? true){
          return "Field is required";
        }else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
          contentPadding:const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          hintText: hint,
          hintStyle: const TextStyle(
            color: floatingColor,
          ),
          enabledBorder:buildBorder(),
        focusedBorder: buildBorder(floatingColor),
        border: buildBorder()
      ),
    );
  }
  OutlineInputBorder buildBorder([color]){
    return  OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white60,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10));
  }
}
