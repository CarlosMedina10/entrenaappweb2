import 'dart:convert';
import 'dart:html' as html;
import 'package:firebase/firebase.dart';
import 'package:http/http.dart' as http;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:entrenaapp/blocs/navigation_bloc.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';

class ProfileSection extends StatefulWidget {

  ProfileSection();
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
 
    Size displaySize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          html.window.open(
              "https://bitly.com/ashishrawatresume", "Ashish Rawat's Resume");
        },
        icon: Icon(Icons.assignment),
        label: Text("Resume"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: isSmallScreen(context)
                  ? displaySize.width / 5.5
                  : displaySize.width / 6.5,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/entrenaapp2-12fbe.appspot.com/o/fotosPromocionales%2F7-min.jpg?alt=media&token=76173d69-36bd-4152-b462-57db1bfbfd76",
                    width: displaySize.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    top: isSmallScreen(context)
                        ? displaySize.width / 12
                        : displaySize.width / 14,
                    child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
                        child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/entrenaapp2-12fbe.appspot.com/o/users%2FvjPlfIOxv1aLlgdDqxcNDCpzQJh2%2F5291ba30-2439-11eb-d162-29bdb170739b.jpg?alt=media&token=4298b03f-5f70-4677-b687-6fe9fa3299b7",
                          width: displaySize.width / 7,
                          height: displaySize.width / 7,
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                     top: isSmallScreen(context)
                        ? displaySize.width / 5.25
                        : displaySize.width / 6.25,
                    left:displaySize.width / 6, 
                    child: Column(children:
                    [
                      Container(
                      width: displaySize.width,
                      child: AutoSizeText(
                        "Bienvenido, Carlos Medina,",
                        style: TextStyle(fontSize: 40),
                      )),
                
                    ]
                    ),
                   )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
              
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.15,
                  ),
                  Container(
                    width: displaySize.width / 1.1,
                    child: Text(
                      "A passionate and forward-thinking mobile application developer has experience of building, integrating, testing, and supporting mobile applications for mobile devices.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: displaySize.width / 3,
                    child: AutoSizeText(
                      "Social Profiles",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    childAspectRatio: 3,
                    padding: EdgeInsets.all(5),
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                         
                        } ,
                                              child: socialProfile(
                            imageUrl:
                                "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                            url: "https://github.com/ashishrawat2911",
                            context: context,
                          ),
                      ),
                          
                      socialProfile(
                          imageUrl:
                              "https://cdn1.iconfinder.com/data/icons/logotypes/32/square-linkedin-512.png",
                          url: "https://linkedin.com/in/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/facebook_circle-512.png",
                          url: "https://facebook.com/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://seeklogo.com/images/T/twitter-2012-negative-logo-5C6C1F1521-seeklogo.com.png",
                          url: "https://twitter.com/ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn-images-1.medium.com/max/1600/1*emiGsBgJu2KHWyjluhKXQw.png",
                          url: "https://medium.com/@ashishrawat2911",
                          context: context),
                      socialProfile(
                          imageUrl:
                              "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-instagram-new-circle-512.png",
                          url: "https://instagram.com/ashishrawat2911",
                          context: context),
                    ],
                    crossAxisCount: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween
                       ,
                    children: <Widget>[
                      Container(
                        width: displaySize.width / 3,
                        child: AutoSizeText(
                          "Blogs",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      FloatingActionButton.extended(
                        onPressed: () {
                          navigationDrawerBloc
                              .updateNavigation(NavigationScreen.Blog);
                        },
                        label: Text("Read All"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                       ,
                    children: <Widget>[
                      Container(
                        width: displaySize.width / 3,
                        child: AutoSizeText(
                          "Talks",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      FloatingActionButton.extended(
                        onPressed: () { navigationDrawerBloc
                            .updateNavigation(NavigationScreen.Talks);},
                        label: Text("Read All"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Built with ❤️ in Flutter",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Widget socialProfile({String imageUrl, String url, BuildContext context,Function comprar}) {
    return GestureDetector(
        onTap: () {
          // html.window.open(url, "");
          comprar();
        },
        child: Image.network(
          imageUrl,
        ));
  }
}
