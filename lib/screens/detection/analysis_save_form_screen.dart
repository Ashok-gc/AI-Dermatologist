import 'package:flutter/material.dart';

class PredictedAnalysisSaveFormScren extends StatefulWidget {
  const PredictedAnalysisSaveFormScren({super.key});

  @override
  State<PredictedAnalysisSaveFormScren> createState() => _PredictedAnalysisSaveFormScrenState();
}

class _PredictedAnalysisSaveFormScrenState extends State<PredictedAnalysisSaveFormScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Analysis'),
      ),
      body: Container(
        child: Column(
          children: const [
            Text('Save Analysis'),
          ],
        ),
      ),
    );
  }
}
