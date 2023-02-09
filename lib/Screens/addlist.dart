import 'package:flutter/material.dart';

class AddList extends StatefulWidget {
  const AddList({Key? key}) : super(key: key);

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                color: const Color(0xffEEEEEE),
                child: const Center(child: Text("영수증 이미지 업로드", style: TextStyle(fontFamily: 'SpoqaHanSansNeo', fontWeight: FontWeight.bold),)),
              )
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 450.0,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //height: 50,
                //margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff002B5B), // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                child: const Text('저장하기', style: TextStyle(
                    fontSize: 17, fontFamily: 'SpoqaHanSansNeo')),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AddList()));},
        tooltip: '모임 추가하기',
        backgroundColor: const Color(0xff002B5B),
        child: const Icon(Icons.add_a_photo),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

