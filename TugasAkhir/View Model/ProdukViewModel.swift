//
//  ProdukModel.swift
//  TugasAkhir
//
//  Created by Denisa on 04/02/23.
//

import Foundation
import UIKit
class ProdukViewModel{
    
    var dataProduct = [ProductModel]()
    
    func setInitialData(){
//        let produk1 = ProductModel(id: "1", nama: "Minyak Kutus Kutus", jumlah: "2000", harga: "Rp. 170.000", status: "Tersedia", satuan: "pcs")
//        let produk2 = ProductModel(id: "2", nama: "Minyak Tanamu Tanami", jumlah: "200", harga: "Rp. 200.000", status: "Tersedia", satuan: "pcs")
//        let produk3 = ProductModel(id: "3", nama: "Sabun Kalila Kalila", jumlah: "10", harga: "Rp. 45.000", status: "Menipis", satuan: "pcs")
//        dataProduct.append(produk1)
//        dataProduct.append(produk2)
//        dataProduct.append(produk3)
        CoreDataManager().setInitialCoreData()
    }
    
}

struct ProductModel{
    var id:String
    var nama:String
    var jumlah:String
    var harga:String
    var status:String
    var satuan:String
}
