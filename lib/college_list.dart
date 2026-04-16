import 'package:flutter/material.dart';

class CollegeListPage extends StatelessWidget {
  const CollegeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> colleges = [
      {
        "name": "Christ University",
        "place": "Bangalore",
        "image": "images/img_2.png"
      },
      {
        "name": "VIT University",
        "place": "Vellore",
        "image": "images/img_3.png"
      },
      {
        "name": "New Prince",
        "place": "Chennai",
        "image": "images/img_4.png"
      },
      {
        "name": "IIT Madras",
        "place": "Chennai",
        "image": "images/img_5.png"
      },
      {
        "name": "Anna University",
        "place": "Chennai",
        "image": "images/img_6.png"
      },
      {
        "name": "SRM University",
        "place": "Chennai",
        "image": "images/img_7.png"
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      appBar: AppBar(
        title: const Text("All Colleges",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: colleges.length,
        itemBuilder: (context, index) {
          final college = colleges[index];
          return _buildCollegeCard(context, college["name"]!, college["place"]!, college["image"]!);
        },
      ),
    );
  }

  Widget _buildCollegeCard(BuildContext context, String name, String place, String image) {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 100,
                  color: Colors.grey[200],
                  child: const Icon(Icons.school, color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 12, color: Colors.grey),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(
                        place,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
