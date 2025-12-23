import 'package:flutter/material.dart';
import '../widgets/level_card.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

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
            top: 100,
            right: -30,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white.withOpacity(0.03),
            ),
          ),
          Positioned(
            bottom: 100,
            left: -20,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white.withOpacity(0.03),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Levels',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF37E9BB),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 48),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(24),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    children: [
                      LevelCard(
                        level: '01',
                        color: Color(0xFF9065FF),
                        stars: 3,
                        onTap: () {},
                      ),
                      LevelCard(
                        level: '02',
                        color: Color(0xFF4DB5FF),
                        stars: 3,
                        onTap: () {},
                      ),
                      LevelCard(
                        level: '03',
                        color: Color(0xFFFF9F47),
                        stars: 2,
                        onTap: () {},
                      ),
                      LevelCard(
                        level: '04',
                        color: Color(0xFF37E9BB),
                        stars: 1,
                        onTap: () {},
                      ),
                      LevelCard(
                        level: '05',
                        color: Color(0xFFFF4D94),
                        stars: 0,
                        onTap: () {},
                      ),
                      LevelCard(
                        level: '',
                        color: Color(0xFF6949FF).withOpacity(0.5),
                        isLocked: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
