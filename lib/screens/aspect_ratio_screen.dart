import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('AspectRatio Exapmle'),
        backgroundColor: Colors.cyan,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // --- Example 1: Fixed Width and 16:9 Ratio ---
            // This Container will take up all available width (due to CrossAxisAlignment.stretch)
            // and its height will be automatically adjusted according to the 16:9 ratio.
            const SectionTitle(
              title:
                  'Example 1: 16:9 Ratio Box (Widescreen)', // Section title in English
            ),
            const Text(
              'This box maintains a 16:9 aspect ratio regardless of its parent\'s width. Try rotating the screen or resizing the window.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 16 / 9, // Width / Height ratio
              child: Container(
                color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    '16:9 Box', // Text inside the box in English
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example 2: 4:3 Ratio within Expanded Widgets ---
            // The Expanded widget makes AspectRatio flexible horizontally,
            // so both boxes take equal space and maintain their 4:3 ratios.
            const SectionTitle(
              title: 'Example 2: Side-by-Side 4:3 Ratio Boxes',
            ), // Section title in English
            const Text(
              'Two boxes share equal space side-by-side, each maintaining a 4:3 aspect ratio.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      color: Colors.greenAccent,
                      margin: const EdgeInsets.only(right: 8),
                      child: const Center(
                        child: Text(
                          'Box A (4:3)', // Text inside the box in English
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      color: Colors.orangeAccent,
                      margin: const EdgeInsets.only(left: 8),
                      child: const Center(
                        child: Text(
                          'Box B (4:3)', // Text inside the box in English
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // --- Example 3: 1:1 (Square) Ratio with an Image ---
            // Ensures an image always appears square; its height adjusts proportionally to its width.
            const SectionTitle(
              title: 'Example 3: Square Image (1:1 Ratio)',
            ), // Section title in English
            const Text(
              'Ensures an image or a Card widget always remains square.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Center(
              // To center the image
              child: SizedBox(
                width:
                    MediaQuery.of(context).size.width *
                    0.7, // Allocate 70% of screen width
                child: AspectRatio(
                  aspectRatio: 1 / 1, // Square ratio
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior:
                        Clip.antiAlias, // To clip content when rounding corners
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://placehold.co/400x400/FF0000/FFFFFF?text=Image', // Placeholder image (text changed to English)
                            fit: BoxFit
                                .cover, // Ensures the image fills the box and might be cropped
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.error,
                                  size: 50,
                                  color: Colors.red,
                                ), // Fallback in case of error
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Square Image with AspectRatio', // Text in English
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal.shade800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example 4: AspectRatio within FittedBox (Extra Control) ---
            // Rarely used together, but demonstrates how FittedBox fits content
            // into the area defined by AspectRatio.
            const SectionTitle(
              title: 'Example 4: FittedBox within AspectRatio',
            ), // Section title in English
            const Text(
              'This example shows how FittedBox and AspectRatio can work together in rare cases. AspectRatio defines the area, while FittedBox fits the content into this area.', // Description in English
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 2 / 1, // Defines a wide rectangular area
              child: Container(
                color: Colors.deepPurple.shade100,
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.contain, // Fits the text content into the area
                  child: const Text(
                    'Responsive Text!', // Text in English
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ), // Very large text
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
          color: Colors.teal,
        ),
      ),
    );
  }
}
