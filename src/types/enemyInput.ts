interface CreateEnemyInput {
  name: string;
  pv: number;
  attack: number;
  speed: number;
  probability_attack: number;
  is_boss: boolean;
}

export { CreateEnemyInput };
