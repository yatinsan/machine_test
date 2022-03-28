import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String landline;

  const UserDetailPage({Key? key, this.name = '', this.email = '', this.phone = '', this.landline = ''})
      : super(key: key);
  static const String routeName = '/userDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image.network(
                      'https://i.pinimg.com/564x/6e/d9/5a/6ed95a844d95ea4b79e03677c8364c13.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    bottom: 100,
                    left: 30,
                  ),
                  Positioned(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 33, 189),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: IconButton(
                          icon: const Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ),
                    right: 30,
                    bottom: 25,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              title: Text(phone),
              subtitle: const Text('phone'),
              trailing: const Icon(Icons.message_sharp),
            ),
            ListTile(
              leading: const SizedBox(),
              title: Text(landline),
              subtitle: const Text('lanline'),
              trailing: const Icon(Icons.message_sharp),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.blue,
              ),
              title: Text(email),
              subtitle: const Text('personal'),
              trailing: const Icon(Icons.message_sharp),
            ),
          ],
        ));
  }
}
