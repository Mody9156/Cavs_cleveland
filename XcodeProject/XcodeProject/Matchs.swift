//
//  Matchs.swift
//  XcodeProject
//
//  Created by KEITA on 11/12/2023.
//

import SwiftUI

struct Matchs: View {
    
    var importArray : [ArrayOfGames] = []
  
    var body: some View {
        
        VStack {
            Text("Matchs").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.orange).multilineTextAlignment(.center)
            List(importArray) {  games in
                
                
                HStack(alignment: .center) {
                    Spacer()
                    VStack(alignment: .leading) {
                       
                        Image(games.firstIcon).resizable().aspectRatio(contentMode: .fit).frame(height:40)
                        Text(games.name)
                        
                    }
                    Spacer()
                   
                    Text(games.date).foregroundColor(.orange).padding(.trailing,30).padding(.leading,5)
                    
                    VStack (alignment: .trailing){
                        Image(games.secondIcon).resizable().aspectRatio(contentMode: .fit).frame(height:40)
                        Text(games.nameVs)
                        
                       
                    }
                    Spacer()
                }
                
              
               
              
            }
            
        }
    }
}

struct Matchs_Previews: PreviewProvider {
    static var previews: some View {
        Matchs(importArray:arrayOfGames)
    }
}
