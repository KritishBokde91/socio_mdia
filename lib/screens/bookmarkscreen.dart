import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:socio_mdia/widgets/bookmarkdata.dart';

class Bookmarkscreen extends StatefulWidget {
  const Bookmarkscreen({super.key});

  @override
  State<Bookmarkscreen> createState() => _BookmarkscreenState();
}

class _BookmarkscreenState extends State<Bookmarkscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Socio Mdia'),
      ),
      body: SingleChildScrollView(
          child: MasonryGrid(
              column: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: List.generate(
                  BookmarkData.instance.bookmarkImage.length,
                      (i) => GestureDetector(
                    onTap: () {
                      showDialog(
                          useSafeArea: false,
                          context: context,
                          builder: (context) => AlertDialog(
                            contentPadding: const EdgeInsets.all(4),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(20),
                                        child: Image.network(
                                          BookmarkData.instance.bookmarkImage[i],
                                          fit: BoxFit.fill,
                                        )),
                                    Positioned(
                                        right: 10,
                                        top: 10,
                                        child: IconButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.red)),
                                          onPressed: () {
                                            BookmarkData.instance
                                                .bookmarkImage
                                                .remove(BookmarkData.instance.bookmarkImage[i]);
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons
                                              .bookmark_border_outlined),
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=100&100'),
                                    radius: 30,
                                  ),
                                  title: Text('Image of XYZ'),
                                  subtitle:
                                  Text('By photographer XYZ'),
                                )
                              ],
                            ),
                          ));
                    },
                    child: SizedBox(
                      child: Image.network(BookmarkData.instance.bookmarkImage[i]),
                    ),
                  )
              )
          ) ,
      ),
    );
  }
}
