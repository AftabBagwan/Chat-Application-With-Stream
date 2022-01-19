import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelPage extends StatelessWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const ChannelHeader(), //Is package me inbuild header bana pada hain ham wahi use karenge no need to pura wapas banate baithne ki
      body: Column(
        children: const [
          Expanded(
            child:
                MessageListView(), //Ye bhi iss sdk ka widget hi hain wahi use kiya hain ye message ka list rahenga
          ),
          MessageInput(), //Input bar send button and all ye pura sdk ne khud se banaya hain
        ],
      ),
    );
  }
}
