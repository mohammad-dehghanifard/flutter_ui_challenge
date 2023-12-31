import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/%20advertising_app/screen/ads_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsMainScreen extends StatefulWidget {
  const AdsMainScreen({super.key});

  @override
  State<AdsMainScreen> createState() => _AdsMainScreenState();
}

class _AdsMainScreenState extends State<AdsMainScreen> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer:  Drawer(
          backgroundColor: const Color(0xFF5C45DB),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset("assets/ads_ui/logo.png",height: 80),
              const SizedBox(height: 20),
              Text("به تیم هیتال خوش آمدید",style: GoogleFonts.vazirmatn(fontWeight: FontWeight.w900,fontSize: 18,color: Colors.white),)
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.white,
              selectedItemColor: const Color(0xFF9EE2FF),
              onTap: (value) {
                _selectedTab = value;
                setState(() {});
              },
              currentIndex: _selectedTab,
              selectedLabelStyle: GoogleFonts.vazirmatn(),
              unselectedLabelStyle: GoogleFonts.vazirmatn(),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "صفحه اصلی"),
                BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "درخواست ها"),
                BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "حساب کاربری"),
                BottomNavigationBarItem(icon: Icon(Icons.logout),label: "خروج از حساب"),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: IndexedStack(
            index: _selectedTab,
            children: const [
              AdsHomeScreen(),
              Center(child: Text("درخواست ها")),
              Center(child: Text("حساب کاربری")),
              Center(child: Text("خروج از حساب")),
            ],
          ),
        ),
      ),
    );
  }
}
