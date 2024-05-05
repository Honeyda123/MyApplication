import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/custom_navigation_bar.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> with SingleTickerProviderStateMixin {
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
          title: const Text(
            'My Wallet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.deepOrangeAccent,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "TND 0.000",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: Colors.green
                        ),
                        child: Text('ADD MONEY', style: TextStyle(color: Colors.white),),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: Colors.red
                        ),
                        child: Text('WITHDRAW', style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Wallet Transaction History',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TabBar(
              indicatorColor: Colors.orange,
              controller: tabController,
              tabs: const [
                Tab(icon: Icon(Icons.assignment), text: "Nouveaux"),
                Tab(icon: Icon(Icons.playlist_play), text: "Encours"),
                Tab(icon: Icon(Icons.verified_user), text: "Validé"),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Center(
                      child: SizedBox(
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("No Data Found"),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("No Data Found"),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("No Data Found"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: customNavBar(index: 2),
      ),
    );
  }
}
