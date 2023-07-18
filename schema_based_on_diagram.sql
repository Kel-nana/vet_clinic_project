-- create indexes
CREATE INDEX patient_id_index ON medical_histories(patient_id);
CREATE INDEX medical_history_id_index ON invoices(medical_history_id);
CREATE INDEX invoice_id_index ON invoice_items(invoice_id);
CREATE INDEX treatment_id_index ON invoice_items(treatment_id);
CREATE INDEX treatment_id_joinIndex ON treatment_history(treatment_id);
CREATE INDEX medical_history_id_joinIndex ON treatment_history(medical_history_id);