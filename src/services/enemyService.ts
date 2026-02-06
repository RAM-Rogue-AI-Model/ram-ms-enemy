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
      is_boss: data.is_boss,
    };
    try {
      const enemy = await prisma.enemy.create({ data: dataSecured });
      void sendLog(
        'ENEMY',
        'INSERT',
        'INFO',
        `Enemy created with id: ${enemy.id}`
      );
      return enemy;
    } catch (error) {
      void sendLog(
        'ENEMY',
        'INSERT',
        'ERROR',
        `Failed to create enemy: ${String(error)}`
      );
      throw new Error(`Failed to create enemy: ${String(error)}`);
    }
  }

  async list(random?: boolean, limit?: number) {
    try {
      const bossChance = Math.random();
      const whereClause = random
        ? bossChance < 0.2
          ? { is_boss: true }
          : {}
        : {};
      let result = await prisma.enemy.findMany({
        where: whereClause,
      });
      if (random && result.length > 1) {
        result = result.sort(() => 0.5 - Math.random());
      }
      if (limit && limit > 0) {
        result = result.slice(0, limit);
      }
      void sendLog(
        'ENEMY',
        'OTHER',
        'INFO',
        `Listed enemies${random ? ' in random order' : ''}${
          limit ? ` with limit ${limit}` : ''
        }`
      );
      return result;
    } catch (error) {
      void sendLog(
        'ENEMY',
        'OTHER',
        'ERROR',
        `Failed to list enemies: ${String(error)}`
      );
      throw new Error(`Failed to list enemies: ${String(error)}`);
    }
  }

  async getById(id: string) {
    try {
      const result = await prisma.enemy.findUnique({
        where: { id },
      });
      if (result === null) {
        void sendLog(
          'ENEMY',
          'OTHER',
          'WARN',
          `Enemy not found with id: ${id}`
        );
        return null;
      }
      void sendLog('ENEMY', 'OTHER', 'INFO', `Fetched enemy with id: ${id}`);
      return result;
    } catch (error) {
      void sendLog(
        'ENEMY',
        'OTHER',
        'ERROR',
        `Failed to fetch enemy with id ${id}: ${String(error)}`
      );
      throw new Error(`Failed to fetch enemy with id ${id}: ${String(error)}`);
    }
  }

  async update(id: string, data: Partial<CreateEnemyInput>) {
    try {
      const existingEnemy = await prisma.enemy.findUnique({
        where: { id },
      });
      if (!existingEnemy) {
        void sendLog(
          'ENEMY',
          'UPDATE',
          'WARN',
          `Enemy not found for update with id: ${id}`
        );
        throw new Error('Enemy not found');
      }

      const result = await prisma.enemy.update({
        where: { id },
        data,
      });
      void sendLog('ENEMY', 'UPDATE', 'INFO', `Enemy updated with id: ${id}`);
      return result;
    } catch (error) {
      void sendLog(
        'ENEMY',
        'UPDATE',
        'ERROR',
        `Failed to update enemy with id ${id}: ${String(error)}`
      );
      throw new Error(`Failed to update enemy with id ${id}: ${String(error)}`);
    }
  }

  async delete(id: string) {
    try {
      const existingEnemy = await prisma.enemy.findUnique({
        where: { id },
      });
      if (!existingEnemy) {
        void sendLog(
          'ENEMY',
          'REMOVE',
          'WARN',
          `Enemy not found for delete with id: ${id}`
        );
        throw new Error('Enemy not found');
      }

      const result = await prisma.enemy.delete({
        where: { id },
      });
      return result;
    } catch (error) {
      void sendLog(
        'ENEMY',
        'REMOVE',
        'ERROR',
        `Failed to delete enemy with id ${id}: ${String(error)}`
      );
      throw new Error(`Failed to delete enemy with id ${id}: ${String(error)}`);
    }
  }
}

export { EnemyService };
