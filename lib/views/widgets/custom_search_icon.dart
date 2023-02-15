import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  const CustomSearchIcon({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
    color: Colors.white.withOpacity(.03)),
    child:  Icon(icon,size: 30,),);
  }
}
