import express, { Router } from 'express';

import { EnemyController } from '../controllers/enemyController';
import { authenticate, requestDetails } from '../utils/auth';

class EnemyRouter {
  public router: Router;

  constructor(enemyController: EnemyController) {
    this.router = express.Router();

    this.router
      .route('/')
      .post(requestDetails, authenticate, async (req, res) => {
        await enemyController.create(req, res);
      })
      .get(requestDetails, authenticate, async (req, res) => {
        await enemyController.list(req, res);
      });

    this.router
      .route('/:id')
      .get(requestDetails, authenticate, async (req, res) => {
        await enemyController.getById(req, res);
      })
      .put(requestDetails, authenticate, async (req, res) => {
        await enemyController.update(req, res);
      })
      .delete(requestDetails, authenticate, async (req, res) => {
        await enemyController.delete(req, res);
      });
  }
}

export { EnemyRouter };
