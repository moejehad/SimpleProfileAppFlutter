import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Moe Jehad ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontFamily: 'Ubuntu'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Mohammed Madhoun',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontFamily: 'Ubuntu'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('mohammedmadhoun18@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 2.0,
                        fontFamily: 'Ubuntu'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
