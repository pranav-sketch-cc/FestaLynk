import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class WorkshopsPage extends StatelessWidget {
  const WorkshopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> workshops = [
      {
        "title": "Flutter UI Workshop",
        "location": "Online",
        "date": "10 MAY",
        "image": "images/image1.png",
        "college": "VIT Vellore",
        "type": "Workshop",
        "mode": "Online",
        "price": "₹200",
        "deadline": "05 MAY",
        "description": "A comprehensive workshop on building beautiful UIs with Flutter. Learn about widgets, state management, and more."
      },
      {
        "title": "AI & ML Basics",
        "location": "Chennai",
        "date": "15 MAY",
        "image": "images/image2.png",
        "college": "IIT Madras",
        "type": "Workshop",
        "mode": "Offline",
        "price": "₹500",
        "deadline": "10 MAY",
        "description": "Get started with Artificial Intelligence and Machine Learning. Hands-on sessions with industry experts."
      },
      {
        "title": "Ethical Hacking",
        "location": "Bangalore",
        "date": "20 MAY",
        "image": "images/image3.png",
        "college": "Christ University",
        "type": "Workshop",
        "mode": "Offline",
        "price": "FREE",
        "deadline": "15 MAY",
        "description": "Learn the fundamentals of cybersecurity and ethical hacking. Protect systems and networks from threats."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Workshops", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workshops.length,
        itemBuilder: (context, index) {
          final workshop = workshops[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPage(
                    title: workshop["title"],
                    image: workshop["image"],
                    startDate: workshop["date"],
                    endDate: workshop["date"],
                    description: workshop["description"],
                    mode: workshop["mode"],
                    collegeName: workshop["college"],
                    location: workshop["location"],
                    registrationUrl: "https://festalynk.com/register",
                    registrationAmount: workshop["price"],
                    eventType: workshop["type"],
                    registrationDeadline: workshop["deadline"],
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
                      child: Image.asset(workshop["image"], height: 180, width: double.infinity, fit: BoxFit.cover),
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
                            Text(workshop["type"], style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12)),
                            Text(workshop["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(workshop["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.school_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(workshop["college"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.calendar_today, size: 14, color: Color(0xFF1D61E7)),
                            const SizedBox(width: 4),
                            Text(workshop["date"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
