import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendView extends StatefulWidget {
  const RecommendView({super.key});

  @override
  State<RecommendView> createState() => _RecommendViewState();
}

class _RecommendViewState extends State<RecommendView> {
  List<String> recommendedImage = [
    'https://plus.unsplash.com/premium_photo-1675827055620-24d540e0892a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJhbCUyMGltYWdlfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1682884031042-e1444f0d5520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJhbCUyMGltYWdlfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1691167465279-1f2c14d313fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG5hdHVyYWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1669986566738-cdfee8fad838?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJhbCUyMGltYWdlfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1652997576946-13acd32093cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fG5hdHVyYWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1689843658573-b1c234d46842?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5hdHVyYWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1558616629-899031969d5e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG5hdHVyYWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: recommendedImage.length,
      itemBuilder: (context, index) {
        return Image.network(
          recommendedImage[index],
          fit: BoxFit.fill,
        );
      },
    );
  }
}
