import 'dart:math';

import 'package:flutter/material.dart';
import 'package:machine_test/apis/apis.dart';
import 'package:machine_test/config/constants/colors.dart';
import 'package:machine_test/model/employs.dart';
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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.format_align_left))],
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
              child: FutureBuilder(
                  future: Api().getEmploys(),
                  builder: ((context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<Employs> employs = snapshot.data;
                      return ListView.separated(
                        itemCount: employs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Employs employ = employs[index];
                          return Container(
                            padding: EdgeInsets.all(10),
                            child: ListTile(
                              onTap: (() {
                                Navigator.pushNamed(context, UserDetailPage.routeName,
                                    arguments: UserDetailPage(
                                        name: '${employ.firstName ?? ''} ${employ.lastName ?? ''}',
                                        email: employ.email ?? '',
                                        landline: employ.landline.toString(),
                                        phone: employ.mobile.toString()));
                              }),
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Image.asset('assets/images/admin.png'),
                              ),
                              title: Text(
                                '${employ.firstName ?? ''} ${employ.lastName ?? ''}',
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
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }))),
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
