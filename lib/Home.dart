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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
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

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.red,
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
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  eventCard(
                    title: "Tech Innovators Summit",
                    location: "Chennai",
                    date: "25 APR",
                    image: "images/image1.png",
                  ),

                  eventCard(
                    title: "Entrepreneurs Conference",
                    location: "Hyderabad",
                    date: "03 MAY",
                    image: "images/image2.png",
                  ),

                  eventCard(
                    title: "Tech Innovators Summit",
                    location: "Chennai",
                    date: "25 APR",
                    image: "images/image1.png",
                  ),

                ],
              ),
            ),


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


            sectionTitle("Popular Colleges"),

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  collegeCard(
                      name:"Christ University",
                      place:"Bangalore",
                      image:"images/image3.png"
                  ),
                  collegeCard("VIT University", "Vellore","images/image4.png"),
                  collegeCard("New Prince", "Chennai","images/image3.png"),
                ],
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF1D61E7),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
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
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Text("View All", style: TextStyle(color: Color(0xFF1D61E7))),
        ],
      ),
    );
  }

  Widget eventCard({required String title, required String location, required String date, required String image}) {
    return Container(
      width: 190,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(image, height: 130, fit: BoxFit.contain, ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(location),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Save Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1D61E7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10
                  ),
                ),
              ),
            ),
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
        color: Color(0xFF1D61E7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(name, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget collegeCard(String name, String place, String image) {
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
          Image.asset(image, height: 100, fit: BoxFit.contain, ),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(place),
        ],
      ),
    );
  }
}