import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page33'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    int i = 0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/background4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children:[
                      Container(
                        height:50,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                              "assets/images/gui/buttonmenu.png"
                          ),
                        ),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(color: Colors.black, fontSize: 12.0),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children:[
                      Container(
                        height:70,
                        child: Image.asset(
                            "assets/images/gui/topmenu.png"
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ],
                  ),
                  Container(
                    height:50,
                    child: Image.asset(
                        "assets/images/gui/fb.png"
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height:120,
                child: ListView(
                  shrinkWrap:true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.red,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.green,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      width: 80.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Row(
                children:[
                  Container(
                    height:50,
                    child: Image.asset(
                        "assets/images/gui/buttonmenu.png"
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}