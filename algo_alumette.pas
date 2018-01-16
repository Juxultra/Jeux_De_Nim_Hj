{
ALGO:jeux_allumettes
BUT: 
ENTRER:
SORTIE:


CONST:
	LOSE <- 1 : ENTIER 
	NB_ALUM <- 21 : ENTIER 
	MIN_ALLUM <- 1 : ENTIER 
	MAX_ALLUM <- 3 : ENTIER 


VAR :
	njoueur : ENTIER 
	cpt_tour : ENTIER
	restAlum : ENTIER
	nb1 : ENTIER
	perdu : BOOLEEN
	

BEBUT: 
	perdu <- faux
	cpt_tour <- 1
	restAlum <- NB_ALUM

	ECRIRE "bien venu sur le jeu des 21 allumettes"

REPETER

	SI cpt_tour = MOD 2 <> 0 ALORS
		njoueur <- 1

	SINON 
		njoueur <- 2

	FINSI


	ECRIRE "Joueur ", njoueur, "veuillez saisir le nombre d'allumette à prendre entre 1 et 3"

    LIRE nb1
  	
  	cpt_tour <- cpt_tour + 1

    SI ( nb1 >= MIN_ALLUM ET nb1 <= MAX_ALLUM ) ALORS 
    restAlum = restAlum - nb1


        SI ( restAlum =< LOSE ) ALORS
        	DEBUT
         	ECRIRE: " Joueur ", njoueur, " a perdu."
         	perdu <- vrai
			FIN


        SINON
         	ECRIRE " Le rest des allumettes est de ", restAlum 

        FINSI

    SINON
         ECRIRE "Saisi incorecte, veuillez saisir le nombre d'allumette à prendre entre 1  et 3 "

    FINSI

JUSQUA (perdu = vrai)

FIN
}


Program jeux_allumettes;
uses crt;

const
	LOSE = 1 ;
	NB_ALUM = 21 ;
	MIN_ALLUM = 1 ;
	MAX_ALLUM = 3 ;

var
	njoueur : integer ;
	cptTour : integer ;
	restAlum : integer ;
	nb1 : integer ;
	tourJoueur : integer ;
	perdu : BOOLEAN ;

Begin
  clrscr;
  	perdu := False;
 	cptTour := 1;
	restAlum := NB_ALUM;

	writeln ('Bien venu sur le jeu des 21 allumettes.');


	Repeat 

		tourJoueur:=(cptTour MOD 2);

		if tourJoueur <> 0 then
			njoueur := 1
		else
			njoueur := 2;
		
		writeln ('Joueur ', njoueur, ' veuillez saisir le nombre d allumette a prendre entre 1 et 3');
		readln (nb1);

		cptTour := cptTour + 1;

		if ( (nb1 >= MIN_ALLUM) and (nb1 <= MAX_ALLUM) ) then
			Begin
			restAlum := restAlum - nb1;

			if (restAlum < LOSE) then
				Begin
				writeln ('Joueur ', njoueur, ' a perdu.');
				perdu := True;
				End

			else
				writeln (' La somme des allumettes est de ', restAlum );
			End

	else
		writeln ('Saisi incorecte veuillez saisir le nombre d allumette a prendre entre 1  et 3' );


	Until perdu = True;

	writeln (' A bientot ');
	readln

END.