import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trioxygen/state.dart' show CounterProvider, SingingCharacter;
// Source - https://stackoverflow.com/a/77882280
// Posted by Mehran Ullah
// Retrieved 2026-06-30, License - CC BY-SA 4.0

class MyStopwatch extends StatefulWidget {
  const MyStopwatch({Key? key}) : super(key: key);

  @override
  State<MyStopwatch> createState() => _MyStopwatchState();
}

class _MyStopwatchState extends State<MyStopwatch> {
  final Stopwatch _stopwatch = Stopwatch();
  late Duration _elapsedTime;
  late String _elapsedTimeString;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    _elapsedTime =  context.read<CounterProvider>().elapsedTimeAuton;
    _elapsedTimeString = _formatElapsedTime(_elapsedTime);

    // Create a timer that runs a callback every 100 milliseconds to update UI
    timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        // Update elapsed time only if the stopwatch is running
        if (_stopwatch.isRunning) {
          _updateElapsedTime();
        }
      });
    });
  }

  // Start/Stop button callback
  void _startStopwatch() {
    if (!_stopwatch.isRunning) {
      // Start the stopwatch and update elapsed time
      _stopwatch.start();
      _updateElapsedTime();
    } else {
      // Stop the stopwatch
      _stopwatch.stop();
    }
  }

  // Reset button callback
  void _resetStopwatch() {
    // Reset the stopwatch to zero and update elapsed time
    _stopwatch.reset();
    _updateElapsedTime();
  }

  // Update elapsed time and formatted time string
  void _updateElapsedTime() {
    setState(() {
      _elapsedTime = _stopwatch.elapsed;
       context.read<CounterProvider>().updateAutonTimer(_elapsedTime);
      _elapsedTimeString = _formatElapsedTime(_elapsedTime);
    });
  }

  // Format a Duration into a string (MM:SS.SS)
  String _formatElapsedTime(Duration time) {
    return '${time.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(time.inSeconds.remainder(60)).toString().padLeft(2, '0')}.${(time.inMilliseconds % 1000 ~/ 100).toString()}';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display elapsed time
            Text(
              _elapsedTimeString,
              style: const TextStyle(fontSize: 40.0),
            ),
            const SizedBox(height: 20.0),
            // Start/Stop and Reset buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _startStopwatch,
                  child: Text(_stopwatch.isRunning ? 'Stop' : 'Start'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _resetStopwatch,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        );
  }
}


class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character;
  @override
    void initState() {
    super.initState();
    _character = context.read<CounterProvider>().autonClimb;
    }
  @override
  Widget build(BuildContext context) {
    return RadioGroup<SingingCharacter>(
      groupValue: _character,
      onChanged: (SingingCharacter? value) {
        setState(() {
          _character = value;
          context.read<CounterProvider>().updateAutonClimbSelect(value);
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
  late bool? isChecked1
  , isChecked2
  , isChecked3
  , isChecked4;
    
  late List<Widget?> _children;
  late bool flip;
  late List<double?> dx;
  late List<double?> dy;
  List<Widget> fixthedisplay(List<Widget?> widgets ){
    if (widgets.isNotEmpty){
      List<Widget> goodWidgets = List.from(widgets);
      dx = List.from(dx);
      dy = List.from(dy);
      _children = goodWidgets;
      context.read<CounterProvider>().updateAutonChildren(_children, dx, dy);
      return goodWidgets;
    } else {
      List<Widget> goodWidgets = [];
      dx = [];
      dy = [];
      _children = [];
      context.read<CounterProvider>().updateAutonChildren(_children, dx, dy);
      return goodWidgets;
    }
  }
  void initState() {
    super.initState();
    isChecked1 = context.read<CounterProvider>().isCheckedAuton[0];
    isChecked2 = context.read<CounterProvider>().isCheckedAuton[1];
    isChecked3 = context.read<CounterProvider>().isCheckedAuton[2];
    isChecked4 = context.read<CounterProvider>().isCheckedAuton[3];

    _children = context.read<CounterProvider>().autonChildren;
    dx = context.read<CounterProvider>().dxAuton;
    dy = context.read<CounterProvider>().dyAuton;
    flip = context.read<CounterProvider>().autonFlip;
  }
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(child: Column(
      children: [
      Padding(padding: const EdgeInsets.all(16.0), child:Column(children: [Text('Auto Shooting Locations'),Padding(padding: const EdgeInsets.all(16.0), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          ElevatedButton(onPressed: () => setState(() {
            try {
            _children.removeAt(_children.length - 1);
            dx.removeAt(dx.length - 1);
            dy.removeAt(dy.length  -1);
            context.read<CounterProvider>().updateAutonChildren(_children, dx, dy);
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
              context.read<CounterProvider>().updateAutonChildren(_children, dx, dy);

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
         Text('Climb Timer', style: TextStyle(fontSize: 20),),
         MyStopwatch(),
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
                context.read<CounterProvider>().updateAutonChecked(newBool, 0);
              });
            },
          ),
          CheckboxListTile(
              title: Text("Pickup from Outpost"),
              value: isChecked2,
              onChanged: (newBool) {
                setState(() {
                  isChecked2 = newBool;
                  context.read<CounterProvider>().updateAutonChecked(newBool, 1);
                });
              },
            ),      
          CheckboxListTile(
                title: Text("Pickup from Neutral Zone"),
                value: isChecked3,
                onChanged: (newBool) {
                  setState(() {
                    isChecked3 = newBool;
                    context.read<CounterProvider>().updateAutonChecked(newBool, 2);
                  });
                },
              ),
          CheckboxListTile(
                  title: Text("Crossed Midline"),
                  value: isChecked4,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked4 = newBool;
                      context.read<CounterProvider>().updateAutonChecked(newBool, 3);
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
