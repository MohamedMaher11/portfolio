import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  final String githubUrl;
  final String facebookUrl;
  final String linkedInUrl;
  final String twitterUrl;

  FooterSection({
    required this.githubUrl,
    required this.facebookUrl,
    required this.linkedInUrl,
    required this.twitterUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in Touch',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(
                icon: FontAwesomeIcons.github,
                onPressed: () => _launchURL(githubUrl),
              ),
              SizedBox(width: 20),
              _buildSocialButton(
                icon: FontAwesomeIcons.facebook,
                onPressed: () => _launchURL(facebookUrl),
              ),
              SizedBox(width: 20),
              _buildSocialButton(
                icon: FontAwesomeIcons.linkedin,
                onPressed: () => _launchURL(linkedInUrl),
              ),
              SizedBox(width: 20),
              _buildSocialButton(
                icon: FontAwesomeIcons.twitter,
                onPressed: () => _launchURL(twitterUrl),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Connect with Me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Feel free to contact me via social media.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: FaIcon(
        icon,
        color: Colors.white,
        size: 36,
      ),
      onPressed: onPressed,
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
