export function getCurrentDateTime(): string {
  const now = new Date();
  return now.toLocaleString();
}
