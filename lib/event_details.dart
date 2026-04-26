import 'package:FestaLynk/registration_link.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String startDate;
  final String endDate;
  final String description;
  final String mode;
  final String collegeName;
  final String location;
  final String registrationUrl;
  final String registrationAmount;
  final String eventType;
  final String registrationDeadline;

  const EventDetailsPage({
    super.key,
    required this.title,
    required this.image,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.mode,
    required this.collegeName,
    required this.location,
    required this.registrationUrl,
    required this.registrationAmount,
    required this.eventType,
    required this.registrationDeadline,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("Event Details", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: double.infinity, height: 250, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D61E7).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          eventType,
                          style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        mode,
                        style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    collegeName,
                    style: const TextStyle(fontSize: 18, color: Color(0xFF1D61E7), fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  _buildDetailRow(Icons.calendar_today, "Duration", "$startDate - $endDate"),
                  _buildDetailRow(Icons.location_on, "Location", location),
                  _buildDetailRow(Icons.currency_rupee, "Registration Fee", registrationAmount),
                  _buildDetailRow(Icons.timer, "Deadline", registrationDeadline),
                  const SizedBox(height: 25),
                  const Text(
                    "Event Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegistrationLinkPage(registrationUrl: registrationUrl)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D61E7),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text(
                        "Register Now",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 20),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
