import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protofilo/widget/card.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('ProjectsSection'),
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          ProjectCard(
            title: 'Note App',
            description:
                'This app allows seamless note management with features to add, update, and delete notes. Developed using Flutter for dynamic UI and Hive for efficient local database storage, it ensures smooth user interaction and organizational flexibility.',
            imageUrl:
                'https://images.unsplash.com/photo-1589739900243-4b52cd9b104e?q=80&w=1408&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            url: 'https://github.com/MohamedMaher11/Note-App',
          ),
          ProjectCard(
            title: 'Weather App',
            description:
                'A simple weather app created using Flutter and Dart and using Free API So there are lots of things to improve.😊A simple weather application to display current weather according to city name🌍',
            imageUrl: 'https://cdn-icons-png.flaticon.com/128/1163/1163661.png',
            url: 'https://github.com/MohamedMaher11/Weather-App',
          ),
          ProjectCard(
            title: 'friendCircle',
            description:
                'Friend Circle is a dynamic social platform connecting users worldwide. It features 📝 posting, 👍 liking, and 🖼️ sharing capabilities for engaging content interactions. Users can send 🤝 friend requests, engage in 💬 private messaging, and manage profiles with ease. 🗝️ Account creation includes email verification for security. The app offers a 🌙 dark theme and supports 🌍 multiple languages, enhancing user customization. Friend Circle fosters a vibrant community where connections thrive through seamless interactions and personalized experiences.',
            imageUrl:
                'https://github.com/MohamedMaher11/friendCircle/blob/main/assets/mylogo.png?raw=true',
            url: 'https://github.com/MohamedMaher11/friendCircle',
          ),
        ],
      ),
    );
  }
}
