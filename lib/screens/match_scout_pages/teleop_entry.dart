import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trioxygen/state.dart';
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
  late bool? isChecked1
  , isChecked2
  , isChecked3
  , isChecked4
  , isChecked5
  , isChecked6
  , isChecked7;
      
  late List<Widget?> _children;
  late bool flip;
  late List<double?> dx;
  late List<double?> dy;
  @override
    void initState() {
    super.initState();

    isChecked1 = context.read<CounterProvider>().isCheckedTeleop[0];
    isChecked2 = context.read<CounterProvider>().isCheckedTeleop[1];
    isChecked3 = context.read<CounterProvider>().isCheckedTeleop[2];
    isChecked4 = context.read<CounterProvider>().isCheckedTeleop[3];
    isChecked5 = context.read<CounterProvider>().isCheckedTeleop[4];
    isChecked6 = context.read<CounterProvider>().isCheckedTeleop[5];
    isChecked7 = context.read<CounterProvider>().isCheckedTeleop[6];

    _children = context.read<CounterProvider>().teleopChildren;
    dx = context.read<CounterProvider>().dxTeleop;
    dy = context.read<CounterProvider>().dyTeleop;
    flip = context.read<CounterProvider>().teleopFlip;

  }

  List<Widget> fixthedisplay(List<Widget?> widgets ){
    if (widgets.isNotEmpty){
      List<Widget> goodWidgets = List.from(widgets);
      dx = List.from(dx);
      dy = List.from(dy);
      _children = goodWidgets;
      context.read<CounterProvider>().updateTeleopChildren(_children, dx, dy);
      return goodWidgets;
    } else {
      List<Widget> goodWidgets = [];
      dx = [];
      dy = [];
      _children = [];
      context.read<CounterProvider>().updateTeleopChildren(_children, dx, dy);
      return goodWidgets;
    }
    }
      @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(child: Column(
      children: [
Padding(padding: const EdgeInsets.all(16.0), child:Column(children: [Text('Shooting Locations'),Padding(padding: const EdgeInsets.all(16.0), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          ElevatedButton(onPressed: () => setState(() {
            try {
            _children.removeAt(_children.length - 1);
            dx.removeAt(dx.length - 1);
            dy.removeAt(dy.length  -1);
            context.read<CounterProvider>().updateTeleopChildren(_children, dx, dy);
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
              context.read<CounterProvider>().updateTeleopChildren(_children, dx, dy);

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
                context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 0);
              });
            },
          ),
          CheckboxListTile(
              title: Text("Pickup from Outpost"),
              value: isChecked2,
              onChanged: (newBool) {
                setState(() {
                  isChecked2 = newBool;
                  context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 1);
                });
              },
            ),      
          CheckboxListTile(
                title: Text("Pickup from Neutral Zone"),
                value: isChecked3,
                onChanged: (newBool) {
                  setState(() {
                    isChecked3 = newBool;
                    context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 2);
                  });
                },
              ),
          CheckboxListTile(
                  title: Text("Passed from Opp Alliance Zone Full Field"),
                  value: isChecked4,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked4 = newBool;
                      context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 3);
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Passed from Opp Alliance Zone Full Field"),
                  value: isChecked5,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked5 = newBool;
                      context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 4);
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Crossed Bump"),
                  value: isChecked6,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked6 = newBool;
                      context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 5);
                    });
                  },
                ),
          CheckboxListTile(
                  title: Text("Crossed Trench"),
                  value: isChecked7,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked7 = newBool;
                      context.read<CounterProvider>().updateIsCheckedTeleop(newBool, 6);
                    });
                  },
                ),
          ],
          ),
        ),
      ],
    )));
  }
  }

   
