import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("인원 추가하기", style: TextStyle(
            fontSize: 23, fontFamily: 'SpoqaHanSansNeo', color: Color(0xff002B5B), fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: const Text("인원 추가하기"),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: const Color(0xff002B5B), // background
                onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MenuList()));
                },
                child: const Text('정산하기', style: TextStyle(
                  fontSize: 17, fontFamily: 'SpoqaHanSansNeo')),
                ),
            ),
          ],
        ),
      ),
    );
  }
}