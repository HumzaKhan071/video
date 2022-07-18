import 'package:agora_video_call/chat/widgets/message_bubble.dart';
import 'package:agora_video_call/chat/widgets/message_text_field.dart';
import 'package:agora_video_call/chat/widgets/video_call_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => VideoCallScreen())),
              icon: Icon(Icons.video_camera_front))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 16),
              reverse: true,
              itemBuilder: (_, index) => _messages[index],
              separatorBuilder: (_, index) => SizedBox(height: 16),
              itemCount: _messages.length,
            ),
          ),
          MessageTextField()
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    message: "This app would be perfect if it had video chat!",
    date: "Apr 22, 8:59 PM",
    profileImageUrl:
        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  ),
  MessageBubble(
    message: "This app would be perfect if it had video chat! ok",
    date: "Apr 22, 8:59 PM",
  ),
  MessageBubble(
      message: "This app would be perfect if it had video chat!",
      date: "Apr 22, 8:59 PM",
      profileImageUrl:
          "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  MessageBubble(
    message: "This app would be perfect if it had video chat! No",
    date: "Apr 22, 8:59 PM",
  ),
  MessageBubble(
      message: "This app would be perfect if it had video chat!",
      date: "Apr 22, 8:59 PM",
      profileImageUrl:
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
];
