import 'package:curious_ifsp/app/modules/chat/presenter/pages/widgets/comment_box_widget.dart';
import 'package:curious_ifsp/app/modules/chat/presenter/pages/widgets/comment_widget.dart';
import 'package:flutter/material.dart';

class TestMe extends StatefulWidget {
  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Natan Souza',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Gosto de flutter',
      'date': '10s'
    },
    {'name': 'Fulano Tal', 'message': 'Aoba', 'date': '1h'},
    {
      'name': 'Ciclano Nunes',
      'message': 'Pretendo me formar esse ano',
      'date': '1d'
    },
    {'name': 'Beltrano Carvalho', 'message': 'Boa noite', 'date': '1m'},
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          CommentWidget(
            content: data[i]['message'],
            dateAt: data[i]['date'],
            userName: data[i]['name'],
            likes: 10,
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: CommentBox(
        labelText: 'Escreva um comentário',
        errorText: 'O comentário não pode ser em branco',
        withBorder: false,
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'name': 'New User',
                'pic':
                    'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                'message': commentController.text,
                'date': '2021-01-01 12:00:00'
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Not validated");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        sendWidget: Icon(Icons.send_sharp,
            size: 30, color: theme.colorScheme.onPrimary),
        child: commentChild(filedata),
      ),
    );
  }
}
