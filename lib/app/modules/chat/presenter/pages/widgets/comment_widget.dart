import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentWidget extends StatelessWidget {
  final String userName;
  final String content;
  final String dateAt;
  final int? likes;
  const CommentWidget({
    super.key,
    required this.content,
    required this.dateAt,
    this.likes,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
      child: ListTile(
        leading: GestureDetector(
          onTap: () async {
            // Display the image in large form.
            print("Comment Clicked");
          },
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const CircleAvatar(
              radius: 50,
            ),
          ),
        ),
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              dateAt,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 10,
            ),
            FaIcon(FontAwesomeIcons.heart, size: 15),
            FaIcon(FontAwesomeIcons.heart, size: 15),
          ],
        ),
      ),
    );
  }
}
