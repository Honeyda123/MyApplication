
import 'package:firstproject/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'Driver.dart';
import 'signIn.dart';
import 'signUp.dart';
import 'package:flutter/services.dart';
import 'package:animate_do/animate_do.dart';
Future<void> main() async {

 WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
    //options: DefaultFirebaseOptions.currentPlatform,
     // .then((value)=>Get.put(AuthenticationRepository ()));*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    /*=>ChangeNotifierProvider(

      create: (context)=>GoogleSinINProvider(),*/
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          fontFamily:'Futura',

        ),
        home:
        const HomePage()
      //DefaultTabController(length:4,child:home2(),),

    );

  }
}


