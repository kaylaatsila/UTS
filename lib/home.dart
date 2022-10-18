import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ImageIcon(AssetImage('yubis-logo.png')),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_rounded)),
        ],
      ),
      body: Container(
          child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  constraints:
                      const BoxConstraints(minHeight: 200, minWidth: 393),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('banner3.jpeg'),
                          fit: BoxFit.cover)))
            ],
          ),
          Row(
            children: [
              Column(
                children: [Text('Kategori Produk'), ListView()],
              )
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Produk'), ListView()],
              )
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.food_bank_rounded,
                ),
                label: 'Produk'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_rounded,
                ),
                label: 'Promo'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.note_rounded,
                ),
                label: 'Transaksi'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                ),
                label: 'Akun'),
          ]),
    ));
  }
}
