import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';


@RoutePage()
//import 'dart:html';

class ProfileTypeView extends StatefulWidget {
  const ProfileTypeView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileTypeViewState createState() => _ProfileTypeViewState();
}

class _ProfileTypeViewState extends State<ProfileTypeView> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter = counter + 1;
          });
        },
        child: Container(
          width: 60,
          height: 60,
          child: const Icon(
            Icons.add
          ),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [AppLightColorConstants.buttonPrimaryColor,Colors.deepPurpleAccent],)),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex:5,
                child:Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppLightColorConstants.buttonPrimaryColor,Colors.deepPurpleAccent],
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 110.0,),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage('assets/images/png/image_png_profile_theme_two.png'),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.0,),
                      Text('Erza Scarlet',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 20.0,
                      )),
                      SizedBox(height: 10.0,),
                      Text('S Class Mage',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 15.0,
                      ),)
                  ]
                  ),
                ),
              ),

              Expanded(
                flex:5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child:Card(
                          margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                        child: Container(
                          width: 310.0,
                          height:290.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Information",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w800,
                                ),),
                                Divider(color: Colors.grey[300],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Guild",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("FairyTail, Magnolia",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                const SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.auto_awesome,
                                      color: Colors.yellowAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Magic",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Spatial & Sword Magic, Telekinesis",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                const SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.pinkAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Loves",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Take a photo",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                const SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Colors.lightGreen[400],
                                      size: 35,
                                    ),
                                    const SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Team",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Team Natsu",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                              ],
                            ),
                          )
                        )
                      )
                    ),
                  ),
              ),

            ],
          ),
          Positioned(
              top:MediaQuery.of(context).size.height*0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                child: Padding(
                  padding:const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Battles',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14.0
                          ),),
                          const SizedBox(height: 5.0,),
                          Text("$counter",
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),)
                        ],
                      ),

                      Column(
                      children: [
                        Text('Last View',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0
                          ),),
                        const SizedBox(height: 5.0,),
                        const Text('April 7th',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),)
                      ]),

                      Column(
                        children: [
                          Text('Age',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14.0
                            ),),
                          const SizedBox(height: 5.0,),
                          const Text('19 yrs',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),)
                        ],
                      ),
                    ],
                  ),
                )
              )
          )
        ],

      ),
    );
  }
}


