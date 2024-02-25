import 'package:flutter/material.dart';

class CommentShare extends StatelessWidget {
  const CommentShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "4.5k",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "comments",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.send,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Share",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
