const lowRisk = 'LOW RISK';
const mediumRisk = 'MEDIUM RISK';
const highRisk = 'HIGH RISK';
const undetermined = 'UNDETERMINED';

// determine chest pain
String getChestPainRisk(String chestPain) {
  if (chestPain == 'yes') {
    return highRisk;
  } else if (chestPain == 'no') {
    return lowRisk;
  }
  return undetermined;
}

// determine covid
String getCovidStatus(String covidStatus) {
  if (covidStatus == 'yes') {
    return highRisk;
  } else if (covidStatus == 'no') {
    return lowRisk;
  }
  return undetermined;
}

// determine temperature
String getTemperatureRisk(String temperature) {
  final newTemperature = double.parse(temperature);

  if (newTemperature > 39 || newTemperature < 36) {
    return highRisk;
  } else if (newTemperature < 40 && newTemperature > 36.7) {
    return mediumRisk;
  } else if (newTemperature > 35.9 && newTemperature < 36.8) {
    return lowRisk;
  }
  return undetermined;
}

String getOverallRisk(String temperatureRisk, String covidRisk, String chestPainRisk) {
  final risks = [temperatureRisk, covidRisk, chestPainRisk];

  if (risks.contains(highRisk)) {
    return highRisk;
  } else if (risks.contains(mediumRisk)) {
    return mediumRisk;
  } else if (risks.contains(lowRisk)) {
    return lowRisk;
  }
  return undetermined;
}
