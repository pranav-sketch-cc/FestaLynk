import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class SavedEventsPage extends StatelessWidget {
  const SavedEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text(
          "Saved Events",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          return _buildSavedEventCard(context, index);
        },
      ),
    );
  }

  Widget _buildSavedEventCard(BuildContext context, int index) {
    final List<Map<String, dynamic>> savedEvents = [
      {
        "title": "Global Tech Expo 2024",
        "location": "Chennai Trade Centre",
        "image": "images/image1.png",
        "date": "28 APR",
        "college": "IIT Madras",
        "description": "Global Tech Expo showcases latest innovations in Robotics, AI and Sustainable energy.",
        "mode": "Offline",
        "price": "₹500",
        "type": "Tech Expo",
        "deadline": "20 APR",
      },
      {
        "title": "Music Festival '24",
        "location": "Island Grounds, Chennai",
        "image": "images/image2.png",
        "date": "15 MAY",
        "college": "Anna University",
        "description": "A night of rhythm and soul featuring top independent artists.",
        "mode": "Offline",
        "price": "₹300",
        "type": "Cultural",
        "deadline": "10 MAY",
      },
      {
        "title": "Startup Pitch",
        "location": "IIT Madras",
        "image": "images/image3.png",
        "date": "05 JUN",
        "college": "IIT Madras",
        "description": "Watch emerging startups battle it out for seed funding.",
        "mode": "Offline",
        "price": "FREE",
        "type": "Hackathon",
        "deadline": "01 JUN",
      },
    ];

    final event = savedEvents[index % savedEvents.length];

    return Container(
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
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  event["image"]!,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.bookmark, size: 20, color: Color(0xFF1D61E7)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        event["title"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      event["date"]!,
                      style: const TextStyle(
                        color: Color(0xFF1D61E7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      event["location"]!,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
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
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF1D61E7)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "View Details",
                      style: TextStyle(color: Color(0xFF1D61E7)),
                    ),
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
