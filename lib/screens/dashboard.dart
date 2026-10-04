import 'package:flutter/material.dart';
import 'package:trioxygen/screens/drawer.dart' show DrawerMe;
import 'package:trioxygen/screens/match_scout.dart' show MatchScout;
import 'package:trioxygen/screens/pit_scout.dart' show PitScout;
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/settings.dart' show Settings;
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';
class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'),
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: Center(child: Text('Dashboard')),
      drawer: Drawer(child: DrawerMe()
        ),
      );
  }
}