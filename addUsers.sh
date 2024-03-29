#! /bin/bash

#Script "création d'un compte utilisateur"

#Erreur si aucun argument de rentré
if [ $# -eq 0 ]

then echo "Vous n'avez rentré aucun utilisateur à créer, veuillez recommencer"
exit 1
fi

#Confirmation de la demande de création d'utilisateurs
while true
	do
		echo "Vous avez demandé la création des utilisateurs suivants : $@ "
		read -p "Confirmez-vous cette demande [O/N] ? " response
		
		case $response in
		
			O)
				echo "OK, nous pouvons continuer"
				sleep 1s
				break
			;;
			
			N)
				echo "Annulation, relancez le script pour une nouvelle demande de création"
				exit 1
			;;
			
			*)
				echo "Veuillez reformuler votre choix"
			;;
		esac
	done


#Vérification de l'existence de l'utilisateur
#Si l'utilisateur existe déjà, l'indiquer et ne rien faire
	for utilisateur in "$@"
	do
		if sudo cat /etc/passwd | grep "$utilisateur" > /dev/null
		then
				echo -e "\e[91mUtilisateur "$utilisateur" dejà créé\e[0m"
							
#Si l'utilisateur n'existe pas, le créer et vérifier que cela a fonctionné
		else
			sudo useradd "$utilisateur"
   
#Si oui, message indiquant que l'utilisateur a bien été créé			
			if 
				sudo cat /etc/passwd | grep "$utilisateur" > /dev/null
    			
			then
					echo -e "\e[93mUtilisateur "$utilisateur" créé\e[0m"
     
#Si non, message indiquant une erreur lors de la création	  

			else
					echo -e "\e[91mErreur - Utilisasteur"$utilisateur" non crée\e[0m"
			fi	
		fi
	done	
exit 0
