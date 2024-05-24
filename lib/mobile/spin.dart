import 'package:flutter/material.dart';

class SpinMovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
        title: Text(
          'Spin Move Dribble',
          style: TextStyle(
            color: Colors.blue, // Ubah warna teks menjadi biru
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
              'Spin move dribble dilakukan dengan cara membuat gerakan putaran tubuh yang cepat sambil membawa bola, tujuannya adalah untuk mengecoh lawan.',
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
              '- Ball Handling\n- Dribbling\n- Footwork',
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
              'Sedang',
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
    home: SpinMovePage(),
  ));
}
