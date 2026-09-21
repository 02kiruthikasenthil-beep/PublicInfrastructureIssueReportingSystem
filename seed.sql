-- Reference data only. Demo accounts are NOT seeded here: the backend creates them at start-up
-- when SEED_OFFICER_PASSWORD / SEED_ADMIN_PASSWORD are set, so no password is ever stored in git.
INSERT INTO issue_categories(name) VALUES
('Road / Pothole'), ('Streetlight'), ('Water / Drainage'), ('Waste / Garbage'), ('Public Safety')
ON CONFLICT (name) DO NOTHING;

INSERT INTO departments(name) VALUES
('Roads Department'), ('Electrical Department'), ('Water & Drainage Department'),
('Sanitation Department'), ('Public Works Department')
ON CONFLICT (name) DO NOTHING;
