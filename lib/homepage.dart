

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/moviepage.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:slide_drawer/slide_drawer.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}
final List<String> imgList = [
  "https://www.teahub.io/photos/full/67-670663_hollywood-movie-poster-hd.jpg",
  "https://www.teahub.io/photos/full/257-2575043_hollywood-movies-hd-wallpapers-1000-years-after-earth.jpg",
  "https://wallpaperaccess.com/full/2000108.jpg",
  "https://wallpaperaccess.com/full/37945.jpg",

  "https://c4.wallpaperflare.com/wallpaper/726/46/535/movies-hollywood-movies-wallpaper-preview.jpg",
  "https://wallpapersmug.com/large/6e645c/captain-marvel-movie-poster.jpg",
  "https://d2kektcjb0ajja.cloudfront.net/images/posts/feature_images/000/000/072/large-1466557422-feature.jpg?1466557422"
];

class _homepageState extends State<homepage> {

  showExitPopUp(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("CONFIRM"),
            content: Text("Do you want to exit this app"),
            actions: <Widget> [

              RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text("Yes"),
                  color: Colors.redAccent,
                  onPressed: (){
                    SystemNavigator.pop();

                  }),

              RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text("No"),
                  color: Colors.lightGreen,
                  onPressed: (){

                    Navigator.of(context).pop();


                  }),

            ],

          );
        }

    );


  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{

        return showExitPopUp();

      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 25,
          leading: IconButton(onPressed: () => SlideDrawer.of(context)!.toggle(), icon: Icon(Icons.menu)),
          title: Text(
            'Movies.Hub',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage(
                'images/profile.png',
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(items: imgList.map((item) => Container(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(item,fit: BoxFit.cover,width: 500,
                      height: 200,)),
                ),
              )).toList(), options: CarouselOptions(
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                enlargeCenterPage: true,

              ),),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10.0),
                        ]),
                    child: SizedBox( width: 500,
                      height: 50,
                      child: Center(
                        child: Text(
                          'LATEST MOVIES',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> moviepage()));

              },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Captain America', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),),
                                        GlowText('⭐⭐⭐⭐'),
                                        Text(
                                          'Captain America is a superhero appearing in American comic books published by Marvel Comics.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text('2h 4m',style: TextStyle(color: Colors.black87),),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.timer,color: Colors.black87,)
                                          ],
                                        )
                                      ],
                                    )),
                                GlowIcon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://mypostercollection.com/wp-content/uploads/2018/08/Captain-America-Poster-2011-MyPosterCollection.com-3-683x1024.jpg',
                          width: 120,
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> moviepage()));

              },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Iron Man 3', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),),
                                        GlowText('⭐⭐⭐⭐'),
                                        Text(
                                          'Iron Man 3 is a 2013 American superhero film based on the Marvel Comics character Iron Man',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text('1h 50m',style: TextStyle(color: Colors.black87),),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.timer,color: Colors.black87,)
                                          ],
                                        )
                                      ],
                                    )),
                                GlowIcon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://i.pinimg.com/originals/f8/f4/0c/f8f40cd2f8f6819c8ee6b8370dab15d4.png',
                          width: 120,
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> moviepage()));

              },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Avengers Endgame', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),),
                                        GlowText('⭐⭐⭐⭐⭐'),
                                        Text(
                                          'Avengers Endgame is a American superhero film based on the Marvel Comics ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text('4h 5m',style: TextStyle(color: Colors.black87),),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.timer,color: Colors.black87,)
                                          ],
                                        )
                                      ],
                                    )),
                                GlowIcon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg',
                          width: 120,
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> moviepage()));

              },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Captain America', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),),
                                        GlowText('⭐⭐⭐⭐'),
                                        Text(
                                          'Captain America is a superhero appearing in American comic books published by Marvel Comics.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text('2h 4m',style: TextStyle(color: Colors.black87),),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.timer,color: Colors.black87,)
                                          ],
                                        )
                                      ],
                                    )),
                                GlowIcon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://mypostercollection.com/wp-content/uploads/2018/08/Captain-America-Poster-2011-MyPosterCollection.com-3-683x1024.jpg',
                          width: 120,
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> moviepage()));

              },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Captain America', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),),
                                        GlowText('⭐⭐⭐⭐'),
                                        Text(
                                          'Captain America is a superhero appearing in American comic books published by Marvel Comics.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text('2h 4m',style: TextStyle(color: Colors.black87),),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.timer,color: Colors.black87,)
                                          ],
                                        )
                                      ],
                                    )),
                                GlowIcon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://mypostercollection.com/wp-content/uploads/2018/08/Captain-America-Poster-2011-MyPosterCollection.com-3-683x1024.jpg',
                          width: 120,
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
