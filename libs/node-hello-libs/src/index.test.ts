import { describe, it, expect } from 'vitest';
import { getCurrentDateTime } from './index';

describe('getCurrentDateTime', () => {
  it('should return a string', () => {
    const result = getCurrentDateTime();
    expect(typeof result).toBe('string');
  });

  it('should return a valid date string', () => {
    const result = getCurrentDateTime();
    const date = new Date(result);
    expect(date.toString()).not.toBe('Invalid Date');
  });
});
