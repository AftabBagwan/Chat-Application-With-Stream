import 'package:chat_bot/channel_list_page.dart';
import 'package:chat_bot/channel_page.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:stream_chat_localizations/stream_chat_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client, required this.channel})
      : super(key: key);

  final StreamChatClient client;
  final Channel channel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return StreamChat(
          //ye apne aap me ek stateful widget hain ye sab deta hain khud hi isiliye hamne isme direct child aur client pass kiya
          client: client,
          child: child,
        );
      },
      home: StreamChannel(
        child: const ChannelListPage(),
        channel: channel,
      ),
      locale: Locale("hi"), //Primary language set karne ke liye
      supportedLocales: const [
        Locale("en"), //english
        Locale("hi"), //hindi
        Locale("ja"), //japanese
        Locale("ko"), //korean
      ], //ham pura UI banate nahi baithenge hame ye stream sdk pura inbuild bana ke deta hain hum ko sirf unke widgets use karna hain and we ar good to go!!
      localizationsDelegates: GlobalStreamChatLocalizations
          .delegates, //Ye import karna padta hai support dene ke liye
    );
  }
}
