import 'package:flutter/material.dart';

class EndgameEntry extends StatefulWidget {
  const EndgameEntry({super.key});

  @override
  State<EndgameEntry> createState() => _EndgameEntryState();
}

enum ClimbLevel { Level1, Level2, Level3, Attempted, NotAttempted }

class _EndgameEntryState extends State<EndgameEntry> {
  ClimbLevel climbLevelView = ClimbLevel.Level1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, // Keeps the button row from expanding to full screen width
        children: [
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
        ],
      ),
    );
  }
}
