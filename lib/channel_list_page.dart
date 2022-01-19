import 'package:chat_bot/channel_page.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelListPage extends StatelessWidget {
  const ChannelListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Aftab Chat App",
        ),
      ),
      body: ChannelsBloc(
        child: ChannelListView(
          channelWidget: const ChannelPage(),
        ), //Ye pure widgets sdk ke hain aur ye pure customizable widgets hain
      ), //inherited widget hain stream sdk ka documentation me sab hain
    );
  }
}
