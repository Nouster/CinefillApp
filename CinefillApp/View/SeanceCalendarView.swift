//
//  SeanceCalendarView.swift
//  CinefillApp
//
//  Created by apprenant59 on 29/06/2022.
//

import SwiftUI

struct SeanceCalendarView: View {
    @StateObject var movieClass: movieClass
    var movie : Movies
    @State private var date = Date()
    var body: some View {
        NavigationView{
        ZStack{
            
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text(movie.movieTitle)
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                Image(movie.posterBig)
                    .resizable()
                    .frame(width: 300, height: 200)
                
                
                
                VStack(){
                    HStack{
                        Text("Date:")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    DatePicker("Quelle date", selection: $date, in: Date()...,  displayedComponents: .date)
                        .labelsHidden()
                        .frame(height: 76)
                        .background(.gray)
                        .foregroundColor(.white)
                    //                        .padding()
                    
                    
                    
                }//.padding(.bottom,-40)
                Spacer()
                HStack{
                    Text("Salles").foregroundColor(.white)
                    Spacer()
                }
                HStack{
                    
                    
                    
                    ScrollView(.horizontal){
                        HStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 75)
                                .cornerRadius(10)
                                    .foregroundColor(.white)
                                
                                Text("Gaumont Wilson").bold()
                                    .foregroundColor(Color("cinefillorange"))
                                    .frame(width: 150, height: 75)
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 75)
                                .cornerRadius(10)
                                    .foregroundColor(.white)
                                Text("UGC Ciné Cité Internationale")
                                    .bold()
                                    .foregroundColor(Color("cinefillorange"))
                                    .frame(width: 150, height: 75)
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 75)
                                .cornerRadius(10)
                                    .foregroundColor(.white)
                                Text("CGR Blagnac").bold()
                                    .foregroundColor(Color("cinefillorange"))
                            }
                        }
                    }
                }.navigationBarHidden(true)
                    
                Spacer()
                
                HStack{
                    
                    Text("Sélectionner votre séance")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                }
                
                NavigationLink {
                    
//                    Booking(seanceClass: SeanceClass())
                } label: {
                    
                    VStack{
                        HStack{
                            VStack{
                                Rectangle().cornerRadius(5)
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white))
                                    .overlay(Text("11,90€").foregroundColor(.white).font(.body.bold()))
                                    .padding(-10)
                                Rectangle().cornerRadius(400).frame(width: 80, height: 18, alignment: .center)
                                    .shadow(color: .white, radius: 0, x: 0, y: 1)
                                    .shadow(color: .white, radius: 0, x: 1, y: 0)
                                    .shadow(color: .white, radius: 0, x: -1, y: 0)
                                    .overlay(Text("10:00").foregroundColor(.white).font(.footnote).bold())
                                
                            }.foregroundColor(Color("mediumPrice"))
                            VStack{
                                Rectangle().cornerRadius(5)
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white))
                                    .overlay(Text("3.50€").foregroundColor(.white).bold())
                                    .padding(-10)
                                Rectangle().cornerRadius(400).frame(width: 80, height: 18, alignment: .center)
                                    .shadow(color: .white, radius: 0, x: 0, y: 1)
                                    .shadow(color: .white, radius: 0, x: 1, y: 0)
                                    .shadow(color: .white, radius: 0, x: -1, y: 0).overlay(Text("13:00").foregroundColor(.white).font(.footnote).bold())
                            }.foregroundColor(Color("lowPrice"))
                            VStack{
                                Rectangle().cornerRadius(5).frame(width: 80, height: 80, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white)).overlay(Text("14,50€").foregroundColor(.white).font(.body.bold()))
                                    .padding(-10)
                                Rectangle().cornerRadius(400).frame(width: 80, height: 18, alignment: .center)
                                    .shadow(color: .white, radius: 0, x: 0, y: 1)
                                    .shadow(color: .white, radius: 0, x: 1, y: 0)
                                    .shadow(color: .white, radius: 0, x: -1, y: 0).overlay(Text("15:45").foregroundColor(.white).font(.footnote).bold())
                            }.foregroundColor(Color("highPrice"))
                            
                        }.padding()
                        
                        HStack{
                            VStack{
                                Rectangle().cornerRadius(5)
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white))
                                    .overlay(Text("15,90€").foregroundColor(.white).font(.body.bold()))
                                    .padding(-10)
                                Rectangle().cornerRadius(400).frame(width: 80, height: 18, alignment: .center)
                                    .shadow(color: .white, radius: 0, x: 0, y: 1)
                                    .shadow(color: .white, radius: 0, x: 1, y: 0)
                                    .shadow(color: .white, radius: 0, x: -1, y: 0).overlay(Text("19:30").foregroundColor(.white).font(.footnote).bold())
                            }.foregroundColor(Color("highPrice"))
                            VStack{
                                Rectangle().cornerRadius(5)
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white))
                                    .overlay(Text("12,50€").foregroundColor(.white).font(.body.bold()))
                                    .padding(-10)
                                Rectangle().cornerRadius(400).frame(width: 80, height: 18, alignment: .center)
                                    .shadow(color: .white, radius: 0, x: 0, y: 1)
                                    .shadow(color: .white, radius: 0, x: 1, y: 0)
                                    .shadow(color: .white, radius: 0, x: -1, y: 0).overlay(Text("22:00").foregroundColor(.white).font(.footnote).bold())
                            }.foregroundColor(Color("mediumPrice"))
                            
                        }.padding()
                    }
                }
                
                
                Spacer()
                
                
            }.padding()
        }.navigationTitle("Séances du film")
        }
    }
}

struct SeanceCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        SeanceCalendarView(movieClass: movieClass(), movie: Movies(movieTitle: "La traversée", movieActor: ["Alban Ivanov" ,"Lucien Jean-Baptiste","Audrey Pirault","Moncef Farfar","Thilla Thiam","Lucie Charles-Alfred","Mamari Diarra","Enzo Lemartinet"], posterBig: "movieFourBig", posterMed: "movieFourMed", posterSmall: "movieFourSmall", movieSynopsis: "Éducateurs de quartier, Alex et Stéphanie emmènent cinq ados déscolarisés pour faire une traversée de la Méditerranée et les réinsérer par les valeurs de la mer. Mais arrivés au port, ils tombent sur Riton, leur skippeur, un ancien flic de la BAC, qui a tout quitté pour fuir la banlieue. Ces jeunes, c'est son pire cauchemar. Contraints, ils se retrouvent tous embarqués sur le même bateau pour une virée en mer de quinze jours. Une chose est sûre, après cette Traversée, ils n'auront plus tout à fait la même vision du monde...Éducateurs de quartier, Alex et Stéphanie emmènent cinq ados déscolarisés pour faire une traversée de la Méditerranée et les réinsérer par les valeurs de la mer. Mais arrivés au port, ils tombent sur Riton, leur skippeur, un ancien flic de la BAC, qui a tout quitté pour fuir la banlieue. Ces jeunes, c'est son pire cauchemar. Contraints, ils se retrouvent tous embarqués sur le même bateau pour une virée en mer de quinze jours. Une chose est sûre, après cette Traversée, ils n'auront plus tout à fait la même vision du monde...", movieDateOfRelease: "29/06/2022", movieCategory: [.Comédie], movieLong: "1h45m", movieCountry: ["France"], movieDirector: ["Varante Soudjian"], movieProduction: ["Varante Soudjian, Thomas Pone"], movieClassification: .TousPublics))
    }
}
