import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      color: Colors.blueGrey, fontSize: 18, letterSpacing: 1),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: favorites.length,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ChatScreen.routeName, arguments: favorites[index]);
                      },
                                          child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(favorites[index].imageUrl)),
                              SizedBox(height: 6),
                              Text(favorites[index].name, style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),)
                        ]),
                      ),
                    );
                  }),
            
          )
        ],
      ),
    );
  }
}
