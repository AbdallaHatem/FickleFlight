import 'package:flutter/material.dart';


class Containericon extends StatelessWidget {
  final Color ground ;
  final Icon ico;
  final String text; 
  const Containericon({super.key,required this.ground,required this.ico,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: 50,
            color: ground,
            child: ico,
          ),
        ),
        const SizedBox(height: 5,),
        Text('$text',style: const TextStyle(fontSize: 15,color: Colors.black,),),
      ],
    );
  }
}