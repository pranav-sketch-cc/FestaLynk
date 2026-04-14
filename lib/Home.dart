// ignore_for_file: deprecated_member_use

import 'package:FestaLynk/about_us.dart';
import 'package:FestaLynk/create.dart';
import 'package:FestaLynk/event_details.dart';
import 'package:FestaLynk/explore.dart';
import 'package:FestaLynk/notifications.dart';
import 'package:FestaLynk/profile.dart';
import 'package:FestaLynk/saved_events.dart';
import 'package:FestaLynk/subscription.dart';
import 'package:flutter/material.dart';
import 'package:FestaLynk/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      _buildHomeContent(),
      const CreatePage(),
      const ExplorePage(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello!", style: TextStyle(fontSize: 14, color: Colors.black54)),
            Text("Prashanth",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationsPage()),
              );
            },
            icon: Stack(
              children: [
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1D61E7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Color(0xFF1D61E7)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Prashanth',
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'prashanth@email.com',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text('Subscription'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubscriptionPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_border),
              title: const Text('Saved Events'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SavedEventsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.find_in_page),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUsPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1D61E7),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "images/home1.png",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 4)
                ],
              ),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text("Search", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
          sectionTitle("Upcoming Events"),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                eventCard(
                  title: "Tech Innovators Summit",
                  location: "Chennai",
                  date: "25 APR",
                  image: "images/img.png",
                  collegeName: "IIT Madras",
                  startDate: "25 APR",
                  endDate: "27 APR",
                  description: "Join the elite Tech Innovators Summit at IIT Madras. Experience cutting-edge workshops, network with industry leaders, and showcase your groundbreaking projects.",
                  mode: "Offline",
                  registrationUrl: "https://iitm.ac.in/techsummit",
                  registrationAmount: "₹500",
                  eventType: "Hackathon",
                  registrationDeadline: "20 APR",
                ),
                eventCard(
                  title: "Entrepreneurs Conference",
                  location: "Hyderabad",
                  date: "03 MAY",
                  image: "images/img_1.png",
                  collegeName: "ISB Hyderabad",
                  startDate: "03 MAY",
                  endDate: "05 MAY",
                  description: "Connect with successful startup founders and venture capitalists. Gain insights into the entrepreneurial ecosystem and learn how to scale your business.",
                  mode: "Hybrid",
                  registrationUrl: "https://isb.edu/conference",
                  registrationAmount: "₹1200",
                  eventType: "Conference",
                  registrationDeadline: "28 APR",
                ),
                eventCard(
                  title: "Tech Innovators Summit",
                  location: "Chennai",
                  date: "25 APR",
                  image: "images/img.png",
                  collegeName: "IIT Madras",
                  startDate: "25 APR",
                  endDate: "27 APR",
                  description: "Join the elite Tech Innovators Summit at IIT Madras. Experience cutting-edge workshops, network with industry leaders, and showcase your groundbreaking projects.",
                  mode: "Offline",
                  registrationUrl: "https://iitm.ac.in/techsummit",
                  registrationAmount: "₹500",
                  eventType: "Hackathon",
                  registrationDeadline: "20 APR",
                ),
              ],
            ),
          ),
          sectionTitle("Browse Categories"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoryCard("images/vector1.png", "Workshops"),
                categoryCard("images/vector2.png", "Seminars"),
                categoryCard("images/vector3.png", "Cultural"),
                categoryCard("images/vector4.png", "Hackathons"),
              ],
            ),
          ),
          sectionTitle("Popular Colleges"),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                collegeCard("Christ University", "Bangalore", "images/img_2.png"),
                collegeCard("VIT University", "Vellore", "images/img_3.png"),
                collegeCard("New Prince", "Chennai", "images/img_4.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          TextButton(
            onPressed: () {},
            child: const Text(
              "View All",
              style: TextStyle(color: Color(0xFF1D61E7)),
            ),
          ),
        ],
      ),
    );
  }

  Widget eventCard({
    required String title,
    required String location,
    required String date,
    required String image,
    required String collegeName,
    required String startDate,
    required String endDate,
    required String description,
    required String mode,
    required String registrationUrl,
    required String registrationAmount,
    required String eventType,
    required String registrationDeadline,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: startDate,
              endDate: endDate,
              description: description,
              mode: mode,
              collegeName: collegeName,
              location: location,
              registrationUrl: registrationUrl,
              registrationAmount: registrationAmount,
              eventType: eventType,
              registrationDeadline: registrationDeadline,
            ),
          ),
        );
      },

      child: Container(
        width: 190,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, height: 120, width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(location, maxLines: 1, overflow: TextOverflow.ellipsis),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Saved" , textAlign: TextAlign.center,),
                            backgroundColor: Colors.black.withOpacity(0.5),
                            duration: const Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 100,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D61E7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                      ),
                      child: const Text(
                        "Save Now",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryCard(String image, String name) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1D61E7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(image, height: 20, fit: BoxFit.contain),
          const SizedBox(width: 10),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 16) ),
        ],
      ),
    );
  }

  Widget collegeCard(String name, String place, String image) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image, height: 100, width: double.infinity, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17), maxLines: 1, overflow: TextOverflow.ellipsis),
                Text(place, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
