import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double width;
  const LeftBar({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 27,
          width: width,
          decoration: BoxDecoration(
              color: Colors.yellow[600],
              borderRadius:const  BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
        )
      ],
    );
  }
}
