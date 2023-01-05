import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Little Game',
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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: '王迪 20191060232'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  dynamic _weapon;
  bool _horse = false;
  bool _armour = false;
  String _result = '战斗结果是：';

  void _fight() {
    setState(() {
      if (_controller.text == '吕布' && _weapon == 1 && _horse && _armour) {
        _result = '胜利';
      } else {
        _result = '失败';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _controller,
              decoration: const InputDecoration(
                  labelText: "来者何人",
                  hintText: "来将可留姓名",
                  prefixIcon: Icon(Icons.person)),
            ),
            const Text(
              "\n选择你的武器",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                height: 1.2,
              ),
            ),
            RadioListTile(
              value: 1,
              groupValue: _weapon,
              onChanged: (value) {
                setState(() {
                  _weapon = value;
                });
              },
              title: const Text('方天画戟'),
              subtitle: const Text('豹子尾摇穿画戟，雄兵十万脱征衣服。'),
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 2,
              groupValue: _weapon,
              onChanged: (value) {
                setState(() {
                  _weapon = value;
                });
              },
              title: const Text('青龙偃月刀'),
              subtitle: const Text('刀势即大，其三十六刀法，兵仗遇之，无不屈者。刀类中以此为第一。'),
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 3,
              groupValue: _weapon,
              onChanged: (value) {
                setState(() {
                  _weapon = value;
                });
              },
              title: const Text('丈八蛇矛'),
              subtitle: const Text('马上所持，言其矟矟便杀也；又曰激矛，激，截也，可以激截敌阵之矛也。'),
              activeColor: Colors.blue,
            ),
            const Text(
              "\n选择你的装备",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                height: 1.2,
              ),
            ),
            ListTile(
              leading: Checkbox(
                value: _horse,
                // 取值可能为空
                onChanged: (bool? val) {
                  setState(() {
                    _horse = val!;
                  });
                },
              ),
              title: const Text('赤兔马'),
              subtitle: const Text('人中吕布，马中赤兔。'),
            ),
            ListTile(
              leading: Checkbox(
                value: _armour,
                // 取值可能为空
                onChanged: (bool? val) {
                  setState(() {
                    _armour = val!;
                  });
                },
              ),
              title: const Text('护心镜'),
              subtitle: const Text('坚大怒，命黄盖出战。蔡瑁舞刀来迎。斗到数合，黄盖挥鞭打瑁，正中护心镜'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
              ),
              onPressed: _fight,
              child: const Text("开战"),
            ),
            Text(
              _result,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ), // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
