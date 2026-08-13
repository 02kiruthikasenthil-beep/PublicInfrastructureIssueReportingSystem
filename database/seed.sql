INSERT INTO issue_categories(name) VALUES
('Road / Pothole'),
('Streetlight'),
('Water / Drainage'),
('Waste / Garbage'),
('Public Safety')
ON CONFLICT (name) DO NOTHING;

INSERT INTO departments(name) VALUES
('Roads Department'),
('Electrical Department'),
('Water & Drainage Department'),
('Sanitation Department'),
('Public Works Department')
ON CONFLICT (name) DO NOTHING;
