import { send } from 'node:process';
import { LoggerProducer } from '../producers/LoggerProducer';
import { CreateEnemyInput } from '../types/enemyInput';
import { prisma } from '../utils/mariaConnection';
import { sendLog } from '../utils/message';

class EnemyService {
  async create(data: CreateEnemyInput) {
    const dataSecured = {
      name: data.name,
      pv: data.pv,
      attack: data.attack,
      speed: data.speed,
      probability_attack: data.probability_attack,
    };

    const enemy = await prisma.enemy.create({ data: dataSecured });

    sendLog('ENEMY', 'INSERT', 'INFO', `Enemy created with id: ${enemy.id}`);

    return enemy;
  }

  async list(random?: boolean, limit?: number) {
    const queryOptions: any = {};
    let result = await prisma.enemy.findMany();
    if (random && result.length > 1) {
      result = result.sort(() => 0.5 - Math.random());
    }
    if (limit && limit > 0) {
      result = result.slice(0, limit);
    }

    sendLog(
      'ENEMY',
      'OTHER',
      'INFO',
      `Listed enemies${random ? ' in random order' : ''}${
        limit ? ` with limit ${limit}` : ''
      }`
    );

    return result;
  }

  async getById(id: string) {
    let result = prisma.enemy.findUnique({
      where: { id },
    });

    sendLog('ENEMY', 'OTHER', 'INFO', `Fetched enemy with id: ${id}`);
    return result;
  }

  async update(id: string, data: Partial<CreateEnemyInput>) {
    sendLog('ENEMY', 'UPDATE', 'INFO', `Enemy updated with id: ${id}`);

    return prisma.enemy.update({
      where: { id },
      data,
    });
  }

  async delete(id: string) {
    sendLog('ENEMY', 'REMOVE', 'INFO', `Enemy deleted with id: ${id}`);

    return prisma.enemy.delete({
      where: { id },
    });
  }
}

export { EnemyService };
