import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_app_bar.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body :Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children:  [
            const CustomAppBar(title: "Edit Note",icon: (Icons.search),),
            CustomTextField(hint: "title",),
            Container(height: 15,),
            CustomTextField(hint: "content",maxLines: 5,),
          ],
        ),
      )),
    );
  }
}
