import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/homepage.dart';
import 'package:slide_drawer/slide_drawer.dart';

class sliderhome extends StatefulWidget {
  const sliderhome({Key? key}) : super(key: key);

  @override
  _sliderhomeState createState() => _sliderhomeState();
}

class _sliderhomeState extends State<sliderhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: SlideDrawer(
          headDrawer: Container(
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 40,
                    child: Container(
                      height: 80,
                      width: 100,
                      child: CircleAvatar(backgroundImage: AssetImage('images/profile.png',),),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 100,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SHAKIL SHAHARIA',style: TextStyle(
                              fontSize: 20, color: Colors.white70,
                              fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 3,
                          ),
                          Text('shakilshaharia3@gmail.com',style: TextStyle(
                              color: Colors.white70,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  )

                ],
              )
          ),
          items: [
            MenuItem('Profile', icon: Icons.person_outline, onTap: (){}),
            MenuItem('My Favourite', icon: Icons.favorite_border, onTap: (){}),
            MenuItem('Hollywood Movies', icon: Icons.slow_motion_video,  onTap: (){}),
            MenuItem('Bollywood Movies', icon: Icons.slow_motion_video, onTap: (){}),
            MenuItem('Tv Shows', icon: Icons.slideshow, onTap: (){}),
            MenuItem('Setting', icon: Icons.settings, onTap: (){}),
            MenuItem('Log Out', icon: Icons.logout, onTap: (){
              SystemNavigator.pop();
            }),
          ],
          brightness: Brightness.dark,
          backgroundGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [
              Color(0xFFA8A8A8,),
              Color(0xFF000000),
            ],
          ),
          child: homepage()),
    );
  }
}
