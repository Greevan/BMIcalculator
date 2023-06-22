import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_label.dart';
import '../constants.dart';
import '../components/round_icon_button.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  // const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.male;
  int myHeight = 180;
  int myWeight = 70;
  int myAge = 19;

  // Color maleCardColor = activeBoxColor;
  // Color femaleCardColor = activeBoxColor;

  // void updateCardColor(Gender gender) {
  //   //1=male and 2=female
  //   if (gender == Gender.male) {
  //     //maleCardColor==inactiveBoxColor?maleCardColor=activeBoxColor femaleCardColor=inactiveBoxColor:maleCardColor=inactiveBoxColor;
  //     if (maleCardColor == inactiveBoxColor) {
  //       maleCardColor = activeBoxColor;
  //       femaleCardColor = inactiveBoxColor;
  //     } else {
  //       maleCardColor = inactiveBoxColor;
  //     }
  //   } else if (gender == Gender.female) {
  //     if (femaleCardColor == inactiveBoxColor) {
  //       femaleCardColor = activeBoxColor;
  //       maleCardColor = inactiveBoxColor;
  //     } else {
  //       femaleCardColor = inactiveBoxColor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    custColor: selectedGender == Gender.male
                        ? kActiveBoxColor
                        : kInactiveBoxColor,
                    cardChild: const IconLabel(
                      custIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    custColor: selectedGender == Gender.female
                        ? kActiveBoxColor
                        : kInactiveBoxColor,
                    cardChild: const IconLabel(
                      custIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ), //Row1

          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    custColor: kActiveBoxColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Height',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Widget>[
                            Text(
                              myHeight.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: const Color(0xFFEB1555),
                              inactiveTrackColor: const Color(0xFF848486),
                              overlayColor: const Color(0x29EB1555),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 16),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30)),
                          child: Slider(
                            value: myHeight.toDouble(),
                            min: kminHeightValue,
                            max: kmaxHeightValue,
                            onChanged: (double newvalue) {
                              setState(() {
                                myHeight = newvalue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), //Row2

          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    custColor: kActiveBoxColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Widget>[
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              myWeight.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'kg',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                custIcon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    myWeight--;
                                  });
                                }),
                            const SizedBox(
                              width: 50,
                            ),
                            RoundIconButton(
                              custIcon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  myWeight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    custColor: kActiveBoxColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          myAge.toString(),
                          selectionColor: Colors.white,
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                custIcon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    myAge--;
                                  });
                                }),
                            const SizedBox(
                              width: 50,
                            ),
                            RoundIconButton(
                                custIcon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    myAge++;
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), //Row3
          BottomButton(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(myHeight, myWeight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ResultsPage(
                    bmi: calc.getBMI(),result: calc.getResult(),comment:calc.getComment()),
                  ));
            },
            custBottomButtonText: 'Calculate',
          ),
        ],
      ),
    );
  }
}
