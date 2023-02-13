
//
//  CoreDataManagers.swift
//  HelloCoreData
//
//  Created by Denisa on 16/01/23.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager {
    let persistentContainer : NSPersistentContainer
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    init() {
        persistentContainer = NSPersistentContainer(name: "HelloCoreDataModel")
        persistentContainer.loadPersistentStores {(description,error) in
            if let error = error {
                fatalError("Core Data Store Failed \(error.localizedDescription)")
            }
        }
    }
    
    func getAllProduk() -> [Produk] {
        let fetchRequest: NSFetchRequest<Produk> = Produk.fetchRequest()
        do{
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return[]
        }
    }

    func updateProduk(){
        do{
            try persistentContainer.viewContext.save()
        } catch{
            persistentContainer.viewContext.rollback()
        }
    }

    func deleteProduk(prod:Produk) {
        persistentContainer.viewContext.delete(prod)

        do{
            try persistentContainer.viewContext.save()
        } catch{
            persistentContainer.viewContext.rollback()
            print("Gagal untuk menyimpan data \(error)")
        }
    }
    func saveProduk() {
        do{
            try self.context.save()
        } catch {
            print("Failed to save the produk \(error)")
        }

    }
    func setInitialCoreData(){
        var dataProducts = [Produk]()
        let produk1 = Produk(context: self.context)
        produk1.id_produk = "1"
        produk1.nama = "Minyak Kutus - Kutus"
        produk1.jumlah = "3000"
        produk1.harga = "170000"
        produk1.satuan = "btl"
        let produk2 = Produk(context: self.context)
        produk2.id_produk = "2"
        produk2.nama = "Minyak Tanamu Tanami"
        produk2.jumlah = "100"
        produk2.harga = "200000"
        produk2.satuan = "btl"
        let produk3 = Produk(context: self.context)
        produk3.id_produk = "3"
        produk3.nama = "Sabun Tanamu Tanami"
        produk3.jumlah = "500"
        produk3.harga = "45000"
        produk3.satuan = "pcs"
        dataProducts.append(produk1)
        dataProducts.append(produk2)
        dataProducts.append(produk3)
        self.saveProduk()
    }
}
