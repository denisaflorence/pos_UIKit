//
//  TambahPembeliViewModel.swift
//  TugasAkhir
//
//  Created by Denisa on 06/02/23.
//

import Foundation
class TambahPembeliViewModel{
    
    var dataPembeli = [PembeliModel]()
    func checkData(idPembeli:String,nama:String,level:String)-> Bool{
        if idPembeli != "" && nama != "" && level != ""  {
            return true }
            else{
                return false
            }
    }
}
