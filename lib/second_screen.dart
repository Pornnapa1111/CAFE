import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<Map<String, String>> cakes = [
    {
      'imagePath': 'assets/images/05a7d2e8f440ae578d76bebccfe20094.jpg',
      'cakeName': 'Chocolate Cake',
      'price': '\$300',
    },
    {
      'imagePath': 'assets/images/25bc1fee6ace4796f75850e885469aab.jpg',
      'cakeName': 'Strawberry Cake',
      'price': '\$350',
    },
    {
      'imagePath': 'assets/images/343b970c056a308e1361e3f0e7f3df59.jpg',
      'cakeName': 'Cheesecake',
      'price': '\$620',
    },
    {
      'imagePath': 'assets/images/55b280d7054807733ca9ade8847125c7.jpg',
      'cakeName': 'Red Velvet',
      'price': '\$650',
    },
    {
      'imagePath': 'assets/images/5915bd85e52ca7bbd18997c596185483.jpg',
      'cakeName': 'Cheesecake',
      'price': '\$550',
    },
    {
      'imagePath': 'assets/images/70c2bc6aefe339ba29a30173864d9958.jpg',
      'cakeName': 'Red Velvet',
      'price': '\$660',
    },
    {
      'imagePath': 'assets/images/819542d9890cd28e835c53c2adec2614.jpg',
      'cakeName': 'Cheesecake',
      'price': '\$770',
    },
    {
      'imagePath': 'assets/images/83d29581bea1098b254922abfd3ef67f.jpg',
      'cakeName': 'Red Velvet',
      'price': '\$560',
    },
    {
      'imagePath': 'assets/images/d7786b267307d726dd585498cd57c39f.jpg',
      'cakeName': 'Cheesecake',
      'price': '\$490',
    },
    {
      'imagePath': 'assets/images/dc1f934dcda8420c4f4dd7ff7b86b690.jpg',
      'cakeName': 'Red Velvet',
      'price': '\$650',
    },
    {
      'imagePath': 'assets/images/e87b2c20d5deda662dba5ef050d0d8d8.jpg',
      'cakeName': 'Cheesecake',
      'price': '\$550',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAKE MENU'),
      ),
      backgroundColor: Color(0xffd8abf0), // สีพื้นหลังของแอป
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cakes.length,
          itemBuilder: (context, index) {
            final cake = cakes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: buildCakeCard(
                cake['imagePath']!,
                cake['cakeName']!,
                cake['price']!,
              ),
            );
          },
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างกรอบรูปภาพและข้อความ
  Widget buildCakeCard(String imagePath, String cakeName, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffedc8f0), // สีพื้นหลังของกล่องข้อความ
        borderRadius: BorderRadius.circular(10), // มุมโค้งของกรอบ
        border: Border.all(
          color: Color(0xff641871), // สีของกรอบ
          width: 5, // ความหนาของกรอบ
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // รูปภาพเค้ก
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10), // เพิ่มระยะห่างระหว่างรูปภาพและข้อความ
          // ชื่อเค้ก
          Text(
            cakeName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ราคาเค้ก
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff3e0653),
            ),
          ),
        ],
      ),
    );
  }
}
