import 'package:flutter/material.dart';
enum SingingCharacter {NoAttempt, Attempted, Successful}

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = .NoAttempt;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<SingingCharacter>(
      groupValue: _character,
      onChanged: (SingingCharacter? value) {
        setState(() {
          _character = value;
        });
      },
      child: const Column(

        children: <Widget>[
          ListTile(
            title: Text('Not Attempted'),
            leading: Radio<SingingCharacter>(value: SingingCharacter.NoAttempt),
          ),
          ListTile(
            title: Text('Attempted'),
            leading: Radio<SingingCharacter>(value: SingingCharacter.Attempted),
          ),
          ListTile(
            title: Text('Successful'),
            leading: Radio<SingingCharacter>(value: SingingCharacter.Successful),
          ),
        ],
      ),
    );
  }}
class AutonPage extends StatefulWidget {
  static var controller = TextEditingController();
  const AutonPage({super.key});

  @override
  State<AutonPage> createState() => _AutonPageState();
}

enum ClimbLevel { Level1, Level2, Level3, Attempted, NotAttempted }

class _AutonPageState extends State<AutonPage> {
    void onTapDown(BuildContext context, TapDownDetails details) {
    print('ran2');
    final Offset localOffset = details.localPosition;
    dx.add(localOffset.dx);
    dy.add(localOffset.dy); 
    setState(() {
      _children.add(Positioned(left: dx[dx.length-1] , top: dy[dy.length - 1], child: Container(width: 10, height: 10, decoration: const BoxDecoration(
            color: Colors.red, shape: BoxShape.circle),),));
    });
  }
  bool? isChecked1 = false
  , isChecked2 = false
  , isChecked3 = false
  , isChecked4 = false;
    
  List<Widget?> _children = [];
  bool flip = false;
  List<double?> dx = [];
  List<double?> dy = [];
  List<Widget> fixthedisplay(List<Widget?> widgets ){
    if (widgets.isNotEmpty){
      List<Widget> goodWidgets = List.from(widgets);
      return goodWidgets;
    } else {
      List<Widget> goodWidgets = [];
      return goodWidgets;
    }
  }
  
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: [
      Padding(padding: const EdgeInsets.all(16.0), child:Column(children: [Text('Auto Shooting Locations'),Padding(padding: const EdgeInsets.all(16.0), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          ElevatedButton(onPressed: () => setState(() {
            try {
            _children.removeAt(_children.length - 1);
            dx.removeAt(dx.length - 1);
            dy.removeAt(dy.length  -1);
            } catch (e){
              print('whoops');
            }
          }), child: Text('Undo')),
          ElevatedButton(onPressed: () => setState(() {
            flip = !flip;
            if (dx.isNotEmpty){
              for (int i = 0; i < _children.length; i++){
              dx[i] = 200-dx[i]!;
              _children[i] = (Positioned(left: dx[i] , top: dy[i], child: Container(width: 10, height: 10, decoration: const BoxDecoration(
            color: Colors.red, shape: BoxShape.circle),),));
              }

            } 

          }), child: Text('Flip Image'))
        ],)),SizedBox(width: 200, height: 200, child: GestureDetector(
        onTapDown: (details) =>  onTapDown(context, details),
        child: Stack(children: [Transform.flip(flipX: flip, child: Image.asset("assets/images/FieldImage.png", fit: BoxFit.cover,)),
        ...fixthedisplay(_children)
        ]),
      ),)])),
      
      Column(
        children: [Padding(padding: const EdgeInsets.all(16.0), child: Text('Climb', style: TextStyle(fontSize: 20),)),Center(child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 510,
        ),
        child: Center(child: RadioExample())
         )),],),
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
    ));
  }
}    
