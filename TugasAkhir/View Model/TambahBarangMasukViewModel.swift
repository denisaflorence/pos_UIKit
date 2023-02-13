//
//  TambahBarangMasukViewModel.swift
//  TugasAkhir
//
//  Created by Denisa on 07/02/23.
//

import Foundation
class TambahBarangMasukViewModel{
    func checkData(idBarangMasuk:String,idProduk:String,jumlah:Int, hargaBeli:String, hargaJual:String)-> Bool{
        if idBarangMasuk != "" && idProduk != "" && jumlah != 0 && hargaBeli != "" && hargaJual != "" {
            return true }
            else{
                return false
            }
    }
}
