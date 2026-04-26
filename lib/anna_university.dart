import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class AnnaUniversityPage extends StatelessWidget {
  const AnnaUniversityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "title": "Kurukshetra '24",
        "location": "CEG Campus, Chennai",
        "date": "15-18 FEB",
        "image": "images/image1.png",
        "college": "Anna University",
        "type": "Hackathon",
        "mode": "Offline",
        "price": "₹300",
        "deadline": "10 FEB",
        "description": "Kurukshetra is the international techno-management fest of CEG, Anna University. It is the first techno-management fest in India to be awarded UNESCO patronage."
      },
      {
        "title": "Agni '24",
        "location": "ACT Campus",
        "date": "20-22 MAR",
        "image": "images/image2.png",
        "college": "Anna University",
        "type": "Cultural",
        "mode": "Offline",
        "price": "₹200",
        "deadline": "15 MAR",
        "description": "Agni is the inter-departmental cultural fest of ACT Campus, Anna University. It's a platform for students to express their creativity and cultural heritage."
      },
      {
        "title": "Workshop on Blockchain",
        "location": "Knowledge Data Centre",
        "date": "05 APR",
        "image": "images/image3.png",
        "college": "Anna University",
        "type": "Workshops",
        "mode": "Offline",
        "price": "₹150",
        "deadline": "01 APR",
        "description": "A hands-on workshop covering the fundamentals of blockchain technology, smart contracts, and decentralized applications."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Anna University Events", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPage(
                    title: event["title"],
                    image: event["image"],
                    startDate: event["date"],
                    endDate: event["date"],
                    description: event["description"],
                    mode: event["mode"],
                    collegeName: event["college"],
                    location: event["location"],
                    registrationUrl: "https://annauniv.edu/events",
                    registrationAmount: event["price"],
                    eventType: event["type"],
                    registrationDeadline: event["deadline"],
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
                      child: Image.asset(event["image"], height: 180, width: double.infinity, fit: BoxFit.cover),
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
                            Text(event["type"], style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12)),
                            Text(event["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(event["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(event["location"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.calendar_today, size: 14, color: Color(0xFF1D61E7)),
                            const SizedBox(width: 4),
                            Text(event["date"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
