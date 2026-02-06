import { Request, Response } from 'express';

import { EnemyService } from '../services/enemyService';
import { CreateEnemyInput } from '../types/enemyInput';

class EnemyController {
  service: EnemyService;

  constructor(service: EnemyService) {
    this.service = service;
  }
  async create(req: Request, res: Response) {
    try {
      const body = req.body as Partial<CreateEnemyInput>;
      if (
        !body.name ||
        !body.pv ||
        !body.attack ||
        !body.speed ||
        !body.probability_attack ||
        body.is_boss === undefined
      ) {
        return res.status(400).json({ error: 'Missing required fields' });
      }
      const payload: CreateEnemyInput = body as CreateEnemyInput;
      const enemy = await this.service.create(payload);
      res.status(201).json(enemy);
    } catch (error) {
      console.error(error);
      res.status(400).json({ error: 'Failed to create enemy' });
    }
  }

  async list(req: Request, res: Response) {
    const randomParam = req.query.random as string | undefined;
    const limitParam = req.query.limit as string | undefined;
    const random = randomParam === 'true';
    const limit = limitParam ? Number.parseInt(limitParam, 10) : undefined;
    const enemies = await this.service.list(random, limit);
    res.json(enemies);
  }

  async getById(req: Request, res: Response) {
    const id = req.params.id as string;
    const enemy = await this.service.getById(id);
    if (!enemy) {
      return res.status(404).json({ error: 'Enemy not found' });
    }
    res.json(enemy);
  }

  async update(req: Request, res: Response) {
    const id = req.params.id as string;
    const data = req.body as Partial<CreateEnemyInput>;
    try {
      const updatedEnemy = await this.service.update(id, data);
      res.json(updatedEnemy);
    } catch (error) {
      console.error(error);
      res.status(400).json({ error: 'Failed to update enemy' });
    }
  }

  async delete(req: Request, res: Response) {
    const id = req.params.id as string;
    try {
      await this.service.delete(id);
      res.status(204).send();
    } catch (error) {
      console.error(error);
      res.status(400).json({ error: 'Failed to delete enemy' });
    }
  }
}

export { EnemyController };
