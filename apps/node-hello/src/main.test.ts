import { describe, it, expect } from 'vitest';
import { app } from './main.js';

interface RouteLayer {
  route?: { path: string };
}

describe('app', () => {
  it('should have a /api/hello route', () => {
    const routes = (app._router.stack as RouteLayer[])
      .filter(
        (layer): layer is RouteLayer & { route: { path: string } } =>
          layer.route !== undefined
      )
      .map((layer) => layer.route.path);
    expect(routes).toContain('/api/hello');
  });
});
