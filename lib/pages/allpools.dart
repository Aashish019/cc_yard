import 'package:cc_yard_test/widgets/commentshare.dart';
import 'package:cc_yard_test/widgets/polldetail.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AllPoles extends StatelessWidget {
  const AllPoles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "All Polls",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffF58600), Color(0xffC64216)])),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
            gradient: RadialGradient(
                focalRadius: 0.0002,
                focal: const Alignment(-0.75, -.7),
                center: Alignment.topLeft,
                radius: 2,
                colors: [
              Colors.black,
              Colors.grey.shade800,
            ])),
        height: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) => pollFeed(context),
        ),
      ),
    );
  }

  Widget pollFeed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 247, 125, 11),
                    Theme.of(context).colorScheme.primary
                  ]),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: pollText(context),
      ),
    );
  }

  Widget pollText(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Rohit Sharma Speaks Out on Mumbai Pollution Amidst ODI Worlds",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "US Intel Aids Canada in Nijjar Case",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Follow",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("@ TOI  |",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const PollDetail(),
        const PollDetail(),
        const PollDetail(),
        const PollDetail(),
        const CommentShare(),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          height: 0.5,
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text(
            "Times of India (TOI)",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Us intel ... comments...",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, .5)),
              ),
              Row(
                children: [
                  Icon(Icons.favorite_border_rounded),
                  SizedBox(
                    width: 5,
                  ),
                  Text("2.1K")
                ],
              )
            ],
          ),
          isThreeLine: true,
        )
      ],
    );
  }
}
