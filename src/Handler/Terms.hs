{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Terms where

import Import

getTermsR :: Handler Html
getTermsR = do
    defaultLayout $ do
        setTitle "Terms and licences - Lightshades"
        $(widgetFile "terms")

