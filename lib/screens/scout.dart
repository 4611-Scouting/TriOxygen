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
              Icon(Icons.directions_transit),
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