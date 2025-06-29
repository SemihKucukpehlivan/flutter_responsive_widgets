import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white, // Sets the color of the AppBar's content (title, icons)
        title: const Text('Wrap Widget Example'), // App bar title in English
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // --- Introduction to Wrap ---
            const SectionTitle(title: 'Introduction to Wrap Widget'), // Section title in English
            const Text(
              'The Wrap widget arranges its children in a line, and if there isn\'t enough space, it wraps them to the next line. This is useful for dynamic content like tags or chips.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 30),

            // --- Example 1: Basic Wrap with Tags ---
            // Demonstrates how Wrap automatically arranges items and wraps them
            // to the next line when horizontal space runs out.
            const SectionTitle(title: 'Example 1: Basic Tag Layout'), // Section title in English
            const Text(
              'Observe how the tags wrap to the next line as you narrow the screen width.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.pink[50],
              child: Wrap(
                spacing: 8.0, // Horizontal space between children
                runSpacing: 8.0, // Vertical space between lines of children
                children: List.generate(
                  15, // Generate 15 chips to show wrapping
                  (index) => Chip(
                    label: Text('Tag ${index + 1}'), // Tag text in English
                    backgroundColor: Colors.pink[200],
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example 2: Different Alignment ---
            // Shows how changing the alignment affects how children are arranged on each line.
            const SectionTitle(title: 'Example 2: Wrap with Different Alignment'), // Section title in English
            const Text(
              'This example uses WrapAlignment.end, causing items to align to the end of each line.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.pink[100],
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.end, // Align items to the end of each line
                children: List.generate(
                  10,
                  (index) => ActionChip(
                    label: Text('Action ${index + 1}'), // Chip text in English
                    onPressed: () {},
                    backgroundColor: Colors.pink[300],
                    labelStyle: const TextStyle(color: Colors.white),
                    avatar: Icon(Icons.star, color: Colors.yellow[700]), // Star icon
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example 3: Vertical Direction Wrap ---
            // Demonstrates wrapping in a vertical direction (items go column by column).
            const SectionTitle(title: 'Example 3: Vertical Wrap Direction'), // Section title in English
            const Text(
              'Children wrap vertically. This is less common but useful in specific layouts.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250, // Fixed height for vertical wrapping demonstration
              width: double.infinity, // Full width
              color: Colors.pink[50],
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                direction: Axis.vertical, // Arrange children vertically
                spacing: 5.0, // Vertical space between items
                runSpacing: 5.0, // Horizontal space between runs (columns)
                children: List.generate(
                  12,
                  (index) => Container(
                    width: 80, // Fixed width for vertical items
                    height: 40, // Fixed height for vertical items
                    color: Colors.pink[400],
                    alignment: Alignment.center,
                    child: Text(
                      'Item ${index + 1}', // Item text in English
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper title widget
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
        ),
      ),
    );
  }
}
