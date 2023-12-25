import 'package:flutter/material.dart'; // Mengimpor library Flutter yang diperlukan

void main() {
  runApp(MaterialApp(
    home:
        LoginForm(), // Menampilkan widget LoginForm sebagai halaman utama aplikasi
  ));
}

class LoginForm extends StatelessWidget {
  // Deklarasi class LoginForm sebagai StatelessWidget
  final String imageUrl =
      'https://i.pinimg.com/originals/da/c8/96/dac8965a410040dab29cb5318bdec30d.jpg'; // Ganti dengan URL gambar yang ingin ditampilkan

  @override
  Widget build(BuildContext context) {
    // Metode build untuk merender tampilan
    return MaterialApp(
      // Mengembalikan MaterialApp sebagai root widget
      home: Scaffold(
        // Menggunakan Scaffold sebagai kerangka dasar tampilan
        appBar: AppBar(
          // AppBar sebagai bagian atas tampilan
          title: Text(// Text widget untuk judul AppBar
              'Login Fitness Apps' // Isi teks judul AppBar
              ),
        ),
        body: Column(
          // Memusatkan widget child di dalamnya
          children: [
            SizedBox(height: 200),
            Container(
              alignment: Alignment.topCenter,
              child: Image.network(
                imageUrl,
                height: 200,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      // Respons ketika tombol teks "Sign Up" ditekan
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Color.fromARGB(
                                255, 255, 255, 255)), // Tambahkan border
                      ),
                      backgroundColor: Color.fromARGB(
                          255, 255, 255, 255), // Latar belakang tombol
                      minimumSize: Size(50, 55), // Ukuran tombol
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.black, // Warna teks putih
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Spasi antara tombol

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: const Color.fromARGB(255, 12, 12,
                          12), // Warna latar belakang tombol "Sign In"
                      minimumSize: Size(50, 55), // Ukuran tombol "Sign In"
                    ),
                    onPressed: () {
                      // Respons ketika tombol "Sign In" ditekan, misalnya arahkan ke halaman login
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
