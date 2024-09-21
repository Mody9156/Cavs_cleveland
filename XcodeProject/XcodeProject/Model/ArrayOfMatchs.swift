//
//  ArrayOfMatchs.swift
//  XcodeProject
//
//  Created by KEITA on 11/12/2023.
//

import Foundation
import SwiftUI

struct ArrayOfGames : Identifiable{
    let id = UUID()
    var firstIcon : String
    var name : String
    var date : String
    var time : String
    var nameVs : String
    var secondIcon : String
    var scorUn : String
    var scorDeux : String
}


let arrayOfGames = [
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 11 / 12",time: "01:00",nameVs: "MAGIC",secondIcon: "olandoMagic",scorUn: "13 - 9",scorDeux: "15 - 7"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 13 / 12",time: "01:30", nameVs: "CELTICS", secondIcon: "bostonCeltic",scorUn: "13 - 9 ",scorDeux: "16 - 5"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 15 / 12",time: "01:30", nameVs: "CELTICS", secondIcon: "bostonCeltic",scorUn: "13 - 9 ",scorDeux: "16 - 5"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 17 / 12",time: "01:30", nameVs: "HAWKS", secondIcon: "AtlantaHawks",scorUn: "13 - 9 ",scorDeux: "9 - 12"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 19 / 12",time: "01:00", nameVs: "ROCKETS", secondIcon: "HoustonRocket",scorUn: "13 - 9 ",scorDeux: "10 - 9"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 21 / 12",time: "01:00", nameVs: "Jazz", secondIcon: "uthaJazz",scorUn: "13 - 9 ",scorDeux: "7 - 15"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 22 / 12",time: "01:30", nameVs: "PELICANS", secondIcon: "pelicans",scorUn: "13 - 9 ",scorDeux: "12 - 11"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 24 / 12",time: "02:00", nameVs: "BULLS", secondIcon: "bulls",scorUn: "13 - 9 ",scorDeux: "9 - 14"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 28 / 12",time: "02:30", nameVs: "MAVERICKS", secondIcon: "mavericks",scorUn: "13 - 9 ",scorDeux: "13 - 8"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 30 / 12",time: "01:30", nameVs: "BUCKS", secondIcon: "bucks",scorUn: "13 - 9 ",scorDeux: "15 - 7"),
    ArrayOfGames(firstIcon: "clevelandCavs", name: "CAVALIERS", date: " 02 / 01",time: "01:30", nameVs: "RAPTORS", secondIcon: "raptors",scorUn: "13 - 9 ",scorDeux: "9 - 13")
    
]
