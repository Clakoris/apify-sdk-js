import { describe, it, expect } from 'vitest';

describe('Basic test', () => {
    it('should pass', () => {
        expect(2 + 2).toBe(4);
    });

    it('should fail', () => {
        expect(2 + 2).toBe(5); // This will fail
    });
});
