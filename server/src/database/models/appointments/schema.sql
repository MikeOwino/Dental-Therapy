DROP TABLE IF EXISTS "appointments" CASCADE;

CREATE TABLE "appointments" (
  "id" SERIAL PRIMARY KEY,
  "patient_id" INTEGER REFERENCES patients(id) NOT NULL,
  "appointment_date" TEXT NOT NULL,
  "appointment_time" TIME NOT NULL,
  "notes" TEXT,
  "created_at" TIMESTAMP NOT NULL DEFAULT NOW()
);
