import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  const CustomAppBar({Key? key,required this.icon,required this.title,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        Text(title,style: TextStyle(fontSize: 28),),
        CustomSearchIcon(icon: icon,onPressed: onPressed,),
      ]),
    );
  }
}
