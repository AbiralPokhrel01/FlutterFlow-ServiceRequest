// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';
import 'package:fhir/r4.dart';

Future customeActionOne(
    String bearerToken,
    String patientName,
    String dob,
    String age,
    String gender,
    String bloodPressure,
    String height,
    String weight,
    String insuranceProvider,
    String policyNumber,
    String patientAddress) async {
  final dio = Dio();
  final baseUrl =
      'https://aidbox.shoprideon.com/fhir'; // Update with your Aidbox base Url

  // String? patientId;
  // final patient = Patient(
  //   name: [
  //     HumanName(
  //       family: patientName.split(' ')[1],
  //       given: [patientName.split(' ')[0]],
  //     ),
  //   ],
  //   birthDate: Date(DateTime.parse(dob)),
  //   gender: Code(gender.toLowerCase()), // 'male' or 'female'
  //   address: patientAddress != null
  //       ? [
  //           Address(
  //             text: patientAddress,
  //           ),
  //         ]
  //       : null,
  // );
  // try {
  //   Response patientResponse = await dio.post(
  //     '$baseUrl/Patient',
  //     data: patient.toJson(),
  //     options: Options(headers: {
  //       'Content-Type': 'application/fhir+json',
  //       'Authorization': 'Bearer $bearerToken',
  //     }),
  //   );
  //   print('ServiceRequest sent successfully: ${patientResponse.data}');
  //   patientId = patientResponse.data['id'];
  // } catch (e) {
  //   print('Error sending ServiceRequest: $e');
  // }

  // if (patientId == null) {
  //   throw Exception('Patient ID not found in response.');
  // }

  final serviceRequest = ServiceRequest(
    resourceType: R4ResourceType.ServiceRequest,
    // status: Code('draft'),
    subject: Reference(
      type: FhirUri('Patient'),
      reference: 'Patient/1',
    ),
    // intent: Code('order'),
    basedOn: [],
    extension_: <FhirExtension>[
      // Extension for blood pressure.
      FhirExtension(
        url: FhirUri('blood-pressure'),
        valueString: bloodPressure,
      ),
      // Extension for height.
      FhirExtension(
        url: FhirUri('height'),
        valueString: height,
      ),
      // Extension for weight.
      FhirExtension(
        url: FhirUri('weight'),
        valueString: weight,
      ),
      // Extension for insurance-provider.
      FhirExtension(
        url: FhirUri('insurance-provider'),
        valueString: insuranceProvider,
      ),
      // Extension for policy-number.
      FhirExtension(
        url: FhirUri('policy-number'),
        valueString: policyNumber,
      ),
    ],
  );

  try {
    final response = await dio.post(
      '$baseUrl/ServiceRequest',
      data: serviceRequest.toJson(),
      options: Options(headers: {
        'Content-Type': 'application/fhir+json',
        'Authorization': 'Bearer $bearerToken',
      }),
    );
    print('ServiceRequest sent successfully: ${response.data}');
  } catch (e) {
    print('Error sending ServiceRequest: $e');
  }
}
