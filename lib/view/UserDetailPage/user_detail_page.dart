import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/view/UserDetailPage/user_detail_cubit.dart';

class UserDetailPage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String landline;
  final fav = UserDetailCubit();
  static const String routeName = '/userDetail';

  UserDetailPage(
      {Key? key,
      this.name = '',
      this.email = '',
      this.phone = '',
      this.landline = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            snap: true,
            floating: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(

              background: Container(
                color: Colors.white,
                height: 500,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 290,
                      child: Image.network(
                        'https://i.pinimg.com/564x/6e/d9/5a/6ed95a844d95ea4b79e03677c8364c13.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 240,
                      left: 50,
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    Positioned(
                      top: 250,
                      right: 30,
                      child: BlocConsumer(
                        listener: (context, state) {},
                        bloc: fav,
                        builder: (context, state) {
                          return Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: fav.state
                                  ? const Color.fromARGB(255, 241, 33, 189)
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  fav.toggle();
                                }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const SizedBox(),
                  title: Text(landline),
                  subtitle: const Text('landline'),
                  trailing: const Icon(Icons.message_sharp),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(email),
                  subtitle: const Text('personal'),
                  trailing: const Icon(Icons.message_sharp),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 241, 33, 189),
                  ),
                  title: Text(phone),
                  subtitle: const Text('phone'),
                  trailing: const Icon(Icons.message),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
