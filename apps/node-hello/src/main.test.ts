import { describe, it, expect } from 'vitest';
import { app } from './main.js';

interface RouteLayer {
  route?: { path: string };
}

describe('app', () => {
  it('should have a /api/hello route', () => {
    const routes = (app._router.stack as RouteLayer[])
      .filter((layer) => layer.route)
      .map((layer) => layer.route!.path);
    expect(routes).toContain('/api/hello');
  });
});
