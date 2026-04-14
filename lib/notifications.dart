import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFEDF1F3),
        appBar: AppBar(
          title: const Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Action for marking as read
              },
              child: const Text(
                "Mark as read",
                style: TextStyle(
                  color: Color(0xFF1D61E7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            labelColor: Color(0xFF1D61E7),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF1D61E7),
            tabs: [
              Tab(text: "All"),
              Tab(text: "Unread"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildNotificationList(itemCount: 5),
            _buildNotificationList(itemCount: 2), // Example: only 2 unread
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationList({required int itemCount}) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: itemCount,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D61E7).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_active,
                  color: Color(0xFF1D61E7),
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getNotificationTitle(index),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getNotificationBody(index),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${index + 1} hours ago",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _getNotificationTitle(int index) {
    List<String> titles = [
      "Event Reminder",
      "New Event Added",
      "Registration Successful",
      "Update Available",
      "Welcome to FestaLynk"
    ];
    return titles[index % titles.length];
  }

  String _getNotificationBody(int index) {
    List<String> bodies = [
      "Tech Innovators Summit is starting tomorrow at 10 AM.",
      "A new cultural event 'Fusion 2024' has been added in Chennai.",
      "Your registration for 'Entrepreneurs Conference' is confirmed.",
      "Version 1.1.0 is now available with new features.",
      "Thanks for joining FestaLynk! Start exploring events now."
    ];
    return bodies[index % bodies.length];
  }
}
