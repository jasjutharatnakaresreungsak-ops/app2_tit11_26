import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});



// ฟังก์ชันช่วยสร้างตัวเลขสถิติ (ตัวเลข + ข้อความป้าย)
  Widget _stat(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {

// ===== แก้ข้อมูลตรงนี้ได้เลย =====
    const String accountId = 'jajeejajajane';
    const String posts = '03';
    const String followers = '10.5M';
    const String following = '500';
    const String studentName = 'เจษจุฑารัตน์ นคเรศเรืองศักดิ์';
    const String caption1 = '@getsunova';
    const String caption2 = '@oasis';

    const String galleryImage = 'https://t1.blockdit.com/photos/2020/11/5fb952383d4b9b0cc0fd7d2e_800x0xcover_3aaaqsST.jpg';
    const String galleryImage1 = 'https://s.isanook.com/wo/0/ud/4/20927/d21.jpg';
    const String galleryImage2 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3ypGfb_GlFWC9HFVhrY2D9CQP3UTPjCso9BpxhVtLKg&s=10';

// =================================
    return Scaffold(
      backgroundColor: Colors.white,



// ① AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          accountId,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

// ② รูปโปรไฟล์ + สถิติ 3 ช่อง
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/1762670414656.jpg'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _stat(posts, 'โพสต์'),
                        _stat(followers, 'ผู้ติดตาม'),
                        _stat(following, 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 16),



// ③ ชื่อและแคปชัน
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(caption1, style: TextStyle(fontSize: 12)),
                  Text(caption2, style: TextStyle(fontSize: 12)),
                ],
              ),


              const SizedBox(height: 12),



// ④ ปุ่มติดตาม (ทึบ) + ปุ่มข้อความ (มีเส้นขอบ)
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF4A90E2),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 12),



// ⑤ แถบไอคอน
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, size: 28, color: Colors.black87),
                  Icon(Icons.person_pin, size: 28, color: Colors.grey),
                ],
              ),


              const SizedBox(height: 8),



// ⑥ แกลเลอรีภาพ 3 คอลัมน์
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.network(galleryImage, fit: BoxFit.cover),
                  Image.network(galleryImage1, fit: BoxFit.cover),
                  Image.network(galleryImage2, fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}