import 'package:flutter/material.dart';
class AutonPage extends StatefulWidget {
  static var controller = TextEditingController();
  const AutonPage({super.key});

  @override
  State<AutonPage> createState() => _AutonPageState();
}

class _AutonPageState extends State<AutonPage> {
  bool? isChecked1 = false
  , isChecked2 = false
  , isChecked3 = false
  , isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Auto Shooting Location'),
        ),
        SizedBox(height: 200, width: 400, child:
        Image.asset("assets/images/FieldImage.png")
        ),
        CheckboxListTile(
          title: Text("Pickup from Depot"),
          value: isChecked1,
          onChanged: (newBool) {
            setState(() {
              isChecked1 = newBool;
            });
          },
        ),
        CheckboxListTile(
            title: Text("Pickup from Outpost"),
            value: isChecked2,
            onChanged: (newBool) {
              setState(() {
                isChecked2 = newBool;
              });
            },
          ),      
        CheckboxListTile(
              title: Text("Pickup from Neutral Zone"),
              value: isChecked3,
              onChanged: (newBool) {
                setState(() {
                  isChecked3 = newBool;
                });
              },
            ),
        CheckboxListTile(
                title: Text("Crossed Midline"),
                value: isChecked4,
                onChanged: (newBool) {
                  setState(() {
                    isChecked4 = newBool;
                  });
                },
              )
      ]
    );
      
  }
}