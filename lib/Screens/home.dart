import 'package:flutter/material.dart';
import 'package:dutch_pay_it/Screens/addlist.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int listcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("모임 추가하기",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'SpoqaHanSansNeo',
            )),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        color: const Color(0xffFFFFFF),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        //alignment: Alignment.center,
                        elevation: 3,
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        color: Colors.white,
                        child: Container(
                          height: 100,
                          child: Text("음식점 $index", style: const TextStyle(fontFamily: 'SpoqaHanSansNeo')),
                        )
                    );
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              height: 70,
              child: Center(
                child: ElevatedButton.icon(
                  //onPressed: () { Get.to('/2'); },
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddList()));},
                  icon: const Icon(Icons.add, size: 13),
                  label: const Text('추가하기', style: TextStyle(fontSize: 13, fontFamily: 'SpoqaHanSansNeo', fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50), backgroundColor: Colors.blueGrey),
                ),
              ),
            ),
            /*Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('초기화')),
                    SizedBox(
                      width: 43,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('정산하기'))
                  ],
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}