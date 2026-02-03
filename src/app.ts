import 'dotenv/config';

import express from 'express';

import { config } from './utils/config';
import { EnemyController } from './controllers/enemyController';
import { EnemyService } from './services/enemyService';
import { EnemyRouter } from './routes/enemyRouter';
import cors from "cors"

const app = express();
const port = config.PORT;

app.use(
  cors({
    origin: [config.API_GATEWAY_URL],
    credentials: true,
  })
);

app.use(express.json());

const enemyService = new EnemyService();
const enemyController = new EnemyController(enemyService);

app.use('/enemy', new EnemyRouter(enemyController).router);

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Server is running on port ${port}`);
});
