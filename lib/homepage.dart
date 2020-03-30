import 'package:flutter/material.dart';
import 'package:tweet_webview/tweet_webview.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(40),
              child: Text(
                  'Home Page',
                  style: Theme.of(context).textTheme.headline2),
            ),
            Row(
             children: <Widget>[
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.all(10),
                     child: Text('Dr. Rubén Mondéjar', textAlign: TextAlign.left)
                    ),
                   Container(
                       padding: EdgeInsets.all(10),
                       child: Text('PhD in Computer Engineering', textAlign: TextAlign.left)
                   ),
                   Container(
                       padding: EdgeInsets.all(10),
                       child: Text('ruben.mondejar.andreu@gmail.com', textAlign: TextAlign.left)
                   ),
                 ]),
               Column(
                 children: <Widget>[
                   Container(
                     height: 300,
                     child: Image.asset(
                       'assets/images/photo.png',
                       fit: BoxFit.scaleDown,
                     ),
                   )
                 ],
               ),
             ],
            ),
            Row(
              children: <Widget>[
                Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text('About Me', textAlign: TextAlign.left)
                      ),
                   Container(
                       padding: EdgeInsets.all(10),
                       child: RichText(
                        text: new TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          text: 'I am currently working at AUTO1 Group GmbH as a Team Lead Software Engineer, '
                           'on microservices architectures and cloud computing.I previously worked at MBition GmbH '
                           'as a Senior Software Engineer mainly focused on backend cloud services for mobile apps. '
                           'Before that, I worked at Tarragona Provincial Council (local government) with a permanent '
                           'position, as a Lead Software Engineer, building web software architectures and a distributed '
                           'BPM platform for process automation.I also worked as a part-time instructor and research '
                           'collaborator at the Universitat Rovira i Virgili and Universitat Oberta de Catalunya mainly '
                           'in courses of Software Architectures and Distributed Systems. In addition, as a member of '
                           'the Architecture and Telematic Services research group, I published more than 30 papers in '
                           'software engineering and distributed architectures subjects.'
                           )
                        ),
                  ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      child:
                        //TweetWebView.tweetUrl("https://twitter.com/Ruuben4"),
                        TweetWebView.tweetID('1243922523605086209')
                      ),
                    ]
                )
              ]
            )
          ]
        )
    ]);
  }
}
