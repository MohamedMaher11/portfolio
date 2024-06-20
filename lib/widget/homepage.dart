import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protofilo/widget/Section.dart';
import 'package:protofilo/widget/about_me.dart';
import 'package:protofilo/widget/contanct.dart';
import 'package:protofilo/widget/herosection.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  final String profileImageUrl =
      'https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-1/362296016_3579682498930540_5195366226102903571_n.jpg?stp=dst-jpg_p200x200&_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=5qprtvitfHwQ7kNvgHV7AB0&_nc_ht=scontent.fcai10-1.fna&oh=00_AYBf9oVv3m6kL6sCM-QHDKLmmhD80OyH4CDnb9rsA9l3qA&oe=66767305';
  final String githubUrl = 'https://github.com/MohamedMaher11';
  final String facebookUrl =
      'https://www.facebook.com/profile.php?id=100006664743112 ';
  final String linkedInUrl =
      'https://www.linkedin.com/in/mohamed-maher-4b55102b4/';
  final String twitterUrl = 'https://x.com/iniesta12345671';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => _scrollToSection(0),
            child:
                Text('Home', style: GoogleFonts.poppins(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(1),
            child: Text('Projects',
                style: GoogleFonts.poppins(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(2),
            child:
                Text('About', style: GoogleFonts.poppins(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(3),
            child: Text('Contact',
                style: GoogleFonts.poppins(color: Colors.white)),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: ScrollablePositionedList.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return HeroSection(profileImageUrl: profileImageUrl);
            case 1:
              return ProjectsSection();
            case 2:
              return AboutMeSection();
            case 3:
              return FooterSection(
                  githubUrl: githubUrl,
                  facebookUrl: facebookUrl,
                  linkedInUrl: linkedInUrl,
                  twitterUrl: twitterUrl);
            default:
              return Container();
          }
        },
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }

  void _scrollToSection(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
