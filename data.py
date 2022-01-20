import mysql.connector as msql

bdd = None
cursor = None

def connexion():
    global bdd
    global cursor

    bdd = msql.connect(user='root', password='root', host='localhost', port="8081", database='promesse_de_dons')
    cursor = bdd.cursor()

def deconnexion():
    global bdd
    global cursor

    cursor.close()
    bdd.close()

def get_users() :
    global cursor

    connexion()
    query = "SELECT * FROM utilisateurs"
    cursor.execute(query)
    utilisateurs = []

    for enregistrement in cursor :
        utilisateur = {}
        utilisateur['id_utilisateurs'] = enregistrement[0]
        utilisateur['Nom'] = enregistrement[1]
        utilisateur['Prenom'] = enregistrement[2]
        utilisateur['Genre'] = enregistrement[3]
        utilisateur['Montant'] = enregistrement[4]
        utilisateur['Numero_carte'] = enregistrement[5]
        utilisateur['Expiration_carte'] = enregistrement[6]
        utilisateur['Newsletter'] = enregistrement[7]
        utilisateurs.append(utilisateur)
    
    print(utilisateurs)
    deconnexion()
    return utilisateurs


def set_utilisateur(Nom, Prenom, Genre, Montant, Numero_carte, Expiration_carte, Newsletter):
    global bdd
    global cursor

    connexion()

    query="INSERT INTO utilisateurs(Nom, Prenom, Genre, Montant, Numero_carte, Expiration_carte, Newsletter) VALUES ('"+Nom+"', '"+Prenom+"', '"+Genre+"', '"+Montant+"', '"+Numero_carte+"', '"+Expiration_carte+"','"+Newsletter+"')"
    cursor.execute(query)
    bdd.commit()

    deconnexion()

def somme():

    connexion()
    total=0

    query="SELECT * FROM utilisateurs"

    cursor.execute(query)

    for enregistrement in cursor:
        total +=enregistrement[4]

    deconnexion()

    return (total)