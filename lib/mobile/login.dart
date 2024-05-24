import 'package:flutter/material.dart';
import 'package:managemen_keuangan/mobile/dashboard.dart'; // Sesuaikan dengan nama file dan lokasi halaman dashboard
import 'package:managemen_keuangan/mobile/register.dart'; // Sesuaikan dengan nama file dan lokasi halaman register

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => MyApp(), // Tambahkan rute untuk halaman dashboard
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengatur latar belakang menjadi hitam
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basketball Training',
                style: TextStyle(
                  fontFamily: 'Luckiest Guy',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              LoginForm(),
              SizedBox(height: 10), // Ubah jarak antara LoginForm dan teks "Belum punya akun?"
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  'Belum punya akun? Klik disini.',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class DummyAccount {
  final String username;
  final String password;

  DummyAccount({required this.username, required this.password});
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  DummyAccount dummyAccount = DummyAccount(username: '1', password: '1');

  void _login() {
    if (_usernameController.text == dummyAccount.username &&
        _passwordController.text == dummyAccount.password) {
      // Handle successful login here
      print('Login Successful!');

      // Navigasi ke halaman dashboard setelah login berhasil
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      // Tampilkan pesan error ke pengguna
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid username or password'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(
                  Icons.person,
                  color: Colors.blue, // Mengatur warna ikon menjadi biru
                ),
                labelStyle: TextStyle(color: Colors.blue), // Mengatur warna teks label menjadi biru
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white), // Mengatur warna teks input menjadi putih
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(
                  Icons.lock,
                  color: Colors.blue, // Mengatur warna ikon menjadi biru
                ),
                labelStyle: TextStyle(color: Colors.blue), // Mengatur warna teks label menjadi biru
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white), // Mengatur warna teks input menjadi putih
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            SizedBox( // Lebarkan tombol login
              width: double.infinity, // Lebarkan tombol login sesuai lebar parent
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    _login();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Mengatur warna latar belakang tombol menjadi biru
                  onPrimary: Colors.white, // Mengatur warna teks menjadi putih
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
