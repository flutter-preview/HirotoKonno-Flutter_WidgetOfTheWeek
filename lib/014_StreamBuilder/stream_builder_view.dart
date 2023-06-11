import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  TimeState createState() => TimeState();
}

class TimeState extends State<StreamBuilderWidget> {
  final _onTimeChange = StreamController<TimeOfDay>();

  @override
  void dispose() {
    super.dispose();
    _onTimeChange.close();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TimeText(stream: _onTimeChange.stream),
        TimeSelector(sink: _onTimeChange.sink),
      ],
    );
  }
}

class TimeText extends StatelessWidget {
  const TimeText({super.key, required this.stream});

  final Stream<TimeOfDay> stream;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3),
        ),
      ),
      child: StreamBuilder(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<TimeOfDay> snapShot) {
          return Text(
            snapShot.hasData ? snapShot.data!.format(context) : "No Time",
            style: const TextStyle(fontSize: 50),
          );
        },
      ),
    );
  }
}

class TimeSelector extends StatelessWidget {
  const TimeSelector({super.key, required this.sink});

  final StreamSink<TimeOfDay> sink;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final select = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        // sinkに選択した時刻を流す
        sink.add(select!);
      },
      child: const Text(
        "選択",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
