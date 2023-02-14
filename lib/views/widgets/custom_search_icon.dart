import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
    color: Colors.white.withOpacity(.03)),
    child: const Icon(Icons.search,size: 30,),);
  }
}
