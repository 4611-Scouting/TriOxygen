import 'package:flutter/material.dart';
class TeleopPage extends StatefulWidget {
  static var controller = TextEditingController();
  const TeleopPage({super.key});

  @override
  State<TeleopPage> createState() => _TeleopPageState();
}

class _TeleopPageState extends State<TeleopPage> {
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
  , isChecked4 = false
  , isChecked5 = false
  , isChecked6 = false
  , isChecked7 = false;
    
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
      Padding(padding: const EdgeInsets.all(16.0), child:Column(children: [Text('Shooting Locations'),Padding(padding: const EdgeInsets.all(16.0), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
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
        SizedBox(width: 500,
         child: Column(
          children: [
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
                  title: Text("Passed from Opp Alliance Zone Full Field"),
                  value: isChecked4,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked4 = newBool;
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Passed from Opp Alliance Zone Full Field"),
                  value: isChecked5,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked5 = newBool;
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Crossed Bump"),
                  value: isChecked6,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked6 = newBool;
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Crossed Trench"),
                  value: isChecked7,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked7 = newBool;
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
