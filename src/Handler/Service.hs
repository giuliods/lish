{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Service where

import Import

getServiceR :: Text -> Handler Html
getServiceR "home" = do
    defaultLayout $ do
        setTitle "Servizi - Lightshades"
        $(widgetFile "service")

getServiceR "iscrizione" = do
    (widget,enctype) <- generateFormPost subscribeForm
    defaultLayout $ do
        setTitle "Iscrizione - Lightshades"
        $(widgetFile "subscribe")

getServiceR "disiscrizione" = do
    (widget,enctype) <- generateFormPost unsubscribeForm
    defaultLayout $ do
        setTitle "Disiscrizione - Lightshades"
        $(widgetFile "unsubscribe")

getServiceR _ = do
    defaultLayout $ do
        setTitle "Servizi - Lightshades"
        $(widgetFile "service")

postServiceR :: Text -> Handler Html
postServiceR "iscrizione" = do
    ((result, widget), enctype) <- runFormPost subscribeForm
    case result of
        FormSuccess person -> defaultLayout $ do
         setTitle "Servizi - Lightshades"
         $(widgetFile "terms")
        _ -> defaultLayout $ do
         setTitle "Servizi - Lightshades ee"
         $(widgetFile "terms")

subscribeForm :: Form MailingList
subscribeForm = renderDivs $ Subscribe
 <$> areq emailField "Indirizzo e-mail" Nothing
 <*> areq textField "Nome" Nothing
 <*> areq textField "Cognome" Nothing
 <*> aopt textField "Note (opzionale)" Nothing
 <*> areq checkBoxField "Accetto i termini d'uso e il trattamento dei dati*" Nothing

unsubscribeForm :: Form MailingList
unsubscribeForm = renderDivs $ Unsubscribe
 <$> areq emailField "Indirizzo e-mail" Nothing
 <*> aopt textField "Motivo (opzionale)" Nothing
 <*> areq checkBoxField "Accetto i termini d'uso e il trattamento dei dati*" Nothing

data MailingList = Subscribe Text Text Text (Maybe Text) Bool
                 | Unsubscribe Text (Maybe Text) Bool

