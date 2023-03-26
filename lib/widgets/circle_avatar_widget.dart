import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    required this.imageLink,
    this.marginRight = 0,
    super.key,
  });

  final String imageLink;
  final double marginRight;

  // final marginTop =

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              blurRadius: 7,
              color: Colors.black,
              // spreadRadius: 5,
              offset: Offset(-3, 4))
        ],
      ),
      margin:
          EdgeInsets.only(left: 15, top: 25, bottom: 25, right: marginRight),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageLink),
        radius: 35,
      ),
    );
  }
}
