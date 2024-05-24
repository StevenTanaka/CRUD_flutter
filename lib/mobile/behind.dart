import 'package:flutter/material.dart';

class BehindTheBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
        title: Text(
          'Behind the Back',
          style: TextStyle(
            color: Colors.blue, // Mengatur warna teks menjadi biru
            fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
          ),
        ),
        centerTitle: true, // Menempatkan judul di tengah
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Mengatur ikon back menjadi putih
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video
            Container(
              height: 200, // Sesuaikan dengan ukuran video
              color: Colors.grey[300],
              // Tambahkan widget video di sini
            ),
            SizedBox(height: 20),
            // Penjelasan Video
            Text(
              'Penjelasan:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue, // Ubah warna teks menjadi biru
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Behind the back dribble adalah teknik dribble yang dilakukan dengan membawa bola di belakang punggung, sehingga sulit untuk direbut oleh lawan.',
              style: TextStyle(fontSize: 16, color: Colors.white), // Ubah warna teks menjadi putih
            ),
            SizedBox(height: 20),
            // Skill dilatih
            Text(
              'Skill Dilatih:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue, // Ubah warna teks menjadi biru
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Ball Handling\n- Dribbling',
              style: TextStyle(fontSize: 16, color: Colors.white), // Ubah warna teks menjadi putih
            ),
            SizedBox(height: 20),
            // Tingkat Kesulitan
            Text(
              'Tingkat Kesulitan:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue, // Ubah warna teks menjadi biru
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Sulit',
              style: TextStyle(fontSize: 16, color: Colors.white), // Ubah warna teks menjadi putih
            ),
            SizedBox(height: 20),
            // Persyaratan Latihan
            Text(
              'Material yang dibutuhkan:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue, // Ubah warna teks menjadi biru
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Bola Basket\n- Sepatu olahraga',
              style: TextStyle(fontSize: 16, color: Colors.white), // Ubah warna teks menjadi putih
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BehindTheBackPage(),
  ));
}
