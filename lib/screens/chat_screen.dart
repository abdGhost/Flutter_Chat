import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Chat Screen'),
        title: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText(
              'Chat Here',
              textStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            WavyAnimatedText(
              'Chat Now',
              textStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
          isRepeatingAnimation: true,
          onTap: null,
        ),

        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Chat Screen'),
      ),
    );
  }
}
