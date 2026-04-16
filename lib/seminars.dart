import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class SeminarsPage extends StatelessWidget {
  const SeminarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> seminars = [
      {
        "title": "Future of AI & Robotics",
        "location": "Anna University, Chennai",
        "date": "12 NOV",
        "image": "images/image1.png",
        "college": "Anna University",
        "type": "Seminar",
        "mode": "Offline",
        "price": "FREE",
        "deadline": "08 NOV",
        "description": "A deep dive into how AI and Robotics are shaping the next decade of technology and industry."
      },
      {
        "title": "Startup ecosystem in India",
        "location": "IIT Madras",
        "date": "18 NOV",
        "image": "images/image2.png",
        "college": "IIT Madras",
        "type": "Seminar",
        "mode": "Hybrid",
        "price": "₹100",
        "deadline": "15 NOV",
        "description": "Learn about the challenges and opportunities in the Indian startup landscape from successful founders."
      },
      {
        "title": "Cyber Security Trends",
        "location": "Online",
        "date": "22 NOV",
        "image": "images/image3.png",
        "college": "SRM University",
        "type": "Seminar",
        "mode": "Online",
        "price": "FREE",
        "deadline": "20 NOV",
        "description": "Stay ahead of the curve with the latest trends and threats in the world of cybersecurity."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Seminars", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: seminars.length,
        itemBuilder: (context, index) {
          final seminar = seminars[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPage(
                    title: seminar["title"],
                    image: seminar["image"],
                    startDate: seminar["date"],
                    endDate: seminar["date"],
                    description: seminar["description"],
                    mode: seminar["mode"],
                    collegeName: seminar["college"],
                    location: seminar["location"],
                    registrationUrl: "https://festalynk.com/register",
                    registrationAmount: seminar["price"],
                    eventType: seminar["type"],
                    registrationDeadline: seminar["deadline"],
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
                      child: Image.asset(seminar["image"], height: 180, width: double.infinity, fit: BoxFit.cover),
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
                            Text(seminar["type"], style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12)),
                            Text(seminar["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(seminar["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.school_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(seminar["college"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.calendar_today, size: 14, color: Color(0xFF1D61E7)),
                            const SizedBox(width: 4),
                            Text(seminar["date"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
