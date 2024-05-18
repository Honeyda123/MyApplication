import 'package:flutter/material.dart';

import '../components/custom_navigation_bar.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text("My Bookings"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.orange,
              controller: tabController,
              tabs: const [
                Tab(icon: Icon(Icons.assignment), text: "Nouveaux"),
                Tab(icon: Icon(Icons.playlist_play), text: "Encours"),
                Tab(icon: Icon(Icons.verified_user), text: "Validé"),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(10),
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: [
                    const Text(
                      "Nouveaux missions ",
                      textAlign: TextAlign.left,
                    ),
                    MaterialButton(
                      onPressed: () {
                        tabController.animateTo(1);
                      },
                      child: const Text("go to en cours"),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text("Missions En cours"),
                    MaterialButton(
                      onPressed: () {
                        tabController.animateTo(2);
                      },
                      child: const Text("go to valid"),
                    )
                  ],
                ),
                const Text("Missions terminé"),
              ],
            ),
          ),
          bottomNavigationBar: customNavBar(
            index: 1,
          )),
    );
  }
}
