import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List<String> gridImage = [
    'https://images.unsplash.com/photo-1726472377339-7f2e636ab3ea?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw4fHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1726853550443-20b90f727b9b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726503454520-1de6e7420074?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726510114046-b7938cdc1bd1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726533870778-8be51bf99bb1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726715245558-69afa5ded798?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726309356095-e4c9be366c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyM3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726697187202-c1c33efd40d6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzMnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726808260756-ec1d4eceaf71?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1713098372674-cbf10e8c2bba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzOHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726672941260-07fbcabb3a96?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0MHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726262039924-897f110dcb32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0M3x8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1726217054448-dac4a067d271?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0Nnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726538236643-2e50ca1ce8ea?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw1M3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726855500757-658894d298eb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1719418812861-1580598361e7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDl8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1617653878159-c6830249228c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726767305248-e3cfaf9c98b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDExfGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1496060169243-453fde45943b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1726517723307-c70c47791d1f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
    'https://plus.unsplash.com/premium_photo-1712128931960-e017b8988c67?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1710678245377-076f03883b58?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
    'https://plus.unsplash.com/premium_photo-1669863283269-7f1841a60648?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
    'https://plus.unsplash.com/premium_photo-1688045669522-b7c7603dbb70?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Socio Mdia'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=200&h=200'),
                radius: 35,
              ),
              title: const Text('XYZ'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Photographer from India'),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {}, child: const Text('Posts 16')),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {}, child: const Text('Followers 12.6k'))
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0, top: 7),
                  child: Text(
                    'Posts',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            const SizedBox(
              height: 12,
            ),
            MasonryGrid(
                column: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(
                    gridImage.length,
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
                                                    gridImage[i],
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
                            child: Image.network(gridImage[i]),
                          ),
                        )))
          ],
        ),
      )),
    );
  }
}
