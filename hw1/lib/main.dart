import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 165, 134, 134),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Center',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 165, 134, 134),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/mo.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mohammad Qubaja',
                        style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(169, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'A student',
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          StatItem(label: '115', subtitle: 'Collect'),
                          SizedBox(width: 16),
                          StatItem(label: '24', subtitle: 'Attendance'),
                          SizedBox(width: 16),
                          StatItem(label: '764', subtitle: 'Track'),
                          SizedBox(width: 16),
                          StatItem(label: '30', subtitle: 'Courses'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            // Icon Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButtonItem(icon: Icons.wallet, label: 'Wallet'),
                IconButtonItem(icon: Icons.local_shipping, label: 'Delivery'),
                IconButtonItem(icon: Icons.message, label: 'Message'),
                IconButtonItem(icon: Icons.settings, label: 'Service'),
              ],
            ),
            SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  SettingsItem(icon: Icons.location_on, label: 'Address'),
                  SettingsItem(icon: Icons.lock, label: 'Privacy'),
                  SettingsItem(icon: Icons.settings, label: 'General'),
                  SettingsItem(
                      icon: Icons.notifications, label: 'Notification'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String label;
  final String subtitle;

  const StatItem({required this.label, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}

class IconButtonItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconButtonItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.black54),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const SettingsItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        child: Icon(icon, color: const Color.fromARGB(255, 0, 0, 0)),
      ),
      title: Text(label),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
