//
//  other.swift
//  XcodeProject
//
//  Created by KEITA on 05/12/2023.
//

import SwiftUI

struct StopGo: View {
    
    @State  var PlayersNbaCav : [PlayersClv] = []
    @State  var PlayersOfCleveland : [ClevelandTeam] = []
    @State  private var showMore  : Bool = false
    
    var body: some View {
        
      
            NavigationView{
                
                    VStack {
                        
                           
                        
                        Toggle(isOn: $showMore){
                            Text(!showMore ? "Afficher le 5 de départ":"Afficher l'effctifs")
                                .foregroundColor(Color.orange)
                            
                        }.padding(.leading,50).padding().padding(.trailing,50)
                        if showMore{
                            StartAllTeam(PlayersOfCleveland: $PlayersOfCleveland)//fin de la liste
                        }
                        if !showMore  {
                            AllEffectifs(PlayersNbaCav: $PlayersNbaCav)
                            
                        }
                        
                    }.navigationBarTitle("Cleveland Cavaliers")
                    
            }
        
    }
}

struct other_Previews: PreviewProvider {
    static var previews: some View {
        StopGo(PlayersNbaCav: arrayClv,PlayersOfCleveland:ArrayRoster)
        
    }
    
}

struct StartAllTeam: View {
    @Binding var PlayersOfCleveland : [ClevelandTeam]
    @State private var shoMoreInfos : Bool = false
    var body: some View {
        
            List(PlayersOfCleveland){ players in
                
                NavigationLink(destination:
                                VStack {
                    Image(players.picture)
                    HStack {
                        VStack {
                            if !shoMoreInfos {
                                Text("Saison")
                                    .font(.title)
                                List{
                                    Text("Matchs : \(players.gamesSaison)")
                                    Text("PPG : \(String(format: "%.1f",players.PPG))")
                                    Text("RPG : \(String(format: "%.1f",players.RPG))")
                                    Text("APG : \(String(format: "%.1f",players.APG))")
                                }
                            }
                        }
                        VStack {
                            if !shoMoreInfos {
                                Text("Carrière") .font(.title)
                                List{
                                    Text("Matchs : \(players.gamesSaison)")
                                    Text("PPG : \(String(format: "%.1f",players.PPG))")
                                    Text("RPG : \(String(format: "%.1f",players.RPG))")
                                    Text("APG : \(String(format: "%.1f",players.APG))")
                                }
                            }
                        }
                    }
                    Button(action:{
                        shoMoreInfos.toggle()
                    },label:{
                        Text(shoMoreInfos ? "Moins":"Plus").foregroundColor(.white)
                        
                    }).frame(width: 100, height: 50).background(.blue).cornerRadius(10).padding(10)
                    
                    if shoMoreInfos {
                        List{
                            Text(players.story)
                                .multilineTextAlignment(.leading)
                                
                        }
                    }
                     
                }
                               
                               , label:{ HStack {
                    Image(players.picture).frame(width: 150,height: 150).padding(10)
                    
                    VStack {
                        Text(players.name).fontWeight(.bold)
                        Text(players.post).foregroundColor(.orange)
                        Text("\(players.nuber)").font(.largeTitle)
                    }
                   
                    
                } })
                
                
            }
     
    }
}

struct AllEffectifs: View {
    
   @Binding var PlayersNbaCav : [PlayersClv]
    @State private  var shoMoreEffetifs : Bool = false
    var body: some View {
            List(PlayersNbaCav){ players in
             
                NavigationLink(destination:
                                VStack {
                    
                    Image(players.picture)
                    HStack {
                        
                            VStack {
                                if !shoMoreEffetifs {
                                    Text("Saison")
                                        .font(.title)
                                    List{
                                        Text("Matchs : \(players.gamesSaison)")
                                        Text("PPG : \(String(format: "%.1f",players.PPG))")
                                        Text("RPG : \(String(format: "%.1f",players.RPG))")
                                        Text("APG : \(String(format: "%.1f",players.APG))")
                                    }
                                }
                            }
                            VStack {
                                if !shoMoreEffetifs {
                                    Text("Carrière") .font(.title)
                                    List{
                                        
                                        Text("Matchs : \(players.gamesSaison)")
                                        Text("PPG : \(String(format: "%.1f",players.PPG))")
                                        Text("RPG : \(String(format: "%.1f",players.RPG))")
                                        Text("APG : \(String(format: "%.1f",players.APG))")
                                        
                                    }
                                }
                            }
                        
                            }
                       
                        
                 
                    Button(action:{
                        shoMoreEffetifs.toggle()
                    },label:{
                        Text(shoMoreEffetifs ? "Moins":"Plus").foregroundColor(.white).padding(10)
                        
                    }).frame(width: 100, height: 50).background(.blue).cornerRadius(10).padding(10)
                    
                    if shoMoreEffetifs {
                        List{
                            Text(players.story)
                                .multilineTextAlignment(.leading)
                                
                        }
                    }
                },
                               
                               label:{ HStack {
                    Image(players.picture).frame(width: 150,height: 150).padding(10)
                    VStack {
                        Text(players.name).fontWeight(.bold)
                        Text(players.post).foregroundColor(.orange)
                        Text("\(players.nuber)").font(.largeTitle)
                    }
                   
                } })
                
                
            }
      
    }
}
