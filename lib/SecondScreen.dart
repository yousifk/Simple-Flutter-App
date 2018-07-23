part of 'main.dart';

class MySecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new MySecondScreenPage(title: 'Flutter Demo Home Page'));
  }
}

class MySecondScreenPage extends StatefulWidget {
  MySecondScreenPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  createState() => new MySecondScreenPageState();
}

class MySecondScreenPageState extends State<MySecondScreenPage> {
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
              'This is Second Page',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: new Icon(Icons.adb),
      ),
    );
  }
}
