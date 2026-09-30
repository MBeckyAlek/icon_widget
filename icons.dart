
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icon Widgets'),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                print("Notifications clicked");
              },
            ),
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.blue,
              ),

              const SizedBox(height: 20),

              const Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 20),

              // Interactive favourite button
              const FavoriteButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// Interactive favourite button
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
      iconSize: 40,
      color: isFavorite ? Colors.red : Colors.grey,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
