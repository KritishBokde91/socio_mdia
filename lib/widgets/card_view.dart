import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  late PageController pageController;

  List<Map<String, String>> cardData = [
    {
      'image':
          'https://images.unsplash.com/photo-1687800249443-dac8624494a5?w=500&h=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHRyZW5kaW5nJTIwcGhvdG9zJTIwb2YlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D',
      'name': 'Greenery',
    },
    {
      'image':
          'https://plus.unsplash.com/premium_photo-1665311513813-8576a87a251f?w=500&h=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRyZW5kaW5nJTIwcGhvdG9zJTIwb2YlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D.jpg',
      'name': 'Brown Tree',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1687800241981-2bd35acdb9d4?w=500&h=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHRyZW5kaW5nJTIwcGhvdG9zJTIwb2YlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D',
      'name': 'Grass Gross',
    },
    {
      'image':
          'https://plus.unsplash.com/premium_photo-1663951252272-4e8d069ad49b?w=500&h=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHRyZW5kaW5nJTIwcGhvdG9zJTIwb2YlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D',
      'name': 'Brown Forest',
    }
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView.builder(
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              double pageOffset = pageController.position.haveDimensions
                  ? pageController.page! - index
                  : 0;
              double gauss =
                  math.exp(-(math.pow(pageOffset.abs() - 0.5, 2) / 0.08));
              return Transform.translate(
                offset: Offset(-32 * gauss * pageOffset.sign, 0),
                child: Container(
                  clipBehavior: Clip.none,
                  margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(8, 20),
                        blurRadius: 24,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(32)),
                        child: Image.network(
                          cardData[index]['image']!,
                          fit: BoxFit.none,
                          alignment: Alignment(pageOffset, 0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=100&h=100'),
                          radius: 30,
                        ),
                        title: Text(cardData[index]['name']!),
                        subtitle: const Text('By photographer XYZ'),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
