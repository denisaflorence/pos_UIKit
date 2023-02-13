//
//  PembeliModel.swift
//  TugasAkhir
//
//  Created by Denisa on 04/02/23.
//

import Foundation
class PembeliViewModel{
    var dataPembeli = [PembeliModel]()
    func setInitialData(){
//        let pembeli1 = PembeliModel(id: "1", nama: "Win Meta Win", level: "Reseller")
//        let pembeli2 = PembeliModel(id: "2", nama: "Krishna Maharaja", level: "Distributor")
//        let pembeli3 = PembeliModel(id: "3", nama: "Sophie Lilia Lancelot", level: "Depo")
//        dataPembeli.append(pembeli1)
//        dataPembeli.append(pembeli2)
//        dataPembeli.append(pembeli3)
        PembeliCoreData().setInitialCoreData()
    }
}

struct PembeliModel{
    var id:String
    var nama:String
    var level:String
}
