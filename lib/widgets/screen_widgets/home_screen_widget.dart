import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool showBackView = false;

  void toggleView() {
    setState(() {
      showBackView = !showBackView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Subtitle',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      // Add your navigation logic here
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.help),
                        SizedBox(width: 8),
                        Text('How to use?'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Image.asset(
                    showBackView ? 'assets/images/humanback.png' : 'assets/images/humanfront.png',
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    top: 100,
                    left: 100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 200,
                    left: 100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 200,
                    right: 100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 300,
                    left: 100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 300,
                    right: 100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 100,
                    child: GestureDetector(
                      onTap: toggleView,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          showBackView ? 'assets/images/humanback.png' : 'assets/images/humanfront.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
