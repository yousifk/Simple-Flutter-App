part of 'main.dart';

class MyFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new MyFirstScreenPage(title: 'Flutter Demo Home Page'));
  }
}

class MyFirstScreenPage extends StatefulWidget {
  MyFirstScreenPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  createState() => new MyFirstScreenPageState();
}

class MyFirstScreenPageState extends State<MyFirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'This is First Page :',
              style: Theme.of(context).textTheme.display1,
            ),
            new RaisedButton(
              child: const Text('Next'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySecondScreen()),
                );
              },
              color: Colors.red,
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySecondScreen()),
          );
        },
        tooltip: 'Increment',
        child: new Icon(Icons.navigate_next),
      ),
    );
  }
}
