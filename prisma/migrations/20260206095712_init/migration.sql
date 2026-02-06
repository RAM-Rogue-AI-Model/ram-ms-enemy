-- AlterTable
ALTER TABLE `Enemy` ADD COLUMN `is_boss` BOOLEAN NOT NULL DEFAULT false;

INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440000', 'Professeur', 20, 10, 10, 40, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440001', 'Médecin', 25, 5, 10, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440002', 'Graphiste', 15, 10, 15, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440003', 'ChatGpt', 10, 15, 15, 55, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440004', 'Gemini', 12, 13, 15, 60, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440005', 'Mistral', 18, 12, 10, 65, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440006', 'Plombier', 20, 12, 8, 30, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440007', 'Avocat', 15, 15, 10, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440008', 'Copilot', 10, 20, 10, 50, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440009', 'Claude', 12, 18, 10, 45, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440010', 'Data Scientist', 18, 12, 10, 40, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440011', 'Comptable', 20, 8, 12, 35, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440012', 'Stable Diffusion', 12, 18, 10, 50, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440013', 'Midjourney', 15, 15, 10, 45, false);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440014', 'Prompt Engineer', 10, 20, 10, 55, false);


INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440100', 'Directeur', 30, 20, 10, 70, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440101', 'Agent Copilot', 20, 25, 15, 80, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440102', 'Codex', 25, 20, 15, 75, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440103', 'Elon Musk', 20, 30, 10, 85, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440104', 'Terminator', 25, 25, 10, 90, true);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack, is_boss) VALUES ('550e8400-e29b-41d4-a716-446655440105', 'Ultron', 15, 30, 15, 95, true);
