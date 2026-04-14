import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'images/FestaLynk_logo_with_tagline.png',
              width: 250,
            ),
            const SizedBox(height: 40),
            const Text(
              "Welcome to FestaLynk",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D61E7),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "FestaLynk is a premier commercial platform designed to bridge the gap between college event organizers and students. Our mission is to provide a seamless and vibrant ecosystem where campus life comes alive.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF6F7994),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            _buildFeatureItem(
              Icons.event_available,
              "Discover Events",
              "Stay updated with the latest workshops, seminars, cultural fests, and hackathons happening in colleges around you.",
            ),
            _buildFeatureItem(
              Icons.campaign,
              "Showcase Talent",
              "Organizers can easily promote their events to a wide audience of students across different regions.",
            ),
            _buildFeatureItem(
              Icons.groups,
              "Build Community",
              "Connecting students with opportunities to learn, network, and celebrate the spirit of college life.",
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 20),
            const Text(
              "Version 1.0.0",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              "© 2024 FestaLynk. All rights reserved.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF1D61E7).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF1D61E7), size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6F7994),
                    height: 1.4,
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
