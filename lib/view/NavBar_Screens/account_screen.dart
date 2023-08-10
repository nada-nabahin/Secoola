import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor:
                        Color(0xffFFEA7D), // Change to desired color
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raymond Skyberg",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "raymond@mail.com",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Handle edit action
                    },
                  ),
                ],
              ),
            ),
            SettingsGroup(
              title: "Account",
              settings: [
                SettingsItem(
                    icon: Icons.notifications,
                    title: "Notification",
                    hasArrow: true),
                SettingsItem(
                    icon: Icons.security, title: "Security", hasArrow: true),
                SettingsItem(
                    icon: Icons.email,
                    title: "Email Preference",
                    hasArrow: true),
              ],
            ),
            SettingsGroup(
              title: "Course",
              settings: [
                SettingsItem(
                    icon: Icons.school, title: "Certificate", hasArrow: true),
                SettingsItem(
                    icon: Icons.payment, title: "Payment", hasArrow: true),
                SettingsItem(
                    icon: Icons.history, title: "History", hasArrow: true),
              ],
            ),
            SettingsGroup(
              title: "Support",
              settings: [
                SettingsItem(icon: Icons.help, title: "Help", hasArrow: true),
                SettingsItem(
                    icon: Icons.question_answer, title: "FAQ", hasArrow: true),
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextButton(
                  onPressed: () {
                    // Handle sign out
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  child: Text("Sign Out", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some spacing at the end
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool hasArrow;

  SettingsItem(
      {required this.icon, required this.title, this.hasArrow = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: hasArrow
          ? Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )
          : null,
      onTap: () {
        // Handle setting item click
      },
    );
  }
}

class SettingsGroup extends StatelessWidget {
  final String title;
  final List<SettingsItem> settings;

  SettingsGroup({required this.title, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 0, 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: settings,
        ),
      ],
    );
  }
}
