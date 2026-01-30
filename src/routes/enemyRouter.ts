import express, { Router } from 'express';

import { EnemyController } from '../controllers/enemyController';

class EnemyRouter {
  public router: Router;

  constructor(enemyController: EnemyController) {
    this.router = express.Router();

    this.router
      .route('/')
      .post(async (req, res) => {
        await enemyController.create(req, res);
      })
      .get(async (req, res) => {
        await enemyController.list(req, res);
      });

    this.router
      .route('/:id')
      .get(async (req, res) => {
        await enemyController.getById(req, res);
      })
      .put(async (req, res) => {
        await enemyController.update(req, res);
      })
      .delete(async (req, res) => {
        await enemyController.delete(req, res);
      });
  }
}

export { EnemyRouter };
