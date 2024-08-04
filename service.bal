// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.
//
//
// AUTO-GENERATED FILE.
//
// This file is auto-generated by Ballerina.
// Developers are allowed to modify this file as per the requirement.

import ballerinax/health.fhir.r4;
import ballerinax/health.fhirr4;
import ballerinax/health.fhir.r4.uscore501;

# Generic type to wrap all implemented profiles.
# Add required profile types here.
# public type Patient r4:Patient|<other_Patient_Profile>;
public type Patient uscore501:USCorePatientProfile;

# initialize source system endpoint here

# A service representing a network-accessible API
# bound to port `9090`.
service / on new fhirr4:Listener(9090, apiConfig) {

    // Read the current state of single resource based on its id.
    isolated resource function get fhir/r4/Patient/[string id] (r4:FHIRContext fhirContext) returns Patient|r4:OperationOutcome|r4:FHIRError {
        Patient patient = {
        resourceType: "Patient",
        id: "1",
        meta: {
            lastUpdated: "2021-08-24T10:10:10Z",
            profile: [
                "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
            ]
        },
        identifier: [
            {
                use: "official",
                system: "http://hl7.org/fhir/sid/us-npi",
                value: "1234567890"
            }
        ],
        name: [
            {
                use: "official",
                family: "Smith",
                given: [
                    "John",
                    "Jacob"
                ],
                prefix: [
                    "Dr."
                ]
            }
        ]
    ,
    gender: "unknown"};
    return patient;
    }

}
