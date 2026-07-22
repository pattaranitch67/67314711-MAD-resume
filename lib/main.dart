import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        // โครงสร้างหน้าจอพื้นฐาน
        appBar: AppBar(
          title: const Text('Resume'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("1.ชื่อ-สกุล : ภัทรานิษฐ์ ช่างทำร่อง"),
                ],
              ),
              Row(
                children: [
                  const Text("2. ประวัติการศึกษา: "),
                ],
              ),
              Row(
                children: [
                  const Text("  มัธยมตอนต้น      : โรงเรียนลำปางกัลยาณี\n  มัธยมตอนปลาย  : โรงเรียนลำปางกัลยาณี\n  มหาวิทยาลัย       : มหาวิทยาลัยนเรศวร"),
                ],
              ),
              Row(
                children: [
                  const Text("3. ประสบการ์ณงาน โครงงานที่เคยทำ :\n  โครงงานเจลสมุนไพรดับกลิ่น "),
                ],
              ),
              Row(
                children: [
                  const Text("4.ความสามารถพิเศษ : - "),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB Pressed!');
          },
          child: const Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}
