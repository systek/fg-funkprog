// PUT THIS IS 05-algebraic unions
// RENAME THIS FILE TO 06-typeclasses
type GoodOrBadUnion = { goodStuff: number } | { ohNoError: string };

function somethingEither(input: GoodOrBadUnion) {}
