-- CreateTable
CREATE TABLE `Enemy` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `pv` INTEGER NOT NULL,
    `attack` INTEGER NOT NULL,
    `speed` INTEGER NOT NULL,
    `probability_attack` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440000', 'Graphiste', 30, 5, 10, 30);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440001', 'Professeur', 50, 10, 8, 40);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440002', 'Médecin', 80, 15, 5, 50);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440003', 'ChatGpt', 70, 12, 11, 55);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440004', 'Gemini', 90, 14, 10, 60);
INSERT INTO Enemy (id, name, pv, attack, speed, probability_attack) VALUES ('550e8400-e29b-41d4-a716-446655440005', 'Mistral', 150, 20, 4, 65);