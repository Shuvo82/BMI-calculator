import 'package:flutter/material.dart';
class iconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;
  iconContent( {required this.genderIcon,required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          genderName,
          style: const TextStyle(
              fontSize: 18,
              color: Color(0xffffffff)
          ),
        )

      ],
    );
  }
}