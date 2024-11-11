import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Center(
                child: Text(
                  'Video $index',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('@username', style: TextStyle(color: Colors.white)),
                    Text('Caption for the video goes here...',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}