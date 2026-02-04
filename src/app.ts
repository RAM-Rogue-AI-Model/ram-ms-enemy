import 'dotenv/config';

import fs from 'node:fs';

import cors from 'cors';
import express from 'express';
import swaggerUi from 'swagger-ui-express';
import * as YAML from 'yaml';

import { EnemyController } from './controllers/enemyController';
import { EnemyRouter } from './routes/enemyRouter';
import { EnemyService } from './services/enemyService';
import { config } from './utils/config';

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

const file = fs.readFileSync('./openapi.yml', 'utf8');
const swaggerDocument = YAML.parse(file) as object;

app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Server is running on http://localhost:${port}`);
  // eslint-disable-next-line no-console
  console.log(`docs available at http://localhost:${port}/docs`);
});
