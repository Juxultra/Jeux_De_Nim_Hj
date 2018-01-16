ALGO: Jeu_de_lallumette

BUT:
ENTREE:
SORTIES:

CONST: 

    LOSE <- 1 : ENTIER 
    NB_ALUM <- 21 : ENTIER 
    MIN_ALLUM <- 1 : ENTIER 
    MAX_ALLUM <- 3 : ENTIER 


VAR:
    nom : chaine de carartere
    restAlum : ENTIER
    nb1 : ENTIER
    perdu : BOOLEEN



DEBUT:

    perdu <- faux
    restAlum <- NB_ALUM 

    ECRIRE "Quelle est votre nom ?"
    LIRE nom                                                                                // julien

    REPETER

        ECRIRE   nom ," veuillez saisir le nombre d'allumette à prendre entre 1 et 3  "     // 2
        LIRE nb1

        SI ( nb1 >= MIN_ALLUM ET nb1 <= MAX_ALLUM ) ALORS                                   // oui
        restAlum <- restAlum - nb1                                                          // 19 <- 21-2

            SI ( restAlum =< LOSE ) ALORS                                                   // non
                ECRIRE nom, " vous avez perdu. "
                perdu <- vraix

            SINON
                ECRIRE  " Le rest des allumettes est de ", restAlum                          // rest 19

            FINSI 


            ECRIRE: " Tour de l' IA "

            restAlum <- restAlum - ALEATOIRE(2)+1                                             // 1

            SI ( restAlum =< LOSE ) ALORS                                                     // non
                ECRIRE nom," vous avez gagner."
                perdu <- vraix

            SINON
                ECRIRE " Le rest des allumettes est de ", restAlum                             // 1

            FINSI 

        SINON
            ECRIRE "Saisi incorecte, veuillez saisir le nombre d'allumette à prendre entre 1  et 3 "

        FINSI

    JUSQUA ( perdu = vrais )

FIN