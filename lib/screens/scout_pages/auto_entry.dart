import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AutonPage extends StatefulWidget {
  static var controller = TextEditingController();
  const AutonPage({super.key});
  

  @override
  State<AutonPage> createState() => _AutonPageState();
}

enum ClimbLevel { Level1, Level2, Level3, Attempted, NotAttempted }

class _AutonPageState extends State<AutonPage> {
  ClimbLevel climbLevelView = ClimbLevel.Level1;
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
        Image.asset("assets/images/FieldImage.png"),
        ),
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, // Keeps the button row from expanding to full screen width
        children: [
          SizedBox(height: 20.0),
          const Text("Climb(L1)"),
          const SizedBox(height: 16.0),
          SegmentedButton<ClimbLevel>(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              foregroundColor: Colors.white,
              selectedForegroundColor: Colors.white,
              selectedBackgroundColor: Colors.green,
            ),
            segments: const <ButtonSegment<ClimbLevel>>[
              ButtonSegment<ClimbLevel>(
                value: ClimbLevel.Level1,
                label: Text('Level 1'),
              ),
              ButtonSegment<ClimbLevel>(
                value: ClimbLevel.Level2,
                label: Text('Level 2'),
              ),
              ButtonSegment<ClimbLevel>(
                value: ClimbLevel.Level3,
                label: Text('Level 3'),
              ),
              ButtonSegment<ClimbLevel>(
                value: ClimbLevel.Attempted,
                label: Text('Attempted'),
              ),
              ButtonSegment<ClimbLevel>(
                value: ClimbLevel.NotAttempted,
                label: Text('Not Attempted'),
              ),
            ],
            selected: <ClimbLevel>{climbLevelView},
            onSelectionChanged: (Set<ClimbLevel> newSelection) {
              setState(() {
                climbLevelView = newSelection.first;
              });
            },
          ),
          SizedBox(height: 20.0),

        ],
      ),
        SizedBox(width: 500,
         child: Column(
          children: 
          [
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
                ),
          ],
          ),
        ),
      ],
    );
  }
}    
