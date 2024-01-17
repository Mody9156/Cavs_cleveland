//
//  StopWatch.swift
//  XcodeProject
//
//  Created by KEITA on 07/12/2023.
//

import Foundation
import SwiftUI



class StopManager:ObservableObject{

    enum StopWatch{
        case running
        case paused
        case stopped
        case registre
    }
    
    @Published var registreMore : StopWatch = .registre
    
    @Published var mode : StopWatch = .stopped
    
   @Published var  secondesElaps = 0.0
    var timer = Timer()
    
    func start (){
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){  timer in
            self.secondesElaps += 0.1
            
        }
    }
    func pause (){
        timer.invalidate()
        mode = .paused
        
    }
    func stop (){
        timer.invalidate()
        secondesElaps = 0
        mode = .stopped
        
    }
  
}
