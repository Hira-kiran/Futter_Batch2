import 'dart:convert';
import 'package:flutter/material.dart';

import '../Models/postApi_model.dart';
import 'package:http/http.dart' as http;

class PostApiScreen extends StatefulWidget {
  const PostApiScreen({super.key});

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}

class _PostApiScreenState extends State<PostApiScreen> {
  List<PostApiModel> postsList = [];
  Future<List<PostApiModel>> postApi() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());
    print(data);

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postsList.add(PostApiModel.fromJson(i));
      }
    } else {
      return postsList;
    }

    return postsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: postApi(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                  itemCount: postsList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Text(postsList[index].id.toString()),
                        title: Text(postsList[index].title.toString()),
                        subtitle: Text(postsList[index].body.toString()),
                        trailing: Text(postsList[index].userId.toString()),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
