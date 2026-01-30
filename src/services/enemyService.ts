import { CreateEnemyInput } from '../types/enemyInput';
import { prisma } from '../utils/mariaConnection';

class EnemyService {
  async create(data: CreateEnemyInput) {
    const dataSecured = {
      name: data.name,
      pv: data.pv,
      attack: data.attack,
      speed: data.speed,
      probability_attack: data.probability_attack,
    };
    return prisma.enemy.create({ data: dataSecured });
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
    return result;
  }

  async getById(id: string) {
    return prisma.enemy.findUnique({
      where: { id },
    });
  }

  async update(id: string, data: Partial<CreateEnemyInput>) {
    return prisma.enemy.update({
      where: { id },
      data,
    });
  }
  async delete(id: string) {
    return prisma.enemy.delete({
      where: { id },
    });
  }
}

export { EnemyService };
