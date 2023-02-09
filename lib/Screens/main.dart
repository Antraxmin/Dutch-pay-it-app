import 'package:flutter/material.dart';
import 'addlist.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String _title = '더치페it';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key,key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
                color: const Color(0xff002B5B),
                child: const Text("정산하러 가볼까요?", style: TextStyle(fontSize: 20, color: Colors.white))
            )
          ),
          Expanded(
            flex: 6,
              child: Container(
                color: const Color(0xffEEEEEE),
              )
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AddList()));},
        tooltip: '모임 추가하기',
        backgroundColor: const Color(0xff002B5B),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
