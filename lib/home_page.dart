import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Instagram Clone',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Instagram에 오신것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Text('사진과 동영상을 보려면 팔로우하세요'),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(user.photoURL!),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Text(
                            user.email!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(user.displayName!),
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1656536665219-da2b7deb314b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=100&q=60',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1656536665219-da2b7deb314b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=100&q=60',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1656536665219-da2b7deb314b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=100&q=60',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(4.0)),
                          const Text('Facebook 친구'),
                          const Padding(padding: EdgeInsets.all(4.0)),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                textStyle:
                                    const TextStyle(color: Colors.white)),
                            child: const Text('팔로우'),
                          ),
                          const Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
