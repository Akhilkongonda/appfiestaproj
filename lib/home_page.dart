import 'package:flutter/material.dart';
import 'loginpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Management App'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Event ${index + 1}'),
                    subtitle: Text('Date and Time'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to event details page
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
