export function getCurrentDateTime(): string {
  return new Date().toLocaleString();
}

export function formatDate(date: Date): string {
  return date.toISOString();
}
