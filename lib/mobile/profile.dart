import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set background color to black
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.blue, // Mengatur warna teks menjadi biru
            fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
            fontSize: 20, // Mengatur ukuran font
          ),
          textAlign: TextAlign.center, // Menempatkan teks di tengah
        ),
        centerTitle: true, // Menempatkan judul di tengah
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Warna ikon menjadi putih
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white), // Warna ikon menjadi putih
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Log Out'),
                    content: Text('Apakah Anda yakin ingin log out?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Batal'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Log Out'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                                (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            Text(
              'Steven Tanaka',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Mengatur warna teks menjadi putih
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Student',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email, color: Colors.white), // Warna ikon menjadi putih
              title: Text(
                'steventanaka@gmail.com',
                style: TextStyle(color: Colors.white), // Mengatur warna teks menjadi putih
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white), // Warna ikon menjadi putih
              title: Text(
                '0812 3456 789',
                style: TextStyle(color: Colors.white), // Mengatur warna teks menjadi putih
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.white), // Warna ikon menjadi putih
              title: Text(
                'Jakarta, Indonesia',
                style: TextStyle(color: Colors.white), // Mengatur warna teks menjadi putih
              ),
            ),
          ],
        ),
      ),
    );
  }
}
