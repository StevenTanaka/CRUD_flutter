import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WorkoutBasketPage extends StatefulWidget {
  @override
  _WorkoutBasketPageState createState() => _WorkoutBasketPageState();
}

class _WorkoutBasketPageState extends State<WorkoutBasketPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/crossover.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
        title: Text(
          'Crossover',
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
              child: _controller.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
                  : Center(child: CircularProgressIndicator()),
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
              'Crossover dribble dilakukan dengan cara mengubah posisi bola dari satu tangan ke tangan lainnya. Teknik dribble crossover bertujuan untuk mempertahankan bola dari rebutan lawan.',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WorkoutBasketPage(),
  ));
}
