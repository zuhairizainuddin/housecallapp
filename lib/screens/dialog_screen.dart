import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({
    super.key,
    required this.nameController,
    required this.ageController,
    required this.genderController,
    required this.temperatureController,
    required this.covidStatusController,
    required this.chestPainController,
    this.onPressed,
  });

  final TextEditingController nameController;
  final TextEditingController ageController;
  final TextEditingController genderController;
  final TextEditingController temperatureController;
  final TextEditingController covidStatusController;
  final TextEditingController chestPainController;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 350,
        height: 500,
        child: ListView(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Age',
              ),
            ),
            TextField(
              controller: genderController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Gender',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: temperatureController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Temperature',
              ),
            ),
            TextField(
              controller: covidStatusController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Are you COVID positive?',
              ),
            ),
            TextField(
              controller: chestPainController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Do you have chest pain?',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: onPressed, child: const Text('SUBMIT')),
          ],
        ),
      ),
    );
  }
}
