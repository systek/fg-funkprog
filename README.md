# Workshop i funksjonell programmering i TypeScript!

### Steg 1: 10 minutters intro til funksjonell programmering av Jacob

Jacob gir oss en rask innføring før vi begynner med selve workshoppen.

### Steg 2: Forberedelser

#### Lokalt

Dersom du vil løse oppgavene lokalt, kan du klone dette repoet:

`git clone git@github.com:systek/fg-funkprog.git`

Deretter installere avhengigheter med `npm`:

`npm i`

Dersom du ikke har node installert, kan du enten installere det lynraskt, eller bruke
CodeSandbox som beskrevet nedenfor.

### CodeSandbox

Eller du kan løse oppgavene i CodeSandbox:

https://codesandbox.io/p/github/systek/fg-funkprog/main

Det vil kreve at du logger inn (perfekt å logge inn med Github).

### Steg 3: Utføre workshoppen

Her kan man velge å løse oppgavene i TypeScript, eller Haskell.

#### TypeScript:

Inne i [workshop](./workshop)-mappen vil du finne følgende oppgaver:

- [01-pure-functions](./workshop/01-pure-functions/pure-functions.ts)
- [02-higher-order-functions](./workshop/02-higher-order-functions/higher-order-functions.ts)
- [03-currying-partial-application](./workshop/03-currying-partial-application/currying-partial-application.ts)
- [04-compose](./workshop/04-compose/compose.ts)
- [05-algebraic-data-types](./workshop/05-algebraic-data-types/algebraic-datatypes.ts)

Hver av disse vil bestå av en oppgave-TypeScript-fil, samt en test fil. Du vil i
utgangspunktet ikke trenge å åpne testfilene om du kjører testene fra terminalen. Men du må gjerne
kjøre testene rett fra filene dersom editoren din støtter det.

Kjør testene mens du løser oppgavene. Her kan du velge å kjøre absolutt alle testene samtidig:
`npm test`

Eller så kan du kjøre en og en oppgave:
`npm test 01` for oppgave 01, `npm test 02` for oppgave 02 osv.

Eller så kan du kjøre en og en underoppgave:
`npm test -- -t="OPPGAVE 1.1"` for oppgave 1.1, og `npm test -- -t="OPPGAVE 1.2"` for oppgave 1.2 osv.

Alle disse kommandoene vil re-kjøre testene når du endrer koden!

#### Haskell:

Inne i [ws-haskell](./ws-haskell)-mappen vil du finne følgende oppgaver:

- [01-pure-functions](./ws-haskell/lib/PureFunctions.hs)
- [02-higher-order-functions](./ws-haskell/lib/HigherOrderFunctions.hs)
- [03-currying-partial-application](./ws-haskell/lib/CurryingPartialApplication.hs)
- [04-compose](./ws-haskell/lib/Compose.hs)

Hver av disse vil bestå av en oppgave-Haskell-fil, samt en test fil (som ligger i [tests](./ws-haskell/tests)). Du vil i
utgangspunktet ikke trenge å åpne testfilene om du kjører testene fra terminalen.

Kjør testene etter at du har løst en oppgave. Her kan du velge å kjøre absolutt alle testene samtidig:
`cabal test`

Eller så kan du kjøre en og en oppgave:
`cabal test PureFunctions` for oppgave 01, `npm test HigherOrderFunctions` for oppgave 02 osv.

#### Jeg står fast!!

Rop ut på [fg_funkprog](https://systekkompis.slack.com/archives/C04AVTJM62Y) så skal vi hjelpe deg!
