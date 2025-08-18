import type { SharedType } from '@emissa/shared';

export function backendMessage(): SharedType {
  return { message: 'backend' };
}

console.log(backendMessage());
