import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:trioxygen/state.dart';
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:trioxygen/drift.dart';
import 'package:drift/drift.dart';
class Submit extends StatefulWidget {
  final AppDatabase database;
  const Submit({super.key, required this.database});

  @override
  State<Submit> createState() => _SubmitState();
}
class _SubmitState extends State<Submit> {

  
   bool? isChecked1,
   isChecked2,
   isChecked3,
   isChecked4,
   isChecked5;

   late DriverSkill DriverSkillView;
   late DefenseSkill DefenseSkillView;
   late SpeedSkill SpeedSkillView;
  late TextEditingController beachedController, autoCommentsController, commentsController, fuelController;   @override
  void initState() {
    super.initState();
    final counter = context.read<CounterProvider>();
    
    isChecked1 = context.read<CounterProvider>().isCheckedSubmit[0];
    isChecked2 = context.read<CounterProvider>().isCheckedSubmit[1];
    isChecked3 = context.read<CounterProvider>().isCheckedSubmit[2];
    isChecked4 = context.read<CounterProvider>().isCheckedSubmit[3];
    isChecked5 = context.read<CounterProvider>().isCheckedSubmit[4];

    beachedController = TextEditingController();
    autoCommentsController = TextEditingController();
    commentsController = TextEditingController();
    fuelController = TextEditingController();

    beachedController.text = counter.beached;
    autoCommentsController.text = counter.autoComments;
    commentsController.text = counter.comments;
    fuelController.text = counter.fuel;

    beachedController.addListener(() {
        Provider.of<CounterProvider>(context, listen: false)
            .updateBeached(beachedController.text);
    });
    autoCommentsController.addListener(() {
        Provider.of<CounterProvider>(context, listen: false)
            .updateAutoComments(autoCommentsController.text);
    });
    fuelController.addListener(() {
        Provider.of<CounterProvider>(context, listen: false)
            .updateFuel(fuelController.text);
    });
    commentsController.addListener(() {
        Provider.of<CounterProvider>(context, listen: false)
            .updateComments(commentsController.text);
    });
    DriverSkillView = counter.driverSkill;
    DefenseSkillView = counter.defenseSkill;
    SpeedSkillView = counter.speedSkill;
  }



  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterProvider>();
    //print('yah');
      var uuid = Uuid();
        return SingleChildScrollView(child: Center(child: SafeArea(child: Padding(
      padding: const EdgeInsets.all(20.0), child: Column(children: [
          Text('Driver Skill', style: TextStyle(fontSize: 20),),
          SegmentedButton<DriverSkill>(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              foregroundColor: Colors.white,
              selectedForegroundColor: Colors.white,
              selectedBackgroundColor: Colors.green,
            ),
            segments: const <ButtonSegment<DriverSkill>>[
              ButtonSegment<DriverSkill>(
                value: DriverSkill.nE,
                label: Text('Not Effective'),
              ),
              ButtonSegment<DriverSkill>(
                value: DriverSkill.a,
                label: Text('Average'),
              ),
              ButtonSegment<DriverSkill>(
                value: DriverSkill.vE,
                label: Text('Very Effective'),
              ),
              ButtonSegment<DriverSkill>(
                value: DriverSkill.nO,
                label: Text('Not Observed'),
              ),
            ],
            selected: <DriverSkill>{DriverSkillView},
            onSelectionChanged: (Set<DriverSkill> newSelection) {
              setState(() {
                DriverSkillView = newSelection.first;
                counter.updateDriverSkill(newSelection.first);
              });
            },
          ),
          // spacey
          Text('Defense Rating', style: TextStyle(fontSize: 20),),
          SegmentedButton<DefenseSkill>(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              foregroundColor: Colors.white,
              selectedForegroundColor: Colors.white,
              selectedBackgroundColor: Colors.green,
            ),
            segments: const <ButtonSegment<DefenseSkill>>[
              ButtonSegment<DefenseSkill>(
                value: DefenseSkill.bA,
                label: Text('Below Average'),
              ),
              ButtonSegment<DefenseSkill>(
                value: DefenseSkill.a,
                label: Text('Average'),
              ),
              ButtonSegment<DefenseSkill>(
                value: DefenseSkill.g,
                label: Text('Good'),
              ),
              ButtonSegment<DefenseSkill>(
                value: DefenseSkill.e,
                label: Text('Excellent'),
              ),
              ButtonSegment<DefenseSkill>(
                value: DefenseSkill.dnpd,
                label: Text('Did not play defense'),
              ),
            ],
            selected: <DefenseSkill>{DefenseSkillView},
            onSelectionChanged: (Set<DefenseSkill> newSelection) {
              setState(() {
                DefenseSkillView = newSelection.first;
                counter.updateDefenseSkill(newSelection.first);
              });
            },
          ),
          // spacey
          Text('Speed Rating', style: TextStyle(fontSize: 20),),
          SegmentedButton<SpeedSkill>(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              foregroundColor: Colors.white,
              selectedForegroundColor: Colors.white,
              selectedBackgroundColor: Colors.green,
            ),
            segments: const <ButtonSegment<SpeedSkill>>[
              ButtonSegment<SpeedSkill>(
                value: SpeedSkill.one,
                label: Text('1'),
              ),
              ButtonSegment<SpeedSkill>(
                value: SpeedSkill.two,
                label: Text('2'),
              ),
              ButtonSegment<SpeedSkill>(
                value: SpeedSkill.three,
                label: Text('3'),
              ),
              ButtonSegment<SpeedSkill>(
                value: SpeedSkill.four,
                label: Text('4'),
              ),
              ButtonSegment<SpeedSkill>(
                value: SpeedSkill.five,
                label: Text('5'),
              ),
            ],
            selected: <SpeedSkill>{SpeedSkillView},
            onSelectionChanged: (Set<SpeedSkill> newSelection) {
              setState(() {
                SpeedSkillView = newSelection.first;
                counter.updateSpeedSkill(newSelection.first);
              });
            },
          ),
                  CheckboxListTile(
              title: Text("Died/Immobillzed"),
              value: isChecked1,
              onChanged: (newBool) {
                setState(() {
                  isChecked1 = newBool;
                  context.read<CounterProvider>().updateIsCheckedSubmit(newBool, 0);
                });
              },
            ),
          TextFormField(
          keyboardType: TextInputType.number, // Opens the numeric keyboard
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: beachedController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Beached Count',
              label: Text('Beached Count'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        ),
          CheckboxListTile(
              title: Text("Tippy"),
              value: isChecked2,
              onChanged: (newBool) {
                setState(() {
                  isChecked2 = newBool;
                  context.read<CounterProvider>().updateIsCheckedSubmit(newBool, 1);
                });
              },
            ),
          CheckboxListTile(
              title: Text("Make good alliance partner?"),
              value: isChecked3,
              onChanged: (newBool) {
                setState(() {
                  isChecked3 = newBool;
                  context.read<CounterProvider>().updateIsCheckedSubmit(newBool, 2);
                });
              },
            ),
          CheckboxListTile(
              title: Text("Was Defended"),
              value: isChecked4,
              onChanged: (newBool) {
                setState(() {
                  isChecked4 = newBool;
                  context.read<CounterProvider>().updateIsCheckedSubmit(newBool, 3);
                });
              },
            ),
          CheckboxListTile(
              title: Text("Excessive Penalties"),
              value: isChecked5,
              onChanged: (newBool) {
                setState(() {
                  isChecked5 = newBool;
                  context.read<CounterProvider>().updateIsCheckedSubmit(newBool, 4);
                });
              },
            ),
          Padding(padding: EdgeInsetsGeometry.all(16), child: 
          TextFormField(
          keyboardType: TextInputType.number, // Opens the numeric keyboard
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: fuelController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Fuel Percentage',
              label: Text('Fuel Percentange'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        )),
        Padding(padding: EdgeInsets.all(16.0), child:
          TextFormField(
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: commentsController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Comments',
              label: Text('Comments'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        )),
        Padding(padding: EdgeInsetsGeometry.all(16), child: 
          TextFormField(
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: autoCommentsController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Auto Comments',
              label: Text('Auto Comments'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        )),
        Padding(padding: EdgeInsetsGeometry.all(16), child: TextButton(style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ), onPressed: () async {
            await widget.database.into(widget.database.scoutReports).insert(
          ScoutReportsCompanion.insert(
          username: counter.userName,
          uuid: uuid.v7(),
          matchNumber: int.parse(counter.matchNumber),
          teamNumber: int.parse(counter.teamNumber),
          flip: Value(counter.flip),
          RobotPosition: counter.robotPosition.name,
          MatchLevel: counter.matchLevel.name,
          dx: Value(counter.dx),
          dy: Value(counter.dy),
          elapsedTimeAuton: Value(counter.elapsedTimeAuton),
          autonClimb: counter.autonClimb.name,
          
          



          ),
);
          }, child: const Text("Submit"))),                       
        ],),))));
    
  }
}