import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color colour;
  final Function onPress;
  ReUsableCard({@required this.colour, this.cardChild, this.onPress});
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
