import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grc recreate',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('GLOBAL RECIPROCAL COLLEGES'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Picture
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.redAccent,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/970424554962092032/ZRQaOCir_400x400.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 25),
            Text(
              "Departments",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 15),

            Wrap(
              spacing: 12,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //CCS TO NAK
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CCSPage()),
                    );
                  },
                  child: Text("CCS"),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => COEPage()),
                    );
                  },
                  child: Text("COE"),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => COAPage()),
                    );
                  },
                  child: Text("COA"),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CBAEPage()),
                    );
                  },
                  child: Text("CBAE"),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call",
          ),
        ],
      ),
    );
  }
}

// CCS TO NAK
class CCSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],  // Background color of the page
      appBar: AppBar(
        title: Text('CCS'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40), // Increased spacing since image removed
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CCSEventsPage()),
              );
            },
            child: Image.network(
              'https://picsum.photos/400/200?random=ccs',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}


// Placeholder CCS Events Page
class CCSEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CCS Events')),
      body: Center(child: Text('Events for CCS here')),
    );
  }
}

// COE TO NAK
class COEPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COE')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://grc.edu.ph/wp-content/uploads/elementor/thumbs/it-outu8f4vazq9hp49ntbuxv3pe85vgr5rndrar3lmiw.jpg',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Navigate to COE events page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => COEEventsPage()),
              );
            },
            child: Image.network(
              'https://picsum.photos/400/200?random=ccs', // Placeholder image
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

// Placeholder COE Events Page
class COEEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COE Events')),
      body: Center(child: Text('Events for COE here')),
    );
  }
}


// COA TO NAK
class COAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COA')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://grc.edu.ph/wp-content/uploads/elementor/thumbs/it-outu8f4vazq9hp49ntbuxv3pe85vgr5rndrar3lmiw.jpg',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Navigate to COA events page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => COAEventsPage()),
              );
            },
            child: Image.network(
              'https://picsum.photos/400/200?random=ccs', // Placeholder image
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}


class COAEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COA Events')),
      body: Center(child: Text('Events for COA here')),
    );
  }
}


// CBAE TO NAK
class CBAEPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CBAE')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://grc.edu.ph/wp-content/uploads/elementor/thumbs/it-outu8f4vazq9hp49ntbuxv3pe85vgr5rndrar3lmiw.jpg',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Navigate to CBAE events page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CBAEEventsPage()),
              );
            },
            child: Image.network(
              'https://picsum.photos/400/200?random=ccs',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

// Placeholder CBAE Events Page
class CBAEEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CBAE Events')),
      body: Center(child: Text('Events for CBAE here')),
    );
  }
}

