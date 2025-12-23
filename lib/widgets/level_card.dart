import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  final String level;
  final Color color;
  final int stars;
  final bool isLocked;
  final VoidCallback? onTap;

  LevelCard({
    required this.level,
    required this.color,
    this.stars = 0,
    this.isLocked = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLocked ? null : onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Icon(
                Icons.star,
                size: 24,
                color: index < stars ? Color(0xFFFFD700) : Colors.white24,
              );
            }),
          ),
          SizedBox(height: 12),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: PentagonClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [color, color.withOpacity(0.7)],
                        ),
                      ),
                      child: Center(
                        child: isLocked
                            ? Icon(Icons.lock, color: Colors.yellow, size: 45)
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Level',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    level,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                  if (!isLocked)
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PentagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width, size.height * 0.38);
    path.lineTo(size.width * 0.82, size.height);
    path.lineTo(size.width * 0.18, size.height);
    path.lineTo(0, size.height * 0.38);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
