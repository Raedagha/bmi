import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  final double width;
  const RightBar({Key? key, required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 27,
          width: width,
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.yellow[600],
          ),
        )
      ],
    );
  }
}
