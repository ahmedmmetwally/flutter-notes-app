
import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/constant.dart';

class ColorsListView extends StatefulWidget {
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int  currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:kColors.length,
        itemBuilder:(context,index) {
         return GestureDetector(onTap: (){
           currentIndex=index;
           setState(() {

           });
         },child: ColorItem(color:kColors[index],isActive: currentIndex==index,));
        }),
    );
  }
}

class ColorItem extends StatelessWidget {
   ColorItem({Key? key,this.isActive=false,required this.color}) : super(key: key);
    final bool isActive;
    final Color color;
    @override
     Widget build(BuildContext context) {
      return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: isActive?  CircleAvatar(radius: 35,backgroundColor: Colors.white,child: CircleAvatar(radius: 33,backgroundColor: color,),)
          :CircleAvatar(radius: 35,backgroundColor: color,)
    );
  }
}
