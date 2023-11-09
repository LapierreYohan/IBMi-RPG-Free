**free
// %CSTD===========================================================*
// * Application. : COM        Gestion Commerciale                 *
// * Composant. . : FRM0535                       Type: SQLRPGLE   *
// *===============================================================*
// * Sous-système :                                                *
// * Fonction . . :                                                *
// * Sous-fonction:                                                *
// *%S=============================================================*
// * Description des fonctionnalités:                              *
// *                                                               *
// *                                                               *
// *                                                               *
// *%E=============================================================*
// * AUTEUR:    PGMRYL     09/11/2023 14:44  V 9.00.N              *
// * MODIFS: ** PGMRYL     09/11/2023 14:44  V 9.00.N FM 23/  159  *
// *           Formation 2023 - Stagiaire                          *
// %ECSTD==========================================================*

 //*********************************************************//
 //          Définition des fichiers                        //
 //*********************************************************//
Dcl-f effectifl disk keyed usage(*update) prefix(eff_);

//**********************************************************//
//              Définition des variables                    //
//**********************************************************//



//**********************************************************//
//                  Début du programme                      //
//**********************************************************//

SETLL *loval effectifl;
READ effectifl;

dow not %eof;
  eff_ANCIENNETE = eff_ANCIENNETE + 1;
  UPDATE EFFECTIFF;
  READ effectifl;
ENDDO;

return;
*inlr = *on; 