
import SwiftUI


struct Cinemas: Identifiable {
    var id = UUID()
    var cinemaName : String
    var cinemaLocation : String
    
    
    
}

var cinemasArray = [
    
    Cinemas( cinemaName:   "Gaumont Wilson"       , cinemaLocation:  "Gaumont Wilson, 3 Pl. du Président Thomas Wilson, 31000 Toulouse"      ),
    Cinemas( cinemaName:      "Cinémathèque de Toulouse"    , cinemaLocation:   "Cinémathèque de Toulouse, 69 Rue du Taur, 31000 Toulouse"     ),
    Cinemas( cinemaName:     " American Cosmograph"    , cinemaLocation:  " American Cosmograph, 24 Rue Montardy, 31000 Toulouse "    ),
    Cinemas( cinemaName:   "ABC"  , cinemaLocation:     "ABC, 13 Rue Saint-Bernard, 31000 Toulouse"   ),
    
    Cinemas( cinemaName:     "Pathé Bellecour"     , cinemaLocation:    "Pathé Bellecour, 79 Rue de la République, 69002 Lyon"    ),
    Cinemas( cinemaName:   "UGC Ciné Cité Internationale"       , cinemaLocation:    "UGC Ciné Cité Internationale, Cité Internationale, 80 Quai Charles de Gaulle, 69006 Lyon "   ),
    Cinemas( cinemaName:      " UGC Astoria"   , cinemaLocation: "UGC Astoria, 31 Cr Vitton, 69006 Lyon "      ),
    Cinemas( cinemaName:  " Le Cinéma - Lyon"       , cinemaLocation:     "Le Cinéma - Lyon, 18 Imp. Saint-Polycarpe, 69001 Lyon"   )
    
    
]
