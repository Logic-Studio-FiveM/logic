local Cards <const> = {
    homePage = ([==[{
        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
        "type": "AdaptiveCard",
        "version": "1.4",
        "body": [
            {
                "type": "TextBlock",
                "text": "Bienvenue sur %s",
                "weight": "Bolder",
                "size": "large"
            },
            {
                "type": "TextBlock",
                "text": "Connectez-vous à votre compte ou créez un nouveau compte pour accéder au serveur",
                "weight": "Bolder",
                "size": "medium"
            }
        ],
        "actions": [
            {
                "id": "homeLoginButton",
                "type": "Action.Submit",
                "title": "Se connecter",
                "data": {
                    "action": "login"
                }
            },
            {
                "id": "homeRegisterButton",
                "type": "Action.Submit",
                "title": "Créer un compte",
                "data": {
                    "action": "register"
                }
            },
            {
                "id": "homeQuitButton",
                "type": "Action.Submit",
                "title": "Quitter",
                "data": {
                    "action": "quit"
                }
            }
        ]
    }]==]):format(GetConvar('serverName', 'Logic Gamemode')),

    loginPage = ([==[{
        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
        "type": "AdaptiveCard",
        "version": "1.4",
        "body": [
            {
                "type": "TextBlock",
                "text": "Page de connexion",
                "weight": "Bolder",
                "size": "large"
            },
            {
                "type": "TextBlock",
                "text": "Veuillez entrer votre nom d'utilisateur et votre mot de passe pour vous connecter",
                "wrap": true,
                "isSubtle": true,
                "weight": "Bolder",
                "size": "medium"
            },
            {
                "type": "Input.Text",
                "id": "loginUsername",
                "label": "Nom d'utilisateur",
                "placeholder": "Entrez votre nom d'utilisateur",
                "maxLength": 20
            },
            {
                "type": "Input.Text",
                "id": "loginPassword",
                "label": "Mot de passe",
                "placeholder": "Entrez votre mot de passe",
                "maxLength": 20
            }
        ],
        "actions": [
            {
                "id": "loginSubmitButton",
                "type": "Action.Submit",
                "title": "Se connecter",
                "data": {
                    "action": "login"
                }
            },
            {
                "id": "loginBackButton",
                "type": "Action.Submit",
                "title": "Retour",
                "data": {
                    "action": "back"
                }
            }
        ]
    }]==]):format(),

    registerPage = ([==[{
        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
        "type": "AdaptiveCard",
        "version": "1.4",
        "body": [
            {
                "type": "TextBlock",
                "text": "Page d'inscription",
                "weight": "Bolder",
                "size": "large"
            },
            {
                "type": "TextBlock",
                "text": "Veuillez entrer votre nom d'utilisateur et votre mot de passe pour vous inscrire",
                "wrap": true,
                "isSubtle": true,
                "weight": "Bolder",
                "size": "medium"
            },
            {
                "type": "Input.Text",
                "id": "registerUsername",
                "label": "Nom d'utilisateur",
                "placeholder": "Entrez votre nom d'utilisateur",
                "maxLength": 20
            },
            {
                "type": "Input.Text",
                "id": "registerPassword",
                "label": "Mot de passe",
                "placeholder": "Entrez votre mot de passe",
                "maxLength": 20
            }
        ],
        "actions": [
            {
                "id": "registerSubmitButton",
                "type": "Action.Submit",
                "title": "S'inscrire",
                "data": {
                    "action": "register"
                }
            },
            {
                "id": "loginBackButton",
                "type": "Action.Submit",
                "title": "Retour",
                "data": {
                    "action": "back"
                }
            }
        ]
    }]==]):format(),
}

_ENV.Cards = Cards