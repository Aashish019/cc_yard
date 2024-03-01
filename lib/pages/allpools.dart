import 'package:cc_yard_test/controller/allpollcontroller.dart';
import 'package:cc_yard_test/widgets/commentshare.dart';
import 'package:cc_yard_test/widgets/polldetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AllPoles extends StatelessWidget {
  final allpollsController = Get.put(AllPollsController());
  AllPoles({super.key});

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
          itemCount: allpollsController.getAllPollsList.length,
          itemBuilder: (context, index) => pollFeed(context, index),
        ),
      ),
    );
  }

  Widget pollFeed(BuildContext context, index) {
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
        child: pollText(context, index),
      ),
    );
  }

  Widget pollText(BuildContext context, index) {
    return Column(
      children: [
        Text(
          allpollsController.getAllPollsList[index].topic.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          allpollsController.getAllPollsList[index].question.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
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
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                  text: "@",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                TextSpan(
                  text: allpollsController.getAllPollsList[index].newsNickName
                      .toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const TextSpan(
                  text: " |",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ]),
            ),
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
        Container(
          height: 300,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              PollDetails(
                title: allpollsController.getAllPollsList[index].textOptions!.s1
                    .toString(),
                option: allpollsController
                    .getAllPollsList[index].textOptions!.s1
                    .toString(),
                per: "35",
              ),
              PollDetails(
                title: allpollsController.getAllPollsList[index].textOptions!.s2
                    .toString(),
                option: allpollsController
                    .getAllPollsList[index].textOptions!.s2
                    .toString(),
                per: "45",
              ),
              PollDetails(
                title: allpollsController.getAllPollsList[index].textOptions!.s3
                    .toString(),
                option: allpollsController
                    .getAllPollsList[index].textOptions!.s3
                    .toString(),
                per: "75",
              ),
              PollDetails(
                title: allpollsController.getAllPollsList[index].textOptions!.s4
                    .toString(),
                option: allpollsController
                    .getAllPollsList[index].textOptions!.s4
                    .toString(),
                per: "25",
              ),
            ],
          ),
        ),
        const CommentShare(),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          height: 0.5,
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text(
            allpollsController.getAllPollsList[index].newsName.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: allpollsController.getAllPollsList[index].newsSubtext
                        .toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(255, 255, 255, .5),
                    )),
              ])),
              Row(
                children: [
                  const Icon(Icons.favorite_border_rounded),
                  const SizedBox(
                    width: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: allpollsController
                            .getAllPollsList[index].noOfLikes
                            .toString(),
                      ),
                      const TextSpan(text: "k")
                    ]),
                  )
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
