import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('Flexible & Expanded Example'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // --- Expanded Example ---
            const Text(
              'Expanded: Fills all available remaining space.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _buildColoredBox(Colors.red, '100px'), // Fixed width
                  const SizedBox(width: 10),
                  // Expanded will fill all remaining horizontal space.
                  Expanded(
                    child: _buildColoredBox(Colors.blue, 'Expanded'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // --- Flexible (Fit.loose) Example ---
            const Text(
              'Flexible (Fit.loose): Fits if space allows, otherwise keeps its original size.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _buildColoredBox(Colors.red, '100px'),
                  const SizedBox(width: 10),
                  // Flexible (Fit.loose): The box has a width of 200px, but can be less if space is constrained.
                  Flexible(
                    fit: FlexFit.loose,
                    child: _buildColoredBox(Colors.green, 'Flexible (Loose) 200px', width: 200),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // --- Flexible (Fit.tight) Example ---
            const Text(
              'Flexible (Fit.tight): Forces to fill the remaining space, similar to Expanded.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _buildColoredBox(Colors.red, '100px'),
                  const SizedBox(width: 10),
                  // Flexible (Fit.tight): Fills the remaining space, same effect as Expanded.
                  Flexible(
                    fit: FlexFit.tight,
                    child: _buildColoredBox(Colors.orange, 'Flexible (Tight)'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // --- Flex Ratios (with Flexible) Example ---
            const Text(
              'Space Ratios with Flexible (flex: value)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1, // Takes 1 unit of the remaining space
                    child: _buildColoredBox(Colors.teal, 'Flex: 1'),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 2, // Takes 2 units of the remaining space
                    child: _buildColoredBox(Colors.cyan, 'Flex: 2'),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 3, // Takes 3 units of the remaining space
                    child: _buildColoredBox(Colors.indigo, 'Flex: 3'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // --- Usage within Column Example ---
            const Text(
              'Usage within Column (Vertical Space Distribution)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 300, // Fixed height for the Column's parent
              width: double.infinity,
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  _buildColoredBox(Colors.purple, '50px Height', height: 50),
                  const SizedBox(height: 10),
                  Expanded(
                    child: _buildColoredBox(Colors.pink, 'Expanded (Vertical)'),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    flex: 1,
                    child: _buildColoredBox(Colors.brown, 'Flexible (Vertical)'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper widget to create a colored box.
  Widget _buildColoredBox(Color color, String text, {double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}