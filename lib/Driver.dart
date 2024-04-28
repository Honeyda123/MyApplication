import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
/// [SBottomNavigationBar] class describe the [BottomNavigationBar] widget details code
/// ***************************************************************
class Driver extends StatefulWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  State<Driver> createState() => _SBottomNavigationBarState();
}

class _SBottomNavigationBarState extends State<Driver> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
         style: TextStyle(color: Colors.black,), // Couleur du titre
        ),
        backgroundColor: Colors.deepOrangeAccent, // Couleur transparente pour un aspect sans bordure
        elevation: 20.00, // Supprimer l'ombre de l'appBar
        centerTitle: true,
      ),

      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(33.892166, 9.561555499999997),
          initialZoom: 5.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),

        ],
      ),

        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'My Bookings',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'My Wallet',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


























/*import 'package:flutter/material.dart';
//import 'package:animations/animations.dart';

class Driver extends StatefulWidget{
  const Driver({super.key});

  @override
  State<Driver> createState()=>_MyAppState();
}

class _MyAppState extends State<Driver> with SingleTickerProviderStateMixin {
  int selectedindex=0;
  TabController? tabController ;

  @override
  void initState() {
    tabController=TabController(length: 3, vsync: this);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          appBar:AppBar(backgroundColor: Colors.orangeAccent,
              title:const Text("Home"),
              centerTitle: true,
              bottom:TabBar(
                  indicatorColor:Colors.orange,
                  controller:tabController,
                  tabs:const [
                    Tab(
                      icon: Icon(Icons.assignment),
                      child: Text("Nouveaux"),),
                    Tab(
                      icon: Icon(Icons.playlist_play),
                      child: Text("Encours"),),
                    Tab(
                      icon: Icon(Icons.verified_user),
                      child: Text("Validé"),),
                  ]) ),
          body:Container(
              padding: const EdgeInsets.all(10),
              child:  TabBarView(controller: tabController, children:[
                Column(
                  children:[
                    const Text("Nouveaux missions ",textAlign: TextAlign.left,),
                    MaterialButton(
                      onPressed:() {
                        tabController!.animateTo(1);
                      },
                      child: const Text("go to en cours"),
                    )

                  ],

                ),
                Column(
                  children:[
                    const Text ("Missions En cours"),
                    MaterialButton(
                      onPressed:(){
                        tabController!.animateTo(2);
                      },
                      child: const Text("go to valid"),
                    )
                  ],
                ),
                const Text ("Missions terminé"),
              ]
              )
          ),
        ));
  }
}*/