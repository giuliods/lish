{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Links where

import Import

getLinksR :: Handler Html
getLinksR = do
    defaultLayout $ do
        setTitle "Contatti e links - Lightshades"
        $(widgetFile "links")

