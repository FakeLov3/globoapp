import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainContent extends StatefulWidget {
  final String topicName, newsName;

  MainContent({this.topicName, this.newsName});

  @override
  _MainContentState createState() => _MainContentState(this.newsName, this.topicName);
}

class _MainContentState extends State<MainContent> {
  String topicName, newsName;

  _MainContentState(String newsName, String topicName) {
    this.topicName = topicName;
    this.newsName = newsName;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        //alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top:20),
            alignment: Alignment.topLeft,
            child: Text.rich(TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  fontFamily: 'Times New Roman'
                ),
                text: topicName.toUpperCase()
            )),
            height: 50,
          ),
          Container(
            height:300,
            child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex) => Container(
                    padding: EdgeInsets.all(5),
                    child:
                    Stack(children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Image.network('https://s2.glbimg.com/_q4Sc4hUnwM3V5IyquACI7rMMLI=/0x0:1280x961/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/v/h/mglBsvT7WERz0LWlrILw/moro-na-pf-4.jpg',
                            width: 600,
                            height: 300,)
                      ),
                      Container(
                        margin: EdgeInsets.only(top:180),
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                        ),
                        //width: 300,
                          height: 100,
                          child: Text.rich(TextSpan(text: newsName + "\n", style: TextStyle(fontSize: 20, color: Colors.white))),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],),
                ),
                options: CarouselOptions(
                  height: 400,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}

class Content extends StatefulWidget {
  final String topicName, newsName;

  Content({this.topicName, this.newsName});

  @override
  _ContentState createState() => _ContentState(this.topicName, this.newsName);
}

class _ContentState extends State<Content> {
  String topicName, newsName;

  _ContentState(String topicName, newsName) {
    this.topicName = topicName;
    this.newsName = newsName;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Container(padding: EdgeInsets.only(bottom: 5, top: 5), child:
      Stack(
      children: <Widget>[
            Container(
              width: 440,
              padding: EdgeInsets.only(left: 10),
              height:200,
              child: CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex) => Container(
                      child: Stack(children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network('https://s2.glbimg.com/_q4Sc4hUnwM3V5IyquACI7rMMLI=/0x0:1280x961/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/v/h/mglBsvT7WERz0LWlrILw/moro-na-pf-4.jpg',
                              width: 900,
                              height: 700,)
                        ),
                        Container(
                          margin: EdgeInsets.only(top:150),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                          ),
                          //width: 300,
                          height: 50,
                          child: Text.rich(TextSpan(text: newsName + "\n", style: TextStyle(fontSize: 15, color: Colors.white))),
                          alignment: Alignment.bottomCenter,
                        ),
                      ],)
                  ),
                  options: CarouselOptions(
                    height: 800,
                    viewportFraction: 0.66,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ),


        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomCenter,
          child: Text.rich(TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Helvetica Neue'
              ),

              text: topicName.toUpperCase()
          ),
          textDirection: TextDirection.rtl,),
          height: 200,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(5)),
        ),
    ]
    ),);
  }
}
