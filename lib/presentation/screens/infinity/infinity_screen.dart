import 'package:flutter/material.dart';

class InfinityScreen extends StatelessWidget {
  const InfinityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("nininniininninini"),
      ),
      body: const _InfinityView(),
    );
  }
}

class _InfinityView extends StatefulWidget {
  const _InfinityView();

  @override
  State<_InfinityView> createState() => _InfinityViewState();
}

class _InfinityViewState extends State<_InfinityView> {
  ScrollController scroll = ScrollController();
  final List<int> imagesId = [1, 2, 3, 4, 5];

  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
      if (scroll.position.pixels + 500 > scroll.position.maxScrollExtent) {
        final int id = imagesId.last;
        imagesId.addAll([1, 2, 3, 4, 5].map((e) => e + id));
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: ListView.builder(
          controller: scroll,
          itemCount: imagesId.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              placeholder: const AssetImage("floppa.jpg"),
              image: NetworkImage(
                "https://picsum.photos/id/${imagesId[index]}/200/300",
              ),
            );
          },
        ),
      ),
    );
  }
}
