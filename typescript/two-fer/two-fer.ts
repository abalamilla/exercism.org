export function twoFer(name: string): string {
  const nameToUse = name ? name : "you";
  
  return `One for ${nameToUse}, one for me.`;
}
