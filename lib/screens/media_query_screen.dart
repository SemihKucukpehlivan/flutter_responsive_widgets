import 'package:flutter/material.dart';
import 'package:flutter_responsive_widgets/widgets/info_row.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 1: Access general device information using MediaQuery
    // The MediaQuery.of(context) method provides access to MediaQueryData
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    // Logical width and height of the screen (can vary between devices)
    final double screenWidth = mediaQueryData.size.width;
    final double screenHeight = mediaQueryData.size.height;

    // Current orientation of the device (portrait or landscape)
    final Orientation orientation = mediaQueryData.orientation;

    // Device's pixel density (physical pixels / logical pixels)
    final double devicePixelRatio = mediaQueryData.devicePixelRatio;

    // Text scaler (comes from user accessibility settings)
    final TextScaler textScaler = mediaQueryData.textScaler;

    // To get a value equivalent to the old textScaleFactor, call scale(1.0)
    final double currentTextScaleValue = textScaler.scale(1.0);

    // Safe area insets (notches, system bars, etc.)
    final EdgeInsets padding = mediaQueryData.padding;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'MediaQuery Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          // Provides scrolling capability if screen is small
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Device Information (Obtained with MediaQuery)',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              // Using the new InfoRow widget
              InfoRow(
                label: 'Screen Width:',
                value: '${screenWidth.toStringAsFixed(2)} px',
              ),
              InfoRow(
                label: 'Screen Height:',
                value: '${screenHeight.toStringAsFixed(2)} px',
              ),
              InfoRow(
                label: 'Orientation:',
                value: orientation == Orientation.portrait
                    ? 'Portrait'
                    : 'Landscape',
              ),
              InfoRow(
                label: 'Pixel Ratio (DPR):',
                value: devicePixelRatio.toStringAsFixed(2),
              ),
              // Corrected: Using textScaler.scale(1.0) to get the scaling value
              InfoRow(
                label: 'Text Scale Value:',
                value: currentTextScaleValue.toStringAsFixed(2),
              ),
              InfoRow(
                label: 'Top Safe Area (Padding):',
                value: '${padding.top.toStringAsFixed(2)} px',
              ),
              InfoRow(
                label: 'Bottom Safe Area (Padding):',
                value: '${padding.bottom.toStringAsFixed(2)} px',
              ),

              const SizedBox(height: 40),

              const Text(
                'Dynamic Box Based on Screen Size',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                // Width is 70% of the screen width
                width: screenWidth * 0.7,
                // Height is 150px in portrait, 80px in landscape
                height: orientation == Orientation.portrait ? 150 : 80,
                color: Colors.teal[300],
                alignment: Alignment.center,
                child: Text(
                  'Width: ${(screenWidth * 0.7).toStringAsFixed(0)}px\n'
                  'Height: ${orientation == Orientation.portrait ? '150px' : '80px'}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textScaler:
                      textScaler, // Apply textScaler to this Text widget
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
