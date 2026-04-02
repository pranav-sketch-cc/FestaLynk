import 'package:flutter/material.dart';
import 'package:smp/login.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        leading: IconButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));}, icon: const Icon(Icons.menu)),
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
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 10),
          CircleAvatar(child: Icon(Icons.person)),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [



            SizedBox(height: 50,),

            // 🔍 Search
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

            // 📌 Upcoming Events
            sectionTitle("Upcoming Events"),

            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  eventCard(
                    title: "Tech Innovators Summit",
                    location: "Chennai",
                    date: "25 APR",
                    image: "https://via.placeholder.com/200",
                  ),
                  eventCard(
                    title: "Entrepreneurs Conference",
                    location: "Hyderabad",
                    date: "03 MAY",
                    image: "https://via.placeholder.com/200",
                  ),
                ],
              ),
            ),

            // 📂 Categories
            sectionTitle("Browse Categories"),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryCard("Workshops"),
                  categoryCard("Seminars"),
                  categoryCard("Cultural"),
                  categoryCard("Hackathons"),
                ],
              ),
            ),

            // 🏫 Colleges
            sectionTitle("Popular Colleges"),

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  collegeCard("Christ University", "Bangalore"),
                  collegeCard("VIT University", "Vellore"),
                  collegeCard("New Prince", "Chennai"),
                ],
              ),
            ),
          ],
        ),
      ),

      // 🔻 Bottom Nav
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        ],
      ),
    );
  }

  // 🔹 Reusable Widgets

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Text("View All", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget eventCard({required String title, required String location, required String date, required String image}) {
    return Container(
      width: 220,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.network(image, height: 120, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(location),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save Now"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoryCard(String name) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1170EB), Color(0xFF3189E7)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(name, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget collegeCard(String name, String place) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Placeholder(fallbackHeight: 100),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(place),
        ],
      ),
    );
  }
}