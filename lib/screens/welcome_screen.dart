import 'package:flutter/material.dart';
import 'levels_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF2E1371), Color(0xFF130B2B)],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: -20,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white.withOpacity(0.05),
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white.withOpacity(0.1),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 50,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 2),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFF00FF), Color(0xFFFFCC00)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF2E1371),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.lightbulb_rounded,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Quizzles',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF37E9BB),
                    letterSpacing: 2,
                  ),
                ),
                Spacer(),
                Text(
                  "Let's Play!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Play now and Level up',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LevelsScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6949FF),
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'Play Now',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 65),
                      side: BorderSide(color: Color(0xFF6949FF), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF6949FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
