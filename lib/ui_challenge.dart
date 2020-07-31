import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//code link on Github
//https://github.com/terewere/flutter_facebook_clone

class FacbookClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TabBarView(
      children: [
        Container(
          color: Colors.white,
          child: ListView(
//            mainAxisSize: MainAxisSize.min,
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(9),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/mahmoud.jpg'))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "What's on your mind?",
                      style: TextStyle(fontSize: 16),
                    ),
                    width: size.width / 1.28,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  )
                ],
              ),
              Divider(
                thickness: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.videocam,
                            color: Colors.red,
                          ),
                        ),
                        Text('Live'),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.image,
                            color: Colors.green,
                          ),
                        ),
                        Text('Photo'),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.deepPurple,
                          ),
                        ),
                        Text('Live'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(9),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/mahmoud.jpg'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mahmoud Jajah',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Text(
                                'Yesterday at 8:01 PM .',
                                style: TextStyle(color: Colors.black38),
                              ),
                              FaIcon(
                                FontAwesomeIcons.globeAfrica,
                                size: 17,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Eid Mubarak to all!',
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'images/eid.jpeg',
                width: size.width,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        left: 19,
                        child: CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.solidHeart,
                            size: 12,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.red,
                          radius: 12,
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.thumb_up,
                          size: 12,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blue,
                        radius: 12,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('4599k'),
                  Spacer(),
                  Text('399k comments . 299k Shares'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Divider(
                thickness: 10,
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
      ],
    );
  }
}
