import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = 0xFF262A4C;
const bottomContainerColor = 0xFFFF0066;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    colour: Color(activeCardColor),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ReusableIcon(
                          icons: FontAwesomeIcons.mars,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: Color(activeCardColor),
                    cardChild: Column(
                      children: <Widget>[
                        ReusableIcon(
                          icons: FontAwesomeIcons.female,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(colour: Color(activeCardColor)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(colour: Color(activeCardColor)),
                ),
                Expanded(
                  child: ReUsableCard(colour: Color(activeCardColor)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  final IconData icons;
  ReusableIcon({@required this.icons});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icons,
      size: 80,
    );
  }
}

class ReUsableCard extends StatelessWidget {
  final Color colour;
  ReUsableCard({@required this.colour, this.cardChild});
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
