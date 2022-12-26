// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class InfoContainer extends StatefulWidget {
  final Color? backgroundColor;
  final IconData infoIcon;
  final String amount;
  final String title;

  InfoContainer({super.key, required this.backgroundColor, required this.infoIcon, required this.amount, required this.title});

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.backgroundColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.infoIcon, color: Colors.black),
          SizedBox(height: 10,),
          Text(widget.amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
          SizedBox(height: 10,),
          Text(widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey[800]
            ),
          )
        ],
      ),
    );
  }
}