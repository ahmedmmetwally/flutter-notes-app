import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomSearchIcon({Key? key,required this.icon,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
    color: Colors.white.withOpacity(.03)),
    child:  IconButton(icon: Icon(icon,size: 30,), onPressed: onPressed,),);
  }
}
