import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';


const activeCardColor=Color(0xff121428);
const inActiveCardColor=Color(0xff262944);
const bottomColor=Color(0xffea1556);
const bottomHeight=80.0;

enum genderType {male,female,other}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {


   genderType gender=genderType.other;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.yellowAccent,
        title: const Center(

            child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:  GestureDetector(
                      onTap: (){
                        setState(() {
                          gender=genderType.male;
                          //updateColor(genderType.male);
                        });
                      },
                      child: ReUsableCard(
                        col: gender==genderType.male?activeCardColor:inActiveCardColor,
                        cardChild: iconContent(genderIcon: FontAwesomeIcons.mars,genderName: 'Male',),

                      ),
                    )
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          gender=genderType.female;
                        });
                      },
                      child: ReUsableCard(
                        col: gender==genderType.female?activeCardColor:inActiveCardColor,
                        cardChild: iconContent(genderIcon: FontAwesomeIcons.venus,genderName: 'Female',),
                  ),
                    ))
                ],
              )
          ),
          Expanded(
             child: ReUsableCard(col: inActiveCardColor)
          ),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReUsableCard(col: inActiveCardColor)),
                  Expanded(
                      child:ReUsableCard(col: inActiveCardColor))
                ],
              )
          ),
          Container(

            margin: const EdgeInsets.only(top: 10),
            width: double.maxFinite,
            height: bottomHeight,
            decoration: BoxDecoration(
                color: bottomColor,
                borderRadius: BorderRadius.circular(19)
            ),
          )
        ],
      )

    );
  }
}


//CHild code of card


