import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HappyScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => HappyScreen(),
      '/third': (context) => MadScreen(),
      '/fourth': (context) => ConfusedScreen(),
      '/fifth': (context) => AnxiousScreen(),
    },
  ));
}

class HappyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.blue,
              child: Column(
                children: [
                  Image.network(
                      'https://cdn4.iconfinder.com/data/icons/emoji-68/64/05-happy-512.png'),
                  Text(
                    'This emoji is a happy!',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mad"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://images.emojiterra.com/twitter/v13.0/512px/1f620.png'),
                  Text(
                    'This emoji is a mad!',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConfusedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Confused"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://www.dictionary.com/e/wp-content/uploads/2018/03/Thinking_Face_Emoji-Emoji-Island.png'),
                  Text(
                    'This emoji is confused',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnxiousScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Anxious"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.purple,
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://pbs.twimg.com/profile_images/1162710956218245120/L4b1guuv_400x400.jpg'),
                  Text(
                    'This emoji is a little anxious',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.deepOrangeAccent,
                child: OutlineButton(
                  child: Text('Happy'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.deepOrangeAccent,
                child: OutlineButton(
                  child: Text('Mad'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.deepOrangeAccent,
                child: OutlineButton(
                  child: Text('Confused'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourth');
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.deepOrangeAccent,
                child: OutlineButton(
                  child: Text('Anxious'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fifth');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


