import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class HackathonsPage extends StatelessWidget {
  const HackathonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> hackathons = [
      {
        "title": "Smart India Hackathon",
        "location": "Chennai",
        "date": "15 DEC",
        "image": "images/image1.png",
        "college": "IIT Madras",
        "type": "Hackathon",
        "mode": "Offline",
        "price": "₹200",
        "deadline": "10 DEC",
        "description": "Smart India Hackathon is a nationwide initiative to provide students a platform to solve some of the pressing problems we face in our daily lives."
      },
      {
        "title": "Code 4 Cause",
        "location": "Vellore",
        "date": "22 DEC",
        "image": "images/image2.png",
        "college": "VIT Vellore",
        "type": "Hackathon",
        "mode": "Hybrid",
        "price": "FREE",
        "deadline": "18 DEC",
        "description": "A 48-hour coding challenge aimed at building software solutions for social causes. Join us and code for a better world."
      },
      {
        "title": "Innovate-X 2024",
        "location": "Online",
        "date": "05 JAN",
        "image": "images/image3.png",
        "college": "SRM University",
        "type": "Hackathon",
        "mode": "Online",
        "price": "₹150",
        "deadline": "01 JAN",
        "description": "Unleash your creativity at Innovate-X. A global hackathon where technology meets innovation to build the future."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Hackathons", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: hackathons.length,
        itemBuilder: (context, index) {
          final hackathon = hackathons[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPage(
                    title: hackathon["title"],
                    image: hackathon["image"],
                    startDate: hackathon["date"],
                    endDate: hackathon["date"],
                    description: hackathon["description"],
                    mode: hackathon["mode"],
                    collegeName: hackathon["college"],
                    location: hackathon["location"],
                    registrationUrl: "https://festalynk.com/register",
                    registrationAmount: hackathon["price"],
                    eventType: hackathon["type"],
                    registrationDeadline: hackathon["deadline"],
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
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
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(hackathon["image"], height: 180, width: double.infinity, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(hackathon["type"], style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12)),
                            Text(hackathon["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(hackathon["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.school_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(hackathon["college"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.calendar_today, size: 14, color: Color(0xFF1D61E7)),
                            const SizedBox(width: 4),
                            Text(hackathon["date"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
