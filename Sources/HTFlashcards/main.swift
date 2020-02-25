

import Kitura

let router = Router()


struct HTcarte {                                //creation de la structure d'une carte
    var matiere : String
    var question: String
    var reponse: String
}

struct HTpile {                                 //creation d'une pile qui empile les cartes
    var cartes : [HTcarte]
}

func importcsv(csv:String) -> HTpile   {
    var result : HTcarte (matiere: row[0], question:row[1], reponse:row[2]);
    let rows = csv.components(separatedBy: CharacterSet.newlines);
    for row in rows {
        let columns = row.components(separatedBy : ";")
        result.append (columns)
    }
    
    return result       // la fonction importcsv va importer les données afin de récupérer chaque carte, séparer les cartes par un retour à la ligne et en séparant chaque valeur des cartes (matiere, question, reponse) par un ";"
}



    Kitura.addHTTPServer(onPort: 8080, with : router)
    Kitura.run()

// lancer l'appli sur le serveur serveur via Kitura

