import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('LayoutBuilder Example'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView( // Allows scrolling if content overflows vertically
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Resize your window (on desktop) or rotate your device to see how the layout changes based on the available width within the purple container.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ConstrainedBox ensures the LayoutBuilder's parent has a minimum height,
            // allowing the SingleChildScrollView to handle vertical overflow.
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.6, // Occupy at least 60% of screen height
              ),
              child: Container(
                color: Colors.purple[100],
                alignment: Alignment.center,
                // LayoutBuilder dynamically builds its child based on the constraints
                // it receives from its immediate parent (the Container inside ConstrainedBox).
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    // Check the maximum width available to LayoutBuilder
                    if (constraints.maxWidth > 600) {
                      // For wider spaces (e.g., landscape tablets, desktop windows)
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _buildContentWidgets(
                          isWide: true,
                          availableWidth: constraints.maxWidth, // Pass available width to children
                        ),
                      );
                    } else {
                      // For narrower spaces (e.g., phones, portrait tablets)
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _buildContentWidgets(
                          isWide: false,
                          availableWidth: constraints.maxWidth, // Pass available width to children
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'LayoutBuilder adapts its child (Row or Column) based on the width it receives from its parent. Child widgets are also proportioned based on the parent\'s width.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }


  List<Widget> _buildContentWidgets({required bool isWide, required double availableWidth}) {
    // Proportional width for the content boxes.
    // When in a Row (isWide=true), each box can take about 45% of the available width.
    // When in a Column (isWide=false), each box can take about 80% of the available width.
    final double widgetWidth = isWide ? availableWidth * 0.45 : availableWidth * 0.8;

    return <Widget>[
      Container(
        width: widgetWidth, // Dynamically proportioned width
        height: isWide ? 100 : 70, 
        color: Colors.purple[300],
        alignment: Alignment.center,
        child: Text(
          'Widget 1\n(${isWide ? 'Wide' : 'Compact'})',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      const SizedBox(height: 10, width: 10),
      Container(
        width: widgetWidth, // Dynamically proportioned width
        height: isWide ? 100 : 70,
        color: Colors.purple[500],
        alignment: Alignment.center,
        child: Text(
          'Widget 2\n(${isWide ? 'Wide' : 'Compact'})',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    ];
  }
}