import 'package:assignment3/login.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  Widget buildPage({
    required List<String> images,
    required String text,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((img) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(img, height: 140),
              );
            }).toList(),
          ),
          const SizedBox(height: 30),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: onPressed, child: Text(buttonText)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          buildPage(
            images: ['assets/images/art1.jpeg', 'assets/images/art3.jpeg'],
            text:
                'Explore stunning artworks and creative illustrations from artists.',
            buttonText: 'Next',
            onPressed: () {
              _controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          buildPage(
            images: ['assets/images/art2.jpeg', 'assets/images/art4.jpeg'],
            text:
                'Share your creativity and connect with an art-loving community.',
            buttonText: 'Get Started',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
