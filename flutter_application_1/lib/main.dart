import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/home_page.dart';
import 'pages/favorite_page.dart';
import 'pages/settings_page.dart';

//Bu proje, Erciyes Üniversitesi Mühendislik Fakültesi 
//Bilgisayar Mühendisliği bölümü Mobile Application Development dersi kapsamında, 
//Dr. Öğr. Üyesi FEHİM KÖYLÜ tarafından verilen proje ödevi için hazırlanmıştır.
//Projede BottomNavigationBar ile üç sayfalı bir yapı oluşturulmuştur.
//1030510276 - Merve Tarhan

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3 Sayfalı BottomNavigationBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritePage(),
    const SettingsPage(),
  ];

  final List<Widget> _navigationItems = [
    const Icon(Icons.home, size: 30),
    const Icon(Icons.favorite, size: 30),
    const Icon(Icons.settings, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, 
        color: Colors.white, 
        buttonBackgroundColor: Colors.white, 
        height: 60,
        index: _selectedIndex,
        items: _navigationItems,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
