import 'package:flutter/material.dart';
import 'package:flutter_responsive_widgets/screens/aspect_ratio_screen.dart';
import 'package:flutter_responsive_widgets/screens/fitted_box_screen.dart';
import 'package:flutter_responsive_widgets/screens/flexible_expanded_screen.dart';
import 'package:flutter_responsive_widgets/screens/fractionally_sized_box_screen.dart';
import 'package:flutter_responsive_widgets/screens/layout_builder_screen.dart';
import 'package:flutter_responsive_widgets/screens/media_query_screen.dart';
import 'package:flutter_responsive_widgets/screens/orientation_builder_screen.dart';
import 'package:flutter_responsive_widgets/screens/wrap_screen.dart';
import 'package:flutter_responsive_widgets/widgets/custom_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive Widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB3E5FC),
                  Color(0xFFE1BEE7),
                  Color(0xFFF8BBD0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(2),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Responsive Widget Examples',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'MediaQuery Example',
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MediaQueryScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    text: 'OrientationBuilder Example',
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const OrientationBuilderScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'LayoutBuilder Example',
                    color: Colors.purple,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LayoutBuilderScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'Flexible & Expanded Example',
                    color: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlexibleExpandedScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'FractionallySizedBox Example',
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const FractionallySizedBoxScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'FittedBox Example',
                    color: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FittedBoxScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'AspectRatio Example',
                    color: Colors.cyan,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AspectRatioScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomButton(
                    text: 'Wrap Example',
                    color: Colors.pink,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WrapScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
