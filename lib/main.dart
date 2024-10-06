import 'package:flutter/material.dart';
import 'second_screen.dart'; // นำเข้าไฟล์ second_screen.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ยินดีต้อนรับเข้าดินแดนขนมเค้กมหัศจรรย์',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'CAFE CAKE MINIMAL'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(10), // กำหนด padding รอบข้อความ
          decoration: BoxDecoration(
            color: Color(0xffbe7ac4), // สีพื้นหลังของกล่องข้อความ
            borderRadius: BorderRadius.circular(10), // มุมโค้งของกรอบ
            border: Border.all(
              color: Color(0xff6a1f8e), // สีของกรอบ
              width: 2, // ความหนาของกรอบ
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xff3f0e73), // สีของตัวอักษร
              fontWeight: FontWeight.bold, // ตัวอักษรหนา
              fontSize: 24, // ขนาดของตัวอักษร
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xffc5a5cd), // สีพื้นหลังที่ต้องการ
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              // เพิ่มรูปภาพ
              Image.asset(
                'assets/images/b5b4ee382390727850c945b450ba68d5.gif',
                width: 350,
                height: 300,
              ),
              SizedBox(height: 20), // เพิ่มระยะห่างระหว่างรูปภาพและปุ่ม
              ElevatedButton(
                onPressed: () {
                  // นำทางไปยังหน้าจอที่สอง
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text('WELCOME TO MY APP!'),
              ),
              SizedBox(height: 20), // ระยะห่างเพิ่มหลังปุ่ม
              // เพิ่มเนื้อหาหรือส่วนอื่นๆ ที่ต้องการแสดงในหน้าแรก
              Text(
                'Welcome to the Cake Wonderland!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3f0e73),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'สนุกสนานไปกับเค้กแสนอร่อยที่คัดสรรมาของเราและเพลิดเพลินไปกับการเดินทางอันแสนหอมหวานของคุณกับเรา',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              // เพิ่มส่วนอื่นๆ ถ้ามี
            ],
          ),
        ),
      ),
    );
  }
}
