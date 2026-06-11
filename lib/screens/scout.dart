import 'package:flutter/material.dart';
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/settings.dart' show Settings;

// Source - https://stackoverflow.com/a/77998235
// Posted by A-E, modified by community. See post 'Timeline' for change history
// Retrieved 2026-06-09, License - CC BY-SA 4.0

class FirstPage extends StatelessWidget {

  static var controller = TextEditingController();
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('First Page')
        ),
        SizedBox(height: 200, width: 400, child:
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
        ),
      Image.asset("assets/images/FieldImage.png"),
      ],
    );
  }
}


class AutonPage extends StatefulWidget {
  static var controller = TextEditingController();
  const AutonPage({super.key});

  @override
  State<AutonPage> createState() => _AutonPageState();
}

class _AutonPageState extends State<AutonPage> {
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
        Image.asset("assets/images/FieldImage.png")
        ),
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
              )
      ]
    );
      
  }
}

class Scout extends StatelessWidget {
  const Scout({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scout'),
    
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              FirstPage(),
              AutonPage(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    ),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [ListTile(
          title: const Text("Scout"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Scout(),
              ),
            );

          },
        ),
        ListTile(
          title: const Text("Dashboard"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Dashboard(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("DataView"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const DataView(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Settings"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Settings(),
              ),
            );

          },
        )],
        )
        ),
      );
  }
}