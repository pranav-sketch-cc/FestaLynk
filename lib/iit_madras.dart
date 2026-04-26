import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class IITMadrasPage extends StatelessWidget {
  const IITMadrasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "title": "Shaastra '24",
        "location": "IIT Madras Campus",
        "date": "04-07 JAN",
        "image": "images/image1.png",
        "college": "IIT Madras",
        "type": "Hackathon",
        "mode": "Offline",
        "price": "₹500",
        "deadline": "25 DEC",
        "description": "Shaastra is the annual technical festival of IIT Madras. It is the first ISO-certified student-run festival in the world. It features a plethora of events, workshops, and competitions."
      },
      {
        "title": "Saarang '24",
        "location": "Open Air Theatre",
        "date": "10-14 JAN",
        "image": "images/image2.png",
        "college": "IIT Madras",
        "type": "Cultural",
        "mode": "Offline",
        "price": "₹400",
        "deadline": "01 JAN",
        "description": "Saarang is the annual social and cultural festival of IIT Madras. It is one of the largest student-run festivals in India, attracting thousands of participants from across the country."
      },
      {
        "title": "AI Summit",
        "location": "Research Park",
        "date": "15 FEB",
        "image": "images/image3.png",
        "college": "IIT Madras",
        "type": "Seminars",
        "mode": "Offline",
        "price": "₹200",
        "deadline": "10 FEB",
        "description": "A gathering of AI experts and researchers to discuss the latest advancements in artificial intelligence and its impact on various industries."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("IIT Madras Events", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
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
                    registrationUrl: "https://shaastra.org",
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
