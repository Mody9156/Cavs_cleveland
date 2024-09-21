//
//  home.swift
//  XcodeProject
//
//  Created by KEITA on 05/12/2023.
//

import SwiftUI

struct home: View {
    var body: some View {
        TabView(content: {
            
            Matchs(importArray:arrayOfGames).tabItem{
                Image(systemName: "sportscourt.fill")
                Text("Matchs")
            }
            StopGo(PlayersNbaCav: arrayClv,PlayersOfCleveland:ArrayRoster).tabItem{
                Image(systemName: "basketball.fill")
                Text("Effectifs")
            }
            MapView().tabItem{
                Image(systemName: "map.fill")
                Text("Carte")
            }
           
            
            
//
        })
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
