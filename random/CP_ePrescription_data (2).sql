SELECT DISTINCT
[dbo].[ng_prescription_audit].[uniq_id] AS OrderID,
FORMAT(CAST([dbo].[ng_prescription_audit].[create_timestamp] AS DATE),'yyyMMdd') AS RXOrderDate,
[dbo].[ng_patient_medication].[rx_quanity] AS Quantity,
[dbo].[ng_patient_medication].[rx_refills] AS NoOfRefills,
[dbo].[ng_person].[person_nbr] AS MedicalRecordNumber,
[dbo].[ng_patient_encounter].[enc_nbr] AS EncounterNumber,
[dbo].[ng_person].[first_name] AS PatientFirstName,
[dbo].[ng_person].[last_name] AS PatientLastName,
CASE 
WHEN [dbo].[ng_person].[current_gender] IS NULL THEN [dbo].[ng_person].[sex]
ELSE [dbo].[ng_person].[current_gender]
END AS Gender,
[dbo].[ng_person].[date_of_birth] AS DOB,
[dbo].[ng_person].[home_phone] AS HomePhone,
[dbo].[ng_person].[cell_phone] AS MobilePhone,
[dbo].[ng_person].[email_address] AS Email,
[dbo].[ng_person].[address_line_1] AS PrimaryAddress,
[dbo].[ng_person].[address_line_2] AS PrimaryAddress2,
[dbo].[ng_person].[city] AS PrimaryCity,
[dbo].[ng_person].[state] AS PrimaryState,
[dbo].[ng_person].[zip] AS PrimaryPostalCode,
[dbo].[ng_patient_encounter].[enc_timestamp] AS VisitDate,
[dbo].[ng_patient_medication].[diagnosis_code_id] AS DiagnosisCode,
[dbo].[ng_location_mstr].[location_name] AS ServiceLocationCode,
'FQHCLA452' AS ServiceLocation,
[dbo].[ng_provider_mstr].[first_name] AS PrescriberFirstName,
[dbo].[ng_provider_mstr].[last_name] AS PrescriberLastName,
[dbo].[ng_provider_mstr].[national_provider_id] AS PrescriberNPI,
[dbo].[ng_provider_practice_mstr].[dea_nbr] AS PrescriberDEA,
[dbo].[ng_patient_medication].[ndc_id] AS NDC,
-- AS PharmacyNPI
-- AS PharmacyNCPDP
[dbo].[ng_prescription_audit].[destination] AS PHName

FROM 
[dbo].[ng_prescription_audit]

INNER JOIN 
[dbo].[ng_patient_encounter] ON [dbo].[ng_patient_encounter].[enc_id] = [dbo].[ng_prescription_audit].[enc_id]

INNER JOIN 
[dbo].[ng_patient_medication] ON [dbo].[ng_patient_medication].[uniq_id] = [dbo].[ng_prescription_audit].[medication_uniq_id]

INNER JOIN 
[dbo].[ng_person] ON [dbo].[ng_person].[person_id] = [dbo].[ng_patient_encounter].[person_id]

INNER JOIN 
[dbo].[ng_provider_mstr] ON [dbo].[ng_provider_mstr].[provider_id] = [dbo].[ng_patient_encounter].[rendering_provider_id]

INNER JOIN 
[dbo].[ng_location_mstr] ON [dbo].[ng_patient_encounter].[location_id] = [dbo].[ng_location_mstr].[location_id]

INNER JOIN 
[dbo].[ng_provider_practice_mstr] ON [dbo].[ng_provider_practice_mstr].[provider_id] = [dbo].[ng_provider_mstr].[provider_id]