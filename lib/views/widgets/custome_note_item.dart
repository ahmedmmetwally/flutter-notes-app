import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_bloc_local_database/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditNoteView()));
      },
      child: Container(margin: EdgeInsets.symmetric(vertical: 5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(0xffFFCD79)),
        child: Padding(
          padding: const EdgeInsets.only(top:20,left: 10,bottom: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
            ListTile(title: Text("Flutter tipcs",style: const TextStyle(fontSize: 26,color: Colors.black),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child:Text("Build your career with ahmed metwally",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.4)),),
              ),
              trailing: const Icon(FontAwesomeIcons.trash,color: Colors.black,size:30 ,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text("May 21,2023",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.4))),
            ),

          ],),
        ),),
    );
  }
}