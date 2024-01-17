//
//  Moretime.swift
//  XcodeProject
//
//  Created by KEITA on 05/12/2023.
//

import SwiftUI


struct StartTim: View {
    @ObservedObject var stopManager = StopManager()
    var body: some View {
        ZStack {
           
            VStack {
                MapView().frame(height: 300).edgesIgnoringSafeArea(.top)

                VStack {
                   
                    Text(String(format: "%.1f", stopManager.secondesElaps)).font(.custom("Avenir", size: 60)).padding(.top,200).padding(.bottom,100).padding(.leading,100).padding(.trailing,100)
                    
                    if stopManager.mode == .stopped {
                        Button(action: {self.stopManager.start()}) {
                            
                            TimerButton(label: "Start", buttonColor: .yellow, textColor: .black)
                                
                            
                            }
                       
                        
                    }
                    if stopManager.mode == .running {
                        Button(action: {self.stopManager.pause()}) {
                            
                            TimerButton(label: "Pause", buttonColor: .yellow, textColor: .black)
                                
                            
                            }
                       
                        
                    }
                   
                    
                    
                    
                    if stopManager.mode == .paused {
                        Button(action: {self.stopManager.start()}) {
                            
                            TimerButton(label: "Start", buttonColor: .yellow, textColor: .black)
                                
                            
                            }
                        .padding(.top,30)
                        Button(action: {self.stopManager.stop()}) {
                            
                            TimerButton(label: "Stop", buttonColor: .red, textColor: .white)
                                
                            
                            }
                      
                       
                    }
                   
                    
                
                      
                   
                }
              
            }
        }
    }
}

struct Moretime_Previews: PreviewProvider {
    static var previews: some View {
        StartTim()
    }
}

struct TimerButton: View {
    let label : String
    let buttonColor : Color
    let textColor : Color
    var body: some View {
        Text(label).foregroundColor(textColor).padding(.horizontal,90).padding(.vertical,20).background(buttonColor).cornerRadius(20)
    }
}
