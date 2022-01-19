import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:stream_chat_localizations/stream_chat_localizations.dart';
import 'my_app.dart';

const apiKey = "b67pax5b2wdq";
const token =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidHV0b3JpYWwtZmx1dHRlciJ9.S-MJpoSwDiqyXpUURgO5wVqJ4vKlIVFLSEyrFYCOE1c';

//Hame kuch UI nahi banana honga ye khud sab hame bana ke denga hum sirf customize kare isko

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Is line ka meaning hain agar maine koi library import kari hain to wo pahele se hi initialized ho jaye taaki app crash na ho.
//ab jab ham stream chat use kar rahe to wo sdk ko hame initialize bhi karna honga api key ke through client side pe
  final client = StreamChatClient(apiKey);

  //current user binding karne ke liye
  await client.connectUser(User(id: "demo"), token);

  //jab chat hongi to wo kisi na kisi channel ke through hongi to hame channel bhi intialize karna honga
  final channel = client.channel("messaging", id: "flutterdevs");

  //aur agar channel available ho to chat uspe hi ho aur na ho to ban jaye uske liye below line
  await channel.watch();
  runApp(
    MyApp(
      client: client,
      channel: channel,
    ),
  );
}

//Localization :- Different languages ko support kara jaata hain isme uske liye hamare pass ek aur package hain stream_chat_localization naam se ye wo kaam kar deta hain different languages ka support add usme.
