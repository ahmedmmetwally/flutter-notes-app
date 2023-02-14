import 'package:flutter/material.dart';
import 'package:notes_app_bloc_local_database/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:const [
        Text("Notes",style: TextStyle(fontSize: 28),),
        CustomSearchIcon(),
      ]),
    );
  }
}
