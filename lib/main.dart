import 'package:flutter/material.dart';

void main() {
  runApp(ali());
}

class ali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField Example',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numders = TextEditingController();
  int sum = 0;
  int all = 0;

  void sumadd() {
    setState(() {
      //all = int.parse(numders.text);
      sum = numders.text.length;
    });
  }

  void allb() {
    setState(() {
      all = int.parse(numders.text);
    }
    );
  }

  void clear() {
    setState(() {
      sum = 0;
      all=0;
      numders.clear();
    });
  }

  @override
  void dispose() {
    numders.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('تكليف'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numders,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'ادخل الرقم',

              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: sumadd,
              child: Text('عرض عدد الارقام المدخله'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: clear,
              child: Text('تنظيف'),
            ),
            ElevatedButton(
              onPressed: allb,
              child: Text('عدد الارقام المدخله'),
            ),
            SizedBox(height: 30),
            Text(
              'عدد الارقام: $sum',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '  عرض الارقام المدخله: $all',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
