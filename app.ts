import 'dotenv/config';

import express from 'express';

import { config } from './src/utils/config';
import { EnemyController } from './src/controllers/enemyController';
import { EnemyService } from './src/services/enemyService';
import { EnemyRouter } from './src/routes/enemyRouter';
const app = express();
const port = config.PORT;
// app.use(
//   cors({
//     origin: [
//       'http://localhost:8081',
//       'http://localhost:5173',
//       'http://localhost:3004',
//     ],
//     credentials: true,
//   })
// );

app.use(express.json());

const enemyService = new EnemyService();
const enemyController = new EnemyController(enemyService);

app.use('/enemy', new EnemyRouter(enemyController).router);

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Server is running on port ${port}`);
});
