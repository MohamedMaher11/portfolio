import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protofilo/widget/skills.dart';

class AboutMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('AboutMeSection'),
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Graduated from Faculty of Computer and Informatics, Suez Canal University. I am a professional Flutter developer with experience in creating high-quality, responsive mobile applications. I have worked on various projects including e-commerce apps, social media platforms, and utility apps. I am passionate about coding, problem-solving, and always eager to learn new technologies.',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Skills:',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 12,
            children: [
              SkillCircle(skill: 'Flutter & Dart', percentage: 90),
              SkillCircle(skill: 'Firebase', percentage: 80),
              SkillCircle(skill: 'RESTful APIs', percentage: 75),
              SkillCircle(skill: 'Git & GitHub', percentage: 85),
              SkillCircle(skill: 'UI/UX Design', percentage: 70),
              SkillCircle(skill: 'Agile Methodologies', percentage: 65),
              SkillCircle(skill: 'Google Maps API', percentage: 75),
              SkillCircle(skill: 'Payments Integration', percentage: 70),
              SkillCircle(skill: 'State Management', percentage: 80),
              SkillCircle(skill: 'Flutter Animations', percentage: 75),
              SkillCircle(skill: 'Responsive Design', percentage: 70),
              SkillCircle(skill: 'SQL', percentage: 85),
              SkillCircle(skill: 'Hive (Local Database)', percentage: 80),
              SkillCircle(skill: 'C++', percentage: 80),
              SkillCircle(skill: 'OOP', percentage: 85),
              SkillCircle(skill: 'SOLID Principles', percentage: 80),
              SkillCircle(skill: 'Data Structures', percentage: 75),
              SkillCircle(skill: 'Microsoft Office', percentage: 90),
            ],
          ),
        ],
      ),
    );
  }
}
