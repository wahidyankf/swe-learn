import { describe, it, expect } from 'vitest';
import { getCurrentDateTime, formatDate } from './index.js';

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

describe('formatDate', () => {
  it('should format date to ISO string', () => {
    const date = new Date('2025-01-27T10:15:00Z');
    const result = formatDate(date);
    expect(result).toBe('2025-01-27T10:15:00.000Z');
  });
});
