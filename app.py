from flask import Flask, render_template, request
import data

app = Flask(__name__)

@app.route('/')
def index() :
    return render_template('index.html')

@app.route('/formulaire')
def formulaire():
    return render_template('formulaire.html')

@app.route('/add', methods=['GET'])
def add():
    Nom = request.values.get('Nom')
    Prenom = request.values.get('Prenom')
    Montant = request.values.get('Montant')
    Genre = request.values.get('Genre')
    Numero_carte = request.values.get('Numero_carte')
    Expiration_carte = request.values.get('Expiration_carte')
    Newsletter = request.values.get('Newsletter')
    
    data.set_utilisateur(Nom, Prenom, Genre, Montant, Numero_carte, Expiration_carte, Newsletter)

    datas = data.get_users()
    
    total = data.somme() 

    return render_template('add.html', utilisateurs = datas, total=total)

if __name__== "__main__" :
    app.run(debug=True, port=5001)