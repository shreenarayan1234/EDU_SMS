import 'leave_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../login_page.dart'; // Import the LoginPage

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Leave'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeaveNoteScreen()),
                );
              },
            ),
            Divider(height: 1),
            ListTile(
              title: const Text('Online Meeting'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(height: 1),
            ListTile(
              title: const Text('About Us'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(height: 1),
            ListTile(
              title: const Text('Logout'),
              trailing: const Icon(Icons.exit_to_app),
              onTap: () async {
                await Supabase.instance.client.auth.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage(onLocaleChange: (Locale ) {  },)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
