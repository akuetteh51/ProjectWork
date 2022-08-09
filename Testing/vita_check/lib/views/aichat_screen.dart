import 'package:flutter/material.dart';

import 'package:vita_check/widgets.dart/bottom_navigation..dart';

List<String> messageWidget = ["Hello", "Modit"];
List<String> messageSender = ["Hello", "Modit"];

class aichat extends StatelessWidget {
  const aichat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageTextController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff35A4B6),
        leading: BackButtonIcon(),
        title: Text("Carol"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            "assets/chatbackground.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              MessageBubble(
                sender: messageSender[0],
                text: messageSender[1],
                user: false,
              ),
              MessageBubble(
                sender: messageSender[0],
                text: messageSender[1],
                user: true,
              )
            ],
          )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // decoration:  ,

                color: Color(0xff35A4B6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextField(
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      controller: messageTextController,
                      cursorColor: Color.fromRGBO(1, 0, 9, 1),
                      onChanged: (value) {
                        messageSender.add(value);
                      },
                    )),
                    IconButton(
                      onPressed: () {
                        messageTextController.clear();
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({required this.sender, required this.text, required this.user});
  final String sender;
  final String text;
  final bool user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            "$sender",
            style: TextStyle(fontSize: 12.0, color: Colors.black45),
          ),
          Material(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: user ? Radius.circular(30) : Radius.circular(0),
                bottomRight: user ? Radius.circular(0) : Radius.circular(30)),
            elevation: 5.0,
            color: user ? Color(0xff8C9391) : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Text(
                "$text",
                style: TextStyle(
                    fontSize: 15.0,
                    color: user ? Colors.white : Color(0xff8C9391)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
