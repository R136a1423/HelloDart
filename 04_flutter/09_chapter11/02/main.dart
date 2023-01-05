import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Scaffold(
          appBar: AppBar(title: Text("主题测试")),
          body: Container(
            alignment: Alignment.center,
            child: FutureBuilder(
                future: _dio.get(
                    "https://api.github.com/orgs/flutterchina/repos"),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //请求完成
                  if (snapshot.connectionState == ConnectionState.done) {
                    Response response = snapshot.data;
                    //发生错误
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    //请求成功，通过项目信息构建用于显示项目名称的ListView
                    return ListView(
                      children: response.data.map<Widget>((e) =>
                          ListTile(title: Text(e["full_name"]))
                      ).toList(),
                    );
                  }
                  //请求未完成时弹出loading
                  return CircularProgressIndicator();
                }
            ),
          ),
      ),
    );
  }
}
