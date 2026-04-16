import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class CulturalsPage extends StatelessWidget {
  const CulturalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> culturals = [
      {
        "title": "Spring Musical Night",
        "location": "Christ University, Bangalore",
        "date": "25 NOV",
        "image": "images/image3.png",
        "college": "Christ University",
        "type": "Cultural",
        "mode": "Offline",
        "price": "₹200",
        "deadline": "22 NOV",
        "description": "An annual celebration featuring live band performances and dance showcases."
      },
      {
        "title": "Fusion Dance Fest",
        "location": "Anna University, Chennai",
        "date": "15 DEC",
        "image": "images/image1.png",
        "college": "Anna University",
        "type": "Cultural",
        "mode": "Offline",
        "price": "FREE",
        "deadline": "10 DEC",
        "description": "Experience a vibrant mix of traditional and contemporary dance forms."
      },
      {
        "title": "Art & Craft Exhibition",
        "location": "IIT Madras",
        "date": "05 JAN",
        "image": "images/image2.png",
        "college": "IIT Madras",
        "type": "Cultural",
        "mode": "Offline",
        "price": "₹50",
        "deadline": "01 JAN",
        "description": "Showcase of handmade crafts and stunning artworks by talented students."
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Culturals", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: culturals.length,
        itemBuilder: (context, index) {
          final cultural = culturals[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsPage(
                    title: cultural["title"],
                    image: cultural["image"],
                    startDate: cultural["date"],
                    endDate: cultural["date"],
                    description: cultural["description"],
                    mode: cultural["mode"],
                    collegeName: cultural["college"],
                    location: cultural["location"],
                    registrationUrl: "https://festalynk.com/register",
                    registrationAmount: cultural["price"],
                    eventType: cultural["type"],
                    registrationDeadline: cultural["deadline"],
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
                      child: Image.asset(cultural["image"], height: 180, width: double.infinity, fit: BoxFit.cover),
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
                            Text(cultural["type"], style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12)),
                            Text(cultural["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(cultural["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.school_outlined, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(cultural["college"], style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.calendar_today, size: 14, color: Color(0xFF1D61E7)),
                            const SizedBox(width: 4),
                            Text(cultural["date"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
