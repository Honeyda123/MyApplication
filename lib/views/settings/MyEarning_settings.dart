import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyEarnings extends StatefulWidget {
  const MyEarnings({super.key});

  @override
  State<MyEarnings> createState() => _MyEarningsState();
}

class _MyEarningsState extends State<MyEarnings> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Earnings',
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
        children: [
          Card(
            child: Container(
              width: double.maxFinite,
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Booking Count'),
                              Text('2', style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Today'),
                              Text('TND0.000', style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('This Month'),
                              Text('TND0.000', style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Total Earnings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                        Text('TND167.260', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          TabBar(
            indicatorColor: Colors.orange,
            controller: tabController,
            tabs: const [
              Tab(text: "DAILY"),
              Tab(text: "THIS MONTH"),
              Tab(text: "THIS YEAR"),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: TabBarView(
                controller: tabController,
                children: [
                  const Center(
                    child: SizedBox(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("No Data Available"),
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: SizedBox(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("No Data Available"),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      ThisYearWidgetCard(
                        price: '50.000',
                        date: '26 Apr 2024 15:01',
                        currentlocation: '015 Rue de Mauritanie, Sfax, Tunisia',
                        destination: '3027 Rue Ennassiria, Sfax, Tunisia',
                        icon: const Icon(Icons.credit_card_sharp),
                      ),
                      ThisYearWidgetCard(
                        price: '126.260',
                        date: '26 Apr 2024 14:49',
                        currentlocation: '16 R.H. Maazoun, Sfax, Tunisia',
                        destination: 'QP2W+FM Sfax, Tunisia',
                        icon: const Icon(Icons.money_sharp),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ThisYearWidgetCard extends StatelessWidget {
  String price;
  String date;
  String currentlocation;
  String destination;
  Icon icon;
  ThisYearWidgetCard({super.key, required this.price, required this.date, required this.destination, required this.currentlocation, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.maxFinite,
        height: 120,
        decoration: const BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(date, style: const TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: icon,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('TND$price', style: const TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on, color: Colors.green,),
                  Text(currentlocation),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on, color: Colors.orange,),
                  Text(destination),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
