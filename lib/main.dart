import 'package:firstproject/global/config/api/request.dart';
import 'package:firstproject/onBoarding.dart';
import 'package:firstproject/views/authentication/access_token_controller.dart';
import 'package:firstproject/views/mybookings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'views/Driver.dart';
import 'views/authentication/signIn.dart';
import 'views/authentication/signUp.dart';
import 'package:flutter/services.dart';
import 'package:animate_do/animate_do.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  //options: DefaultFirebaseOptions.currentPlatform,
  // .then((value)=>Get.put(AuthenticationRepository ()));*/
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  // Current Screen Content
  late Widget currentPage = const HomePage();

  getToken() {
    AccessTokenController().getTokenFromLocal().then((value) => {
          setState(() {
            HttpRequest.tokenFromLocalStorage = value;
            // refreshTour(),
          })
        });
  }

  @override
  void initState() {
    getToken();
    print(
        'HttpRequest.tokenFromLocalStorage: ${HttpRequest.tokenFromLocalStorage}');
    HttpRequest.tokenFromLocalStorage == ''
        ? currentPage = const MyBookings()
        : currentPage = const HomePage();

    // AccessTokenController().checkAccessTokenValidity().then((value) => setState(
    //     () => value
    //         ? currentPage = const MyBookings()
    //         : currentPage = const HomePage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    /*=>ChangeNotifierProvider(

      create: (context)=>GoogleSinINProvider(),*/
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Futura',
        ),
        home: currentPage
        //DefaultTabController(length:4,child:home2(),),

        );
  }
}
