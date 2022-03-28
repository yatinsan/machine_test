import 'package:flutter/material.dart';
import 'package:machine_test/config/constants/colors.dart';
import 'package:machine_test/view/UserDetailPage/user_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('All Contacts'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.format_align_left))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search all Contacts',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                    onTap: (() {
                      Navigator.pushNamed(context, UserDetailPage.routeName);
                    }),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      'Contact ${index + 1}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Ytcolors.maincolor,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
