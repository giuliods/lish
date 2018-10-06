{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Article where

import Import

-- Define our data that will be used for creating the form.


-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
getArticleR :: Text -> Handler Html
getArticleR article = do
    articles <- runDB $ getArticles article
    defaultLayout $ do
        setTitle "Lightshades"
        $(widgetFile "article")

getArticles :: DBx [Entity Articles] Text
getArticles art = selectList [ArticlesLink ==. art] []
