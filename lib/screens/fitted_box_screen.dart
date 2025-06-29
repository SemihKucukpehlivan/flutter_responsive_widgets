import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('FittedBox Examples',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // --- Example 1: FittedBox for long text ---
              // Shows how FittedBox helps long text fit into a constrained width.
              buildFittedBoxCard(
                title: 'Long Text (BoxFit.contain)',
                description:
                    'This text will always fit without overflowing, scaling down if needed.',
                child: const Text(
                  'This is a very, very, very long piece of text that should demonstrate how FittedBox neatly fits content into a constrained space.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                height: 100, // Fixed height to show vertical fitting
                color: Colors.lightBlue.shade50,
              ),
              const SizedBox(height: 20),

              // --- Example 2: FittedBox for a large icon ---
              // Demonstrates how a large icon can be scaled to fit.
              buildFittedBoxCard(
                title: 'Large Icon (BoxFit.contain)',
                description: 'A large icon is scaled to fit within the box.',
                child: const Icon(
                  Icons.directions_bike,
                  size: 150, // Naturally larger than its container will allow
                  color: Colors.green,
                ),
                height: 80, // Fixed height for the icon container
                color: Colors.lightGreen.shade50,
              ),
              const SizedBox(height: 20),

              // --- Example 3: FittedBox with BoxFit.fill (distorted text) ---
              // Shows how BoxFit.fill can distort the child if aspect ratio isn't maintained.
              buildFittedBoxCard(
                title: 'Text with BoxFit.fill (Distorted)',
                description:
                    'The text will stretch to fill, potentially distorting its aspect ratio.',
                child: FittedBox(
                  fit: BoxFit.fill, // Stretches to fill, ignores aspect ratio
                  child: const Text(
                    'STRETCH',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
                height: 80,
                color: Colors.orange.shade50,
              ),
              const SizedBox(height: 20),

              // --- Example 4: FittedBox with BoxFit.fitWidth ---
              // Scales the child to match the width, adjusting height proportionally.
              buildFittedBoxCard(
                title: 'Text with BoxFit.fitWidth',
                description:
                    'The text scales to fit the width, maintaining aspect ratio.',
                child: FittedBox(
                  fit: BoxFit.fitWidth, // Scales width, preserves aspect ratio
                  child: const Text(
                    'Fit Width Text Example',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
                height:
                    60, // Fixed height, but width is primary focus for fitting
                color: Colors.purple.shade50,
              ),
              const SizedBox(height: 20),

              // --- Example 5: FittedBox with BoxFit.none (overflow) ---
              // Demonstrates overflow when BoxFit.none is used and child is too large.
              buildFittedBoxCard(
                title: 'Text with BoxFit.none (Overflow)',
                description:
                    'The text is not scaled and will overflow its container.',
                child: FittedBox(
                  fit: BoxFit.none, // No scaling, will overflow if too large
                  child: const Text(
                    'This Text Will Overflow',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                height:
                    50, // Container height is too small for the natural text size
                color: Colors.red.shade50,
                // Note: An overflow error will occur in the console for this example
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to create a consistent card layout for each FittedBox example.
  Widget buildFittedBoxCard({
    required String title,
    required String description,
    required Widget child,
    double? height,
    Color? color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: color ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
            const Divider(height: 20, thickness: 1),
            // The actual area where FittedBox is applied.
            // Using a Container with a fixed height to show the effect clearly.
            Container(
              height: height,
              width: double.infinity, // Occupy full width
              color: Colors.white, // Background for the fitted content
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.contain, // Default fit, can be overridden by child
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
