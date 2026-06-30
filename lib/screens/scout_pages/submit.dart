import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Submit extends StatefulWidget {
  const Submit({super.key});

  @override
  State<Submit> createState() => _SubmitState();
}
enum DriverSkill { nE, a, vE, nO,}
enum DefenseSkill { bA, a, g, e,dnpd}
enum SpeedSkill {one,two,three,four,five}
class _SubmitState extends State<Submit> {
   DriverSkill DriverSkillView = DriverSkill.nE;
   DefenseSkill DefenseSkillView = DefenseSkill.dnpd;
   SpeedSkill SpeedSkillView = SpeedSkill.three;

   bool? isChecked1 = false,
   isChecked2 = false,
   isChecked3 = false,
   isChecked4 = false,
   isChecked5 = false;

  static var beachedController = TextEditingController();
  static var autoCommentsController = TextEditingController();
  static var commentsController = TextEditingController();
  static var fuelController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //print('yah');
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
              });
            },
          ),
                  CheckboxListTile(
              title: Text("Died/Immobillzed"),
              value: isChecked1,
              onChanged: (newBool) {
                setState(() {
                  isChecked1 = newBool;
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
                });
              },
            ),
          CheckboxListTile(
              title: Text("Make good alliance partner?"),
              value: isChecked3,
              onChanged: (newBool) {
                setState(() {
                  isChecked3 = newBool;
                });
              },
            ),
          CheckboxListTile(
              title: Text("Was Defended"),
              value: isChecked4,
              onChanged: (newBool) {
                setState(() {
                  isChecked4 = newBool;
                });
              },
            ),
          CheckboxListTile(
              title: Text("Excessive Penalties"),
              value: isChecked5,
              onChanged: (newBool) {
                setState(() {
                  isChecked5 = newBool;
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
          ), onPressed: () {
            print('submitted');
          }, child: const Text("Submit"))),                       
        ],),))));
    
  }
}