import 'package:flutter/material.dart';
import 'package:managemen_keuangan/mobile/dashboard.dart';
import 'package:managemen_keuangan/mobile/crossover.dart';
import 'package:managemen_keuangan/mobile/behind.dart';
import 'package:managemen_keuangan/mobile/spin.dart'; // Import halaman SpinMove
import 'package:managemen_keuangan/mobile/between.dart'; // Import halaman BetweenTheLegs
import 'package:managemen_keuangan/mobile/reverse.dart'; // Import halaman ReverseDribble

class SedangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
        title: Text(
          'Kategori Dribble',
          style: TextStyle(
            color: Colors.blue, // Mengatur warna teks menjadi biru
            fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
            fontSize: 20, // Mengatur ukuran font
          ),
        ),
        centerTitle: true, // Menempatkan judul di tengah
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Mengatur ikon back menjadi putih
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DribbleTypeCard(
              title: 'Crossover',
              description:
              'Dribble crossover dilakukan dengan cara mengubah posisi bola dari satu tangan ke tangan lainnya. Teknik dribble crossover bertujuan untuk mempertahankan bola dari rebutan lawan.',
              nextPage: WorkoutBasketPage(), // Tersambung dengan halaman CrossoverPage
            ),
            SizedBox(height: 20),
            DribbleTypeCard(
              title: 'Behind the Back',
              description:
              'Behind the back dribble adalah teknik dribble yang dilakukan dengan membawa bola di belakang punggung, sehingga sulit untuk direbut oleh lawan.',
              nextPage: BehindTheBackPage(), // Tersambung dengan halaman BehindTheBackPage
            ),
            SizedBox(height: 20),
            DribbleTypeCard(
              title: 'Spin Move',
              description:
              'Spin move dribble dilakukan dengan cara membuat gerakan putaran tubuh yang cepat sambil membawa bola, tujuannya adalah untuk mengecoh lawan.',
              nextPage: SpinMovePage(), // Tersambung dengan halaman SpinMovePage
            ),
            SizedBox(height: 20),
            DribbleTypeCard(
              title: 'Between the Legs',
              description:
              'Between the legs dribble adalah teknik dribble yang dilakukan dengan membawa bola melewati kaki sendiri, biasanya digunakan untuk mempertahankan bola dari tekanan lawan.',
              nextPage: BetweenTheLegsPage(), // Tersambung dengan halaman BetweenTheLegsPage
            ),
            SizedBox(height: 20),
            DribbleTypeCard(
              title: 'Reverse Dribble',
              description:
              'Reverse dribble adalah gerakan dribble yang dilakukan dengan membawa bola ke belakang tubuh, sering digunakan untuk menghindari lawan yang ada di depan.',
              nextPage: ReverseDribblePage(), // Tersambung dengan halaman ReverseDribblePage
            ),
          ],
        ),
      ),
    );
  }
}

class DribbleTypeCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget? nextPage;

  const DribbleTypeCard({
    Key? key,
    required this.title,
    required this.description,
    this.nextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850], // Set background color of Card
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white, // Mengatur warna teks menjadi putih
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white, // Mengatur warna teks menjadi putih
              ),
            ),
            SizedBox(height: 10),
            if (nextPage != null)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Mengatur warna tombol menjadi biru
                  onPrimary: Colors.white, // Mengatur warna teks tombol menjadi putih
                ),
                onPressed: () {
                  // Navigasi ke halaman nextPage ketika tombol "Lanjut" ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nextPage!),
                  );
                },
                child: Text('Lanjut'),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SedangPage(),
  ));
}
