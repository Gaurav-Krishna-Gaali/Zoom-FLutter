import 'package:flutter/material.dart';
import 'package:zoom_flutter/resources/auth_methods.dart';
import 'package:zoom_flutter/screens/home_screen.dart';
import 'package:zoom_flutter/screens/login_screen.dart';
import 'package:zoom_flutter/screens/video_call_screen.dart';
import 'package:zoom_flutter/util/colors.dart';
import 'package:firebase_core/firebase_core.dart'
;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZOOM CLONE ',
      theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor:backgroundColor ,
      ),
      routes:{  
        '/login':(context)=>LoginScreen(),
        '/home':(context)=> const HomeScreen(),
        '/video-call':(context)=> const VideoCallScreen(),
        }, 
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return LoginScreen();
        },
      ),
    );
  }
}



// https://youtu.be/sMA1dKbv33Y?t=4901