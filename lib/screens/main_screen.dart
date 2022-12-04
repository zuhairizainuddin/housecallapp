import 'package:flutter/material.dart';
import 'package:house_call_app/business/triage_helpers.dart';
import 'package:house_call_app/screens/dialog_screen.dart';

import '../business/open_dialog.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final temperatureController = TextEditingController();
  final covidStatusController = TextEditingController();
  final chestPainController = TextEditingController();

  String name = 'Zuhairi';
  String age = '3';
  String gender = 'Male';
  String covidStatus = '';
  String chestPain = '';
  String temperature = '';
  String overallRisk = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('House Call'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.green,
                width: 300,
                height: 200,
                child: Center(
                  child: Text(
                    overallRisk,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  '$name, $age year old, $gender',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    openDialog(
                      context,
                      DialogScreen(
                        nameController: nameController,
                        ageController: ageController,
                        temperatureController: temperatureController,
                        chestPainController: chestPainController,
                        covidStatusController: covidStatusController,
                        genderController: genderController,
                        onPressed: () {
                          setState(
                            () {
                              name = nameController.text;
                              age = ageController.text;
                              gender = genderController.text;
                              covidStatus = covidStatusController.text;
                              chestPain = chestPainController.text;
                              temperature = temperatureController.text;

                              final covidRisk = getCovidStatus(covidStatus);
                              final chestPainRisk = getChestPainRisk(chestPain);
                              final tempRisk = getTemperatureRisk(temperature);

                              overallRisk = getOverallRisk(tempRisk, covidRisk, chestPainRisk);
                            },
                          );

                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                  child: const Text('Get Status')),
            ],
          ),
        ),
      ),
    );
  }
}
