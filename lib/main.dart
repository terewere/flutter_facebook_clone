import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_clone/ui_challenge.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          tabBarTheme: TabBarTheme(
            labelColor: Colors.blue[700],
            unselectedLabelColor: Colors.black,
          ),
          appBarTheme: AppBarTheme(elevation: 0),
        ),
        home: DefaultTabController(
          length: 6,
          child: Scaffold(
              appBar: AppBar(
//                  leading: Text('Facebook'),
                  primary: true,
                  title: Text(
                    'facebook',
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 29),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: Icon(
                              Icons.message,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 10,
                            child: Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.home,
                          size: 32,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.people,
                          size: 32,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.live_tv,
                          size: 32,
                        ),
                      ),
                      Tab(
                        icon: FaIcon(FontAwesomeIcons.flag),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.notifications_none,
                          size: 32,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.menu,
                          size: 32,
                        ),
                      ),
                    ],
                  )),
              body: FacbookClone()),
        ));
  }
}
