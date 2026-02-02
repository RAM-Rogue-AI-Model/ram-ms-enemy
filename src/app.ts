import 'dotenv/config';

import express from 'express';

import { config } from './utils/config';
import { EnemyController } from './controllers/enemyController';
import { EnemyService } from './services/enemyService';
import { EnemyRouter } from './routes/enemyRouter';
const app = express();
const port = config.PORT;

app.use(express.json());

const enemyService = new EnemyService();
const enemyController = new EnemyController(enemyService);

app.use('/enemy', new EnemyRouter(enemyController).router);

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Server is running on port ${port}`);
});
