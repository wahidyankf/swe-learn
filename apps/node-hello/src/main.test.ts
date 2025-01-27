import { describe, it, expect } from 'vitest';
import { app } from './main';

describe('app', () => {
  it('should have a /api/hello route', () => {
    const routes = app._router.stack
      .filter((layer: any) => layer.route)
      .map((layer: any) => layer.route.path);
    expect(routes).toContain('/api/hello');
  });
});
