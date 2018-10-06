{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Mission where

import Import

getMissionR :: Handler Html
getMissionR = do
    defaultLayout $ do
        setTitle "Obbiettivi - Lightshades"
        $(widgetFile "mission")

