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
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'SpoqaHanSansNeo',
            )),
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
      ),
      body: Container(
        //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        color: const Color(0xffFFFFFF),
        //color: Colors.blueGrey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        //alignment: Alignment.center,
                        elevation: 10,
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        color: Colors.white,
                        child: Container(
                          height: 50,
                          child: Text("음식점 $index"),
                        )
                    );
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              height: 50,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () { Get.to(AddList()); },
                  //onPressed: Navigator.push(context, MaterialPageRoute(builder: (context) => AddList()));
                  icon: const Icon(Icons.add, size: 13),
                  label: const Text('추가하기', style: TextStyle(fontSize: 13)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40), backgroundColor: const Color(0xff5F9DF7)),
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