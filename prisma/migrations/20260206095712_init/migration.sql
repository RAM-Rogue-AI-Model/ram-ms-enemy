-- AlterTable
ALTER TABLE `Enemy` ADD COLUMN `is_boss` BOOLEAN NOT NULL DEFAULT false;


INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440000', 'Professeur', 20, 15, 15, 40, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440001', 'Médecin', 18, 17, 15, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440002', 'Graphiste', 15, 20, 15, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440006', 'Plombier', 18, 17, 15, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440007', 'Avocat', 15, 20, 15, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440010', 'Data Scientist', 18, 17, 15, 40, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440011', 'Comptable', 20, 15, 15, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440014', 'Prompt Engineer', 15, 20, 15, 55, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440015', 'Ingénieur', 18, 17, 15, 38, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440016', 'Enseignant', 20, 15, 15, 32, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440017', 'Infirmier', 17, 18, 15, 36, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440018', 'Journaliste', 15, 20, 15, 34, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440019', 'Chef de projet', 16, 19, 15, 33, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440020', 'Développeur', 15, 20, 15, 37, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440021', 'Architecte', 18, 17, 15, 31, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440022', 'Musicien', 15, 20, 15, 29, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440023', 'Artiste', 15, 20, 15, 28, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440024', 'Chef cuisinier', 17, 18, 15, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440025', 'Policier', 20, 15, 15, 39, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440026', 'Pompier', 19, 16, 15, 41, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440027', 'Vétérinaire', 18, 17, 15, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440028', 'Pharmacien', 17, 18, 15, 33, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440029', 'Psychologue', 16, 19, 15, 32, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440030', 'Commercial', 15, 20, 15, 36, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440031', 'Consultant', 18, 17, 15, 34, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440032', 'Technicien', 19, 16, 15, 31, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440033', 'Électricien', 18, 17, 15, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440034', 'Jardinier', 17, 18, 15, 29, false);


-- Boss IA (total = 80, répartitions différentes)
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440003', 'ChatGpt', 35, 25, 20, 55, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440004', 'Gemini', 20, 40, 20, 60, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440005', 'Mistral', 25, 35, 20, 65, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440008', 'Copilot', 30, 30, 20, 50, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440009', 'Claude', 28, 32, 20, 45, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440012', 'Stable Diffusion', 22, 38, 20, 50, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440013', 'Midjourney', 24, 26, 30, 45, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440102', 'Codex', 32, 28, 20, 75, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440101', 'Agent Copilot', 27, 33, 20, 80, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440105', 'Ultron', 36, 24, 20, 95, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440104', 'Terminator', 29, 31, 20, 90, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440100', 'Directeur', 26, 34, 20, 70, true);

-- Boss unique à 100 points
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655449999', 'Omega Boss', 40, 35, 25, 99, true);
