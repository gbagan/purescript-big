export const eqImpl = x => y => x === y;

export const compareImpl = x => y => x === y ? 0 : x < y ? - 1 : 1;

export const zeroImpl = 0n;

export const oneImpl = 1n;

export const addImpl = x => y => x + y;

export const subImpl = x => y => x - y;

export const mulImpl = x => y => x * y;

export const fromInt = x => BigInt(x);

export const fromStringImpl = just => nothing => s => { 
  try {
    return just(BigInt(s));
  } catch (err) {
    return nothing;
  }
}

export const toNumber = x => Number(x);

