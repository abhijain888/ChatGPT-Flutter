import 'package:chat_gpt_flutter/constants/constants.dart';
import 'package:chat_gpt_flutter/providers/chats_provider.dart';
import 'package:chat_gpt_flutter/providers/models_provider.dart';
import 'package:chat_gpt_flutter/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelsProvider>(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider<ChatProvider>(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const ChatScreen(),
      ),
    );
  }
}
