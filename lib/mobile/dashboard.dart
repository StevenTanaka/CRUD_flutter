import 'package:flutter/material.dart';
import 'package:managemen_keuangan/mobile/profile.dart';
import 'package:managemen_keuangan/mobile/sedang.dart'; // Import file sedang.dart
import 'package:managemen_keuangan/mobile/blind.dart'; // Import file blind.dart
import 'package:managemen_keuangan/mobile/login.dart';
import 'package:managemen_keuangan/mobile/stationary.dart';

void main() {
  runApp(MyApp());
}

class Workout {
  final String title;
  final String description;
  final String imagePath;
  final Color color;
  final String level;

  Workout({required this.title, required this.description, required this.imagePath, required this.color, required this.level});
}

class MyApp extends StatelessWidget {
  final List<Workout> workouts = [
    Workout(
      title: 'Dribbling',
      description: 'Melatih Mengiring Bola',
      imagePath: 'assets/images/dribble1.jpeg',
      color: Colors.white54,
      level: 'Mudah',
    ),
    Workout(
      title: 'Passing',
      description: 'Melatih agar umpan lebih akurat',
      imagePath: 'assets/images/passing1.jpeg',
      color: Colors.white54,
      level: 'Sedang',
    ),
    Workout(
      title: 'Shooting',
      description: 'Melatih shooting agar lebih bagus dan akurat',
      imagePath: 'assets/images/shooting1.jpeg',
      color: Colors.white54,
      level: 'Sulit',
    ),
    Workout(
      title: 'Agility',
      description: 'Melatih kelincahan dan kecepatan',
      imagePath: 'assets/images/agility1.jpeg',
      color: Colors.white54,
      level: 'Mudah',
    ),
    Workout(
      title: 'Finishing',
      description: 'Melatih tembakan dan lay up agar lebih akurat',
      imagePath: 'assets/images/finishing1.jpeg',
      color: Colors.white54,
      level: 'Sedang',
    ),
    Workout(
      title: 'Defense',
      description: 'Melatih pertahanan untuk pemain',
      imagePath: 'assets/images/defense1.jpeg',
      color: Colors.white54,
      level: 'Sulit',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Basketball Training',
            style: TextStyle(
              fontFamily: 'Luckiest Guy',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()), // Mengarahkan ke halaman login
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                navigateToProfile(context);
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Latihan Terbaru',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  // Tentukan halaman yang sesuai berdasarkan index
                  Widget page;
                  if (index == 0) {
                    page = StationaryBallControlPage();
                  } else if (index == 1) {
                    page = BlindfoldedDribblePage();
                  }

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StationaryBallControlPage()),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Image.asset(
                        'assets/images/terbaru$index.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Level Latihan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Mudah button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Mengubah warna tombol menjadi biru
                      onPrimary: Colors.white, // Mengubah warna teks tombol menjadi putih
                    ),
                    child: Text('Mudah'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Jika tombol "Sedang" ditekan, arahkan ke halaman SedangPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SedangPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Mengubah warna tombol menjadi biru
                      onPrimary: Colors.white, // Mengubah warna teks tombol menjadi putih
                    ),
                    child: Text('Sedang'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Sulit button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Mengubah warna tombol menjadi biru
                      onPrimary: Colors.white, // Mengubah warna teks tombol menjadi putih
                    ),
                    child: Text('Sulit'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Jenis Latihan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: workouts.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (workouts[index].title == 'Dribbling') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SedangPage()),
                        );
                      }
                    },
                    child: Card(
                      elevation: 5,
                      color: workouts[index].color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(workouts[index].imagePath, width: 50, height: 50),
                          SizedBox(height: 10),
                          Text(
                            workouts[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            workouts[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }
}