import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "title": "Tech Innovators Summit",
        "location": "Chennai",
        "date": "25 APR",
        "image": "images/img.png",
        "college": "IIT Madras",
        "type": "Hackathon",
        "mode": "Offline",
        "price": "₹500",
        "deadline": "20 APR",
        "description": "Join the elite Tech Innovators Summit at IIT Madras. Experience cutting-edge workshops, network with industry leaders, and showcase your groundbreaking projects."
      },
      {
        "title": "Entrepreneurs Conference",
        "location": "Hyderabad",
        "date": "03 MAY",
        "image": "images/img_1.png",
        "college": "ISB Hyderabad",
        "type": "Conference",
        "mode": "Hybrid",
        "price": "₹1200",
        "deadline": "28 APR",
        "description": "Connect with successful startup founders and venture capitalists. Gain insights into the entrepreneurial ecosystem and learn how to scale your business."
      },
      {
        "title": "Data Science Workshop",
        "location": "Online",
        "date": "10 MAY",
        "image": "images/image1.png",
        "college": "VIT Vellore",
        "type": "Workshop",
        "mode": "Online",
        "price": "₹200",
        "deadline": "05 MAY",
        "description": "A comprehensive workshop on Data Science and Machine Learning. Learn from industry experts and work on real-world projects."
      },
      {
        "title": "Cultural Fusion '24",
        "location": "Bangalore",
        "date": "15 JUN",
        "image": "images/img_2.png",
        "college": "Christ University",
        "type": "Cultural",
        "mode": "Offline",
        "price": "FREE",
        "deadline": "10 JUN",
        "description": "Celebrate the spirit of diversity with music, dance, and art performances from across the globe."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Upcoming Events", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
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
                    registrationUrl: "https://festalynk.com/register",
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
                            const Icon(Icons.school_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(event["college"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
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
