import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("정산서 발행", style: TextStyle(
            fontSize: 23, fontFamily: 'SpoqaHanSansNeo', color: Color(0xff002B5B), fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                )
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
                child: const Text('공유하기', style: TextStyle(
                    fontSize: 17, fontFamily: 'SpoqaHanSansNeo')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}