import express, { Router } from 'express';

import { EnemyController } from '../controllers/enemyController';
import { authenticate } from '../utils/auth';

class EnemyRouter {
  public router: Router;

  constructor(enemyController: EnemyController) {
    this.router = express.Router();

    this.router
      .route('/')
      .post(authenticate, async (req, res) => {
        await enemyController.create(req, res);
      })
      .get(authenticate, async (req, res) => {
        await enemyController.list(req, res);
      });

    this.router
      .route('/:id')
      .get(authenticate, async (req, res) => {
        await enemyController.getById(req, res);
      })
      .put(authenticate, async (req, res) => {
        await enemyController.update(req, res);
      })
      .delete(authenticate, async (req, res) => {
        await enemyController.delete(req, res);
      });
  }
}

export { EnemyRouter };
