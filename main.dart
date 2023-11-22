import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HalamanJelajah extends StatefulWidget {
  @override
  _HalamanJelajahState createState() => _HalamanJelajahState();
}

class _HalamanJelajahState extends State<HalamanJelajah> {
  int _selectedIndex = 0;

  // Widget untuk setiap tujuan bottom navigation
  final List<Widget> _pageOptions = [
    GridPakaian(gaya: 'Formal'),
    GridPakaian(gaya: 'Kasual'),
    GridPakaian(gaya: 'Vintage'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Koleksi'),
      ),
      body: Center(
        child: _pageOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event_seat),
            label: 'Formal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Kasual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Vintage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  // Fungsi untuk menangani perubahan tujuan Bottom Navigation Bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class GridPakaian extends StatelessWidget {
  final String gaya;

  GridPakaian({required this.gaya});

  @override
  Widget build(BuildContext context) {
    // Dummy data gambar pakaian, Anda perlu menggantinya dengan sumber gambar yang sesuai
    List<String> gambarPakaian = [
      'assets/download.png',
      'assets/therock.jpg',
      'assets/therock.jpg',
      // ... (tambahkan gambar sesuai kebutuhan)
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom
        crossAxisSpacing: 8.0, // Spasi antar kolom
        mainAxisSpacing: 8.0, // Spasi antar baris
      ),
      itemCount: gambarPakaian.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.asset(gambarPakaian[index]),
        );
      },
    );
  }
}


class HalamanJelajah2 extends StatefulWidget {
  @override
  _HalamanJelajahState createState() => _HalamanJelajahState();
}

class _HalamanJelajahState2 extends State<HalamanJelajah> {
  int _selectedIndex = 0;

  // Widget untuk setiap tujuan bottom navigation
  final List<Widget> _pageOptions = [
    Text('Formal'),
    Text('Kasual'),
    Text('Vintage'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Koleksi'),
      ),
      body: Center(
        child: _pageOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event_seat),
            label: 'Formal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Kasual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Vintage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  // Fungsi untuk menangani perubahan tujuan Bottom Navigation Bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Navigasi',
      home: HalamanBeranda(),
    );
  }
}

class HalamanBeranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum Navigasi'),
      ),
      endDrawer: Drawer( // Gunakan endDrawer agar drawer tampil dari sisi kanan
        child: ListView(
          // Penting: Hilangkan semua padding dari ListView
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text('Telkom University'),
                accountEmail: null, // Anda dapat menambahkan email di sini jika diperlukan
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/telkom.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Lihat Koleksi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanJelajah()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.man_3),
              title: Text('Akun'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanAkun()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Beranda'),
      ),
    );
  }
}

class HalamanJelajah1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Koleksi'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Lihat Koleksi'),
      ),
    );
  }
}

class HalamanAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Akun'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Akun'),
      ),
    );
  }
}
