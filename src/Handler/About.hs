{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.About where

import Import

getAboutR :: Handler Html
getAboutR = do
    authors <- runDB $ getAuthors
    defaultLayout $ do
        setTitle "About - Lightshades"
        $(widgetFile "about")

getAuthors :: DB [Entity Authors]
getAuthors = selectList [] []
