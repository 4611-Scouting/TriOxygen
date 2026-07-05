
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:trioxygen/count.dart' show CounterProvider;
class TeamEntry extends StatefulWidget {
  const TeamEntry({super.key});

  @override
  State<StatefulWidget> createState() {
    return TeamEntryState();
  }
}
enum MatchLevel {Practice, Quals, Playoffs}

class SingleChoiceMatchLevel extends StatefulWidget {
  const SingleChoiceMatchLevel({super.key});

  @override
  State<SingleChoiceMatchLevel> createState() => _SingleChoiceMatchLevelState();
}

class _SingleChoiceMatchLevelState extends State<SingleChoiceMatchLevel> {
  MatchLevel MatchLevelView = MatchLevel.Practice;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<MatchLevel>(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        foregroundColor: Colors.white,
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.green,
      ),

      segments: const <ButtonSegment<MatchLevel>>[
        ButtonSegment<MatchLevel>(
          value: MatchLevel.Practice,
          label: Text('Practice'),
        ),
        ButtonSegment<MatchLevel>(
          value: MatchLevel.Quals,
          label: Text('Quals'),
        ),
        ButtonSegment<MatchLevel>(
          value: MatchLevel.Playoffs,
          label: Text('Playoffs'),
        ),
      ],
      selected: <MatchLevel>{MatchLevelView},
      onSelectionChanged: (Set<MatchLevel> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          MatchLevelView = newSelection.first;
        });
      },
    );
  }
}
enum RobotPosition { Red1, Red2, Red3, Blue1, Blue2, Blue3}

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  RobotPosition RobotPositionView = .Red1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [SegmentedButton<RobotPosition>(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        foregroundColor: Colors.white,
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.green,
      ),

      segments: const <ButtonSegment<RobotPosition>>[
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Red1,
          label: Text('Red1'),
        ),
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Red2,
          label: Text('Red2'),
        ),
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Red3,
          label: Text('Red3'),
        ),
      ],
      selected: <RobotPosition>{RobotPositionView},
      onSelectionChanged: (Set<RobotPosition> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          RobotPositionView = newSelection.first;
        });
      },
    ), SegmentedButton<RobotPosition>(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 34, 0, 255),
        foregroundColor: Colors.white,
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.green,
      ),

      segments: const <ButtonSegment<RobotPosition>>[
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Blue1,
          label: Text('Blue1'),
        ),
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Blue2,
          label: Text('Blue2'),
        ),
        ButtonSegment<RobotPosition>(
          value: RobotPosition.Blue3,
          label: Text('Blue3'),
        ),
      ],
      selected: <RobotPosition>{RobotPositionView},
      onSelectionChanged: (Set<RobotPosition> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          RobotPositionView = newSelection.first;
        });
      },
    )]);
  }
}
class TeamEntryState extends State<TeamEntry> {
    late TextEditingController controller;
    void onTapDown(BuildContext context, TapDownDetails details) {
    final Offset localOffset = details.localPosition;
    dx = localOffset.dx;
    dy = localOffset.dy; 
    setState(() {
      _children = (Positioned(left: dx , top: dy, child: Container(width: 10, height: 10, decoration: const BoxDecoration(
            color: Colors.red, shape: BoxShape.circle),),));
    });
  }


  static var matchController = TextEditingController();
  static var teamNumberController = TextEditingController();
  Widget? _children;
  bool flip = false;
  double? dx;
  double? dy;
  @override
  void initState() {
    super.initState();
    final counter = context.read<CounterProvider>();
    controller = TextEditingController();
    controller.text = counter.count;
    controller.addListener(() {
        Provider.of<CounterProvider>(context, listen: false)
            .updateSomeValue(controller.text);
    });
  }
  @override
  Widget build(BuildContext context) {
      //controller.text = counter.count;
    return SafeArea(child:SingleChildScrollView(child: Stack(children: [Center(child: Column(
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: Column(children: [Text('Match Level'),
        SingleChoiceMatchLevel(),],)),
        Padding(padding: const EdgeInsets.all(16.0), child: SizedBox(height: 50, width: 400, child:
        TextFormField(
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter your name',
              label: Text('Name'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        ),
        ),),
        Padding(padding: const EdgeInsets.all(16.0), child:SizedBox(height: 50, width: 400, child:
        TextFormField(
          keyboardType: TextInputType.number, // Opens the numeric keyboard
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: matchController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Match Number',
              label: Text('Match Number'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        ),
        ), ),
      Padding(padding: const EdgeInsets.all(16.0), child:  SizedBox(height: 50, width: 400, child:
        TextFormField(
        keyboardType: TextInputType.number, // Opens the numeric keyboard
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: teamNumberController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Team Number',
              label: Text('Team Number'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        ),
        ),),
        Padding(padding: const EdgeInsets.all(16.0), child: Column(children: [Text('Robot Position'),
        SingleChoice(),],), ),
      Padding(padding: const EdgeInsets.all(16.0), child:Column(children: [Text('Auton Starting Position'),Padding(padding: const EdgeInsets.all(16.0), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          ElevatedButton(onPressed: () => setState(() {
            _children = null;
          }), child: Text('Delete')),
          ElevatedButton(onPressed: () => setState(() {
            flip = !flip;
            if (dx != null){
              dx = 200-dx!;
              _children = (Positioned(left: dx , top: dy, child: Container(width: 10, height: 10, decoration: const BoxDecoration(
            color: Colors.red, shape: BoxShape.circle),),));
            } 

          }), child: Text('Flip Image'))
        ],)),SizedBox(width: 200, height: 200, child: GestureDetector(
        onTapDown: (details) =>  onTapDown(context, details),
        child: Stack(children: [Transform.flip(flipX: flip, child: Image.asset("assets/images/FieldImage.png", fit: BoxFit.cover,)), ?_children])
      ),
      )]
      )
      ),
      ],
    ))])));
  }
}

