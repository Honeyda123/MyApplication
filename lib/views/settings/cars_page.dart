import 'package:flutter/material.dart';
import 'add_car_page.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Spacer(),
              const Text(
                'Cars',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddCarPage()),
                    );
                  },
                  child: const Text(
                    'ADD',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 20.00,
          centerTitle: true,
        ),
        body: Column(
            children: [
              CarCard(
                  title: 'Iveco 233',
                  delete: () {  },
                  image: 'assets/images/images.jpg',
                  approved: 'Yes',
                  active: 'No',
                  type: 'Plateau 10T',
                  number: '221tu555',
                  otherInfos: ''
              ),
            ],
        ));
  }
}

class CarCard extends StatelessWidget {
  final String title;
  final void Function()? delete;
  final String image;
  final String approved;
  final String active;
  final String type;
  final String number;
  final String otherInfos;

  CarCard({
    required this.title,
    required this.delete,
    required this.image,
    required this.approved,
    required this.active,
    required this.type,
    required this.number,
    required this.otherInfos,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: delete,
                        icon: const Icon(Icons.delete, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        flex: 2,
                        child: Image.asset(
                          image,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            color: Colors.lightBlueAccent.shade100,
                            shadowColor: Colors.white60,
                            child: ListTile(
                              title: const Text('Approved'),
                              subtitle: Text(approved, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ),
                          ),
                          Card(
                            color: Colors.lightBlueAccent.shade100,
                            shadowColor: Colors.white60,
                            child: ListTile(
                              title: const Text('Active'),
                              subtitle: Text(active, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  shadowColor: Colors.grey,
                  child: ListTile(
                    title: const Text('Vehicle Type'),
                    subtitle: Text(type, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    leading: const Icon(Icons.directions_car_sharp, color: Colors.deepOrangeAccent,),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  shadowColor: Colors.grey,
                  child: ListTile(
                    title: const Text('Vehicle Registration Number'),
                    subtitle: Text(number, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    leading: const Icon(Icons.numbers, color: Colors.deepOrangeAccent,),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  shadowColor: Colors.grey,
                  child:
                  ListTile(
                    title: const Text('Other Vehicle Or Driver Info'),
                    subtitle: Text(otherInfos, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    leading: const Icon(Icons.info, color: Colors.deepOrangeAccent,),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

