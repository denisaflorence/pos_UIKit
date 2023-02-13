//
//  TambahProdukViewModel.swift
//  TugasAkhir
//
//  Created by Denisa on 04/02/23.
//

import Foundation

class TambahProdukViewModel{
    
    var dataProduct = [ProductModel]()
    
    func checkData(idProduk:String,namaProduk:String,jumlah:Int,harga:String,satuan:String)-> Bool{
        if idProduk != "" && namaProduk != "" && jumlah != 0 && harga != "" && satuan != "" {
            return true }
            else{
                return false
            }
    }
}
