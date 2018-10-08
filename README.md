# Lightshader
v0.1.0
Lightshader e' un sito internet realizzato con Haskell e Yesod con lo scopo principale di fornire un blog completo di funzioni da webapp e strumenti aggiuntivi, che usi al minimo Javascript e al massimo CSS.

## Funzionamento
Lightshader è un sito internet sviluppato in Haskell cfon il framework Yesod.
Composta da una pagina che genera articoli, una per gli sketch (in lavorazione) e la pagina dei
servizi (in lavorazione), insieme ad altre pagine informative ed esplicative.

Il percorso è:

L /
| L app
| L config (gestione dei database, percorsi pagine e yaml delle impostazioni)
| L src (cartella dei handler delle pagine)
| L static (tutti i file multimediali)
| L templates (tutti i template html, css e js base delle effettive pagine, non sono compatibili con apache)
| L test
| L README.md (questo file)
| L LICENCE (la licenza BSD 3-clause clear)
| L package.yaml (il file delle dipendenze)
| L stack.yaml (il file base di stack)

Per la semplice esecuzione non sarà necessario modificare alcun file e soprettutto per l'uso base
(senza l'aggiunta di moduli non base) non sarà necessario modificare i file .yaml e .yml.

Alla prima compilazione viene generato un file lish.cabal che traduce i file yaml in informazioni per
l'installatore cabal. questo file non va modificato, e se è stato modificato andrà cancecllato. le
informazioni contenute sono replica di quelle nei file package.yaml e settings.yml, modifiche alle
dipendenze comporta problemi nella gestione delle dipendenze ed un complicarsi della gestione.

## Installazione
Lightshader e' costruito con stack, lo strumento per lo sviluppo di applicazioni in Haskell, inoltre usa come database MongoDB (versione v4.0.0).

Per compilare Lightshader sul computer bastera'
``
git clone http://github.com/giuliods/lish.git
cd lish
``
Successivamente andranno installati i componenti necessari all'esecuzione:
``
stack install cabal-install yesod-bin
``
Ed infine si puo' compilare Lightshader con:
``
stack build
stack install
stack exec lish
``
Oppure eseguire direttamente in modalita' DEV (piu' lenta)
``
stack exec -- yesod devel
``

## Informazioni
**Lightshader è** una webapp completa per lo sviluppo di un blog o un giornale online. con pagine
preimpostate ma modificabili per chi ha conoscenze di Haskell, Yesod, programmazione web e di
MongoDB.

**giuliods è** Giulio De Stasio, studente di matematica all'università di Trieste e sviluppatore
a tempo perso. Non ho un linguaggio di riferimento, uso quello che è più comodo usare per un
determinato scopo (evitando accuratamente Java).
