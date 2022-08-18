import 'package:comments_api/model.dart';
import 'package:comments_api/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List<Comments>? userComments = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(title: Text('API')),
              body: value.comments == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: value.comments?.length,
                      itemBuilder: (context, index) => Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              value.comments![index].email,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(value.comments![index].name),
                            SizedBox(
                              height: 8,
                            ),
                            Text(value.comments![index].body as String)
                          ],
                        ),
                      ),
                    ),
            ));
  }
}
