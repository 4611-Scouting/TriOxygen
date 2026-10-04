import 'package:flutter/material.dart';
import 'package:trioxygen/screens/drawer.dart' show DrawerMe;
import 'package:trioxygen/screens/match_scout.dart' show MatchScout;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/settings.dart' show Settings;
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';
class PitScout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PitScout'),
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: Center(child: Text('PitScout')),
      drawer: Drawer(child: DrawerMe()
        ),
      );
  }
}