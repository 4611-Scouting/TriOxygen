import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trioxygen/state.dart' show CounterProvider, ClimbLevel;
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

    _elapsedTime = context.read<CounterProvider>().elapsedTimeEndgame;
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
      context.read<CounterProvider>().updateEndgameTimer(_elapsedTime);
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
class EndgameEntry extends StatefulWidget {
  const EndgameEntry({super.key});

  @override
  State<EndgameEntry> createState() => _EndgameEntryState();
}


class _EndgameEntryState extends State<EndgameEntry> {
  late ClimbLevel climbLevelView; 
  @override
    void initState() {
    super.initState();
    climbLevelView = context.read<CounterProvider>().endgameClimbLevel;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, // Keeps the button row from expanding to full screen width
        children: [
          const Text("Endgame"),
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
                context.read<CounterProvider>().updateEndgameClimb(newSelection.first);
              });
            },
          ),
          Padding(padding: const EdgeInsets.all(16.0), child: Text('Climb Timer', style: TextStyle(fontSize: 20),)),
         MyStopwatch(),

        ],
      ),
    ));
  }
}
