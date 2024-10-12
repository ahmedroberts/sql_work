SELECT DISTINCT
[dbo].[ng_person].[person_nbr] AS MedicalRecordNumber,
[dbo].[ng_patient_encounter].[enc_nbr] AS VisitEncounterID,
[dbo].[ng_person].[first_name] AS FirstName,
[dbo].[ng_person].[last_name] AS LastName,
CASE 
WHEN [dbo].[ng_person].[current_gender] IS NULL THEN [dbo].[ng_person].[sex]
ELSE [dbo].[ng_person].[current_gender]
END AS Gender,
[dbo].[ng_person].[date_of_birth] AS DOB,
[dbo].[ng_person].[address_line_1] AS Address1,
[dbo].[ng_person].[address_line_2] AS Address2,
[dbo].[ng_person].[city] AS City,
[dbo].[ng_person].[state] AS PrimaryState,
[dbo].[ng_person].[zip] AS ZipCode,
[dbo].[ng_person].[home_phone] AS HomePhone,
[dbo].[ng_person].[cell_phone] AS MobilePhone,
[dbo].[ng_person].[email_address] AS Email,
[dbo].[ng_patient_encounter].[enc_timestamp] AS EncounterAdmissionDate,
[dbo].[ng_patient_encounter].[enc_timestamp] AS DischargeDate,
[dbo].[ng_location_mstr].[location_name] AS ServiceLocationCode,
'FQHCLA452' AS ServiceLocation,
[dbo].[ng_provider_mstr].[national_provider_id] AS PrescriberNPI

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