import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 240, 0, 0),
              child: ElevatedButton(
                  onPressed: () => {Navigator.pushReplacementNamed(context, '/location')},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Start game',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 2,
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}