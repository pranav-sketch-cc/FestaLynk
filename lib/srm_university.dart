import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class SRMUniversityPage extends StatelessWidget {
  const SRMUniversityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "title": "Aaruush '24",
        "location": "KTR Campus, Chennai",
        "date": "24-27 SEP",
        "image": "images/image1.png",
        "college": "SRM University",
        "type": "Tech Fest",
        "mode": "Offline",
        "price": "₹500",
        "deadline": "15 SEP",
        "description": "Aaruush is the national-level techno-management fest of SRM Institute of Science and Technology. It hosts a multitude of events, challenges, and workshops across various domains."
      },
      {
        "title": "Milan '24",
        "location": "Main Grounds",
        "date": "01-04 MAR",
        "image": "images/image2.png",
        "college": "SRM University",
        "type": "Cultural",
        "mode": "Offline",
        "price": "₹300",
        "deadline": "20 FEB",
        "description": "Milan is the annual cultural festival of SRM. It is a four-day long celebration of art, music, and dance, featuring celebrity performances and competitive events."
      },
      {
        "title": "HackSRM 5.0",
        "location": "TP Ganesan Auditorium",
        "date": "10-11 OCT",
        "image": "images/image3.png",
        "college": "SRM University",
        "type": "Hackathon",
        "mode": "Offline",
        "price": "₹200",
        "deadline": "01 OCT",
        "description": "HackSRM is a 24-hour hackathon where students collaborate to build innovative solutions to real-world problems using technology."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("SRM University Events", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
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
                    registrationUrl: "https://srmist.edu.in/events",
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
