import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/explore_header.png", 
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
                  ],
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text("Search for events, colleges...", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),

            _buildSectionHeader("Recommended for you"),
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  _buildRecommendedCard(
                    context,
                    "Global Tech Expo 2024",
                    "Chennai Trade Centre",
                    "images/image1.png",
                    "28 APR",
                    "IIT Madras",
                    "Global Tech Expo showcases latest innovations in Robotics, AI and Sustainable energy. Join us for 3 days of learning and networking.",
                    "Offline",
                    "₹500",
                    "Tech Expo",
                    "20 APR",
                  ),
                  _buildRecommendedCard(
                    context,
                    "Music Festival '24",
                    "Island Grounds, Chennai",
                    "images/image2.png",
                    "15 MAY",
                    "Anna University",
                    "A night of rhythm and soul featuring top independent artists. Experience the best live music in the city.",
                    "Offline",
                    "₹300",
                    "Cultural",
                    "10 MAY",
                  ),
                ],
              ),
            ),

            _buildSectionHeader("Trending Now"),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  _buildTrendingCard(
                    context,
                    "Startup Pitch",
                    "images/image3.png",
                    "5k+ Joined",
                    "IIT Madras",
                    "05 JUN",
                    "Watch emerging startups battle it out for seed funding. Insights from top VCs.",
                    "Offline",
                    "FREE",
                    "Hackathon",
                    "01 JUN",
                  ),
                  _buildTrendingCard(
                    context,
                    "Art Exhibition",
                    "images/image4.png",
                    "2k+ Joined",
                    "Christ University",
                    "20 JUN",
                    "Discover breathtaking art pieces from students across the country.",
                    "Offline",
                    "FREE",
                    "Cultural",
                    "15 JUN",
                  ),
                  _buildTrendingCard(
                    context,
                    "Hackathon v3",
                    "images/image1.png",
                    "8k+ Joined",
                    "VIT Vellore",
                    "15 JUL",
                    "48-hour coding marathon. Build, Innovate, Win big.",
                    "Offline",
                    "₹200",
                    "Hackathon",
                    "10 JUL",
                  ),
                ],
              ),
            ),

            _buildSectionHeader("Events near you"),
            _buildNearMeItem(
              context,
              "Workshop on AI",
              "IIT Madras, Chennai",
              "images/image2.png",
              "FREE",
              "IIT Madras",
              "25 OCT",
              "Hands-on workshop on generative AI models.",
              "Offline",
              "Seminar",
              "20 OCT",
            ),
            _buildNearMeItem(
              context,
              "Photography Meet",
              "Besant Nagar Beach",
              "images/image3.png",
              "₹200",
              "Photography Club",
              "12 NOV",
              "Join fellow photographers for a sunset photo walk.",
              "Offline",
              "Cultural",
              "10 NOV",
            ),
            _buildNearMeItem(
              context,
              "Coding Contest",
              "Anna University",
              "images/image4.png",
              "FREE",
              "Anna University",
              "05 DEC",
              "Algorithm and Data Structures competitive programming.",
              "Offline",
              "Hackathon",
              "01 DEC",
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 4, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "See All",
              style: TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedCard(
    BuildContext context,
    String title,
    String location,
    String image,
    String date,
    String college,
    String description,
    String mode,
    String price,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: location,
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        width: 280,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(image, height: 140, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(Icons.bookmark_border, size: 20, color: Color(0xFF1D61E7)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Text(date, style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingCard(
    BuildContext context,
    String title,
    String image,
    String stats,
    String college,
    String date,
    String description,
    String mode,
    String price,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: "On Campus",
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        width: 130,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, height: 80, width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    stats,
                    style: const TextStyle(color: Colors.green, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNearMeItem(
    BuildContext context,
    String title,
    String location,
    String image,
    String price,
    String college,
    String date,
    String description,
    String mode,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: location,
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, height: 70, width: 70, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(location, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF1D61E7).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                price,
                style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
