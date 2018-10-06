# Lightshader
v0.1.0
Lightshader e' un sito internet realizzato con Haskell e Yesod con lo scopo principale di fornire un blog completo di funzioni da webapp e strumenti aggiuntivi, che usi al minimo Javascript e al massimo CSS.

# Installazione
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