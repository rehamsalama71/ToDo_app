import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:tecno_notes_app/providers/favourite_provider.dart';

import 'package:tecno_notes_app/widgets/constant.dart';
import 'package:tecno_notes_app/widgets/custom_app_Bar.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final FavoriteProvider favoriteProvider =
        Provider.of<FavoriteProvider>(context);
    final favoriteList = favoriteProvider.favorites;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(text: 'Important', fontSize: 20, icon: Icon(Icons.star)),
          Expanded(
            child: ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    endActionPane:
                        ActionPane(motion: const ScrollMotion(), children: [
                      SlidableAction(
                        onPressed: (context) {
                          favoriteList.removeAt(index);
                          setState(() {
                            
                          });
                        },
                        backgroundColor: kPrimaryColor,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                      )
                    ]),
                    child: ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Colors.white,
                      leading: const Icon(
                        Icons.check_circle,
                        color: kPrimaryColor,
                      ),

                      title: Text(
                        favoriteList[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      // trailing: Container(
                      //   child: IconButton(
                      //       onPressed: () {}, icon: Icon(Icons.delete)),
                      // ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
