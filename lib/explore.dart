import 'package:FestaLynk/all_events.dart';
import 'package:FestaLynk/event_details.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _allEvents = [];
  List<Map<String, dynamic>> _filteredEvents = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _allEvents = [
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
      {
        "title": "Art Exhibition",
        "location": "Christ University",
        "image": "images/image4.png",
        "date": "20 JUN",
        "college": "Christ University",
        "description": "Discover breathtaking art pieces from students across the country.",
        "mode": "Offline",
        "price": "FREE",
        "type": "Cultural",
        "deadline": "15 JUN",
      },
      {
        "title": "Hackathon v3",
        "location": "VIT Vellore",
        "image": "images/image1.png",
        "date": "15 JUL",
        "college": "VIT Vellore",
        "description": "48-hour coding marathon. Build, Innovate, Win big.",
        "mode": "Offline",
        "price": "₹200",
        "type": "Hackathon",
        "deadline": "10 JUL",
      },
      {
        "title": "Workshop on AI",
        "location": "IIT Madras, Chennai",
        "image": "images/image2.png",
        "date": "25 OCT",
        "college": "IIT Madras",
        "description": "Hands-on workshop on generative AI models.",
        "mode": "Offline",
        "price": "FREE",
        "type": "Seminar",
        "deadline": "20 OCT",
      },
    ];
    _filteredEvents = _allEvents;
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allEvents;
      setState(() {
        _isSearching = false;
      });
    } else {
      results = _allEvents
          .where((event) =>
              event["title"].toLowerCase().contains(enteredKeyword.toLowerCase()) ||
              event["college"].toLowerCase().contains(enteredKeyword.toLowerCase()) ||
              event["type"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      setState(() {
        _isSearching = true;
      });
    }

    setState(() {
      _filteredEvents = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/explore_header.png", 
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                          hintText: "Search for events, colleges...",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            if (_isSearching) ...[
              _buildSectionHeader("Search Results", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AllEventsPage()));
              }),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _filteredEvents.length,
                itemBuilder: (context, index) {
                  final event = _filteredEvents[index];
                  return _buildNearMeItem(
                    context,
                    event["title"],
                    event["location"],
                    event["image"],
                    event["price"],
                    event["college"],
                    event["date"],
                    event["description"],
                    event["mode"],
                    event["type"],
                    event["deadline"],
                  );
                },
              ),
              if (_filteredEvents.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(child: Text("No events found matching your search.")),
                ),
            ] else ...[
              _buildSectionHeader("Recommended for you", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AllEventsPage()));
              }),
              SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    _buildRecommendedCard(
                      context,
                      "Global Tech Expo 2024",
                      "Chennai Trade Centre",
                      "images/image1.png",
                      "28 APR",
                      "IIT Madras",
                      "Global Tech Expo showcases latest innovations in Robotics, AI and Sustainable energy.",
                      "Offline",
                      "₹500",
                      "Tech Expo",
                      "20 APR",
                    ),
                    _buildRecommendedCard(
                      context,
                      "Music Festival '24",
                      "Island Grounds, Chennai",
                      "images/image2.png",
                      "15 MAY",
                      "Anna University",
                      "A night of rhythm and soul featuring top independent artists.",
                      "Offline",
                      "₹300",
                      "Cultural",
                      "10 MAY",
                    ),
                  ],
                ),
              ),

              _buildSectionHeader("Trending Now", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AllEventsPage()));
              }),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    _buildTrendingCard(
                      context,
                      "Startup Pitch",
                      "images/image3.png",
                      "5k+ Joined",
                      "IIT Madras",
                      "05 JUN",
                      "Watch emerging startups battle it out for seed funding.",
                      "Offline",
                      "FREE",
                      "Hackathon",
                      "01 JUN",
                    ),
                    _buildTrendingCard(
                      context,
                      "Art Exhibition",
                      "images/image4.png",
                      "2k+ Joined",
                      "Christ University",
                      "20 JUN",
                      "Discover breathtaking art pieces from students across the country.",
                      "Offline",
                      "FREE",
                      "Cultural",
                      "15 JUN",
                    ),
                  ],
                ),
              ),

              _buildSectionHeader("Events near you", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AllEventsPage()));
              }),
              _buildNearMeItem(
                context,
                "Workshop on AI",
                "IIT Madras, Chennai",
                "images/image2.png",
                "FREE",
                "IIT Madras",
                "25 OCT",
                "Hands-on workshop on generative AI models.",
                "Offline",
                "Seminar",
                "20 OCT",
              ),
              _buildNearMeItem(
                context,
                "Photography Meet",
                "Besant Nagar Beach",
                "images/image3.png",
                "₹200",
                "Photography Club",
                "12 NOV",
                "Join fellow photographers for a sunset photo walk.",
                "Offline",
                "Cultural",
                "10 NOV",
              ),
            ],

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, {VoidCallback? onPressed}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 4, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              "See All",
              style: TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedCard(
    BuildContext context,
    String title,
    String location,
    String image,
    String date,
    String college,
    String description,
    String mode,
    String price,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: location,
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        width: 280,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(image, height: 140, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Saved", textAlign: TextAlign.center),
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
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(Icons.bookmark_border, size: 20, color: Color(0xFF1D61E7)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Text(date, style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingCard(
    BuildContext context,
    String title,
    String image,
    String stats,
    String college,
    String date,
    String description,
    String mode,
    String price,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: "On Campus",
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        width: 130,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, height: 80, width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    stats,
                    style: const TextStyle(color: Colors.green, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNearMeItem(
    BuildContext context,
    String title,
    String location,
    String image,
    String price,
    String college,
    String date,
    String description,
    String mode,
    String type,
    String deadline,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              title: title,
              image: image,
              startDate: date,
              endDate: date,
              description: description,
              mode: mode,
              collegeName: college,
              location: location,
              registrationUrl: "https://festalynk.com/register",
              registrationAmount: price,
              eventType: type,
              registrationDeadline: deadline,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, height: 70, width: 70, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(location, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF1D61E7).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                price,
                style: const TextStyle(color: Color(0xFF1D61E7), fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
