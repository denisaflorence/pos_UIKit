//
//  PembeliCoreData.swift
//  TugasAkhir
//
//  Created by Denisa on 10/02/23.
//

import Foundation
import CoreData
import UIKit

class PembeliCoreData {
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
    
    func getAllPembeli() -> [Pembeli] {
        let fetchRequest: NSFetchRequest<Pembeli> = Pembeli.fetchRequest()
        do{
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return[]
        }
    }

    func updatePembeli(){
        do{
            try persistentContainer.viewContext.save()
        } catch{
            persistentContainer.viewContext.rollback()
        }
    }

    func deletePembeli(pemb:Pembeli) {
        persistentContainer.viewContext.delete(pemb)

        do{
            try persistentContainer.viewContext.save()
        } catch{
            persistentContainer.viewContext.rollback()
            print("Gagal untuk menyimpan data \(error)")
        }
    }
    func savePembeli() {
        do{
            try self.context.save()
        } catch {
            print("Failed to save the produk \(error)")
        }

    }
    func setInitialCoreData(){
        var dataPembeli = [Pembeli]()
        let pembeli1 = Pembeli(context: self.context)
        pembeli1.id = "1"
        pembeli1.nama = "Win Meta Win"
        pembeli1.level = "Reseller"
        let pembeli2 = Pembeli(context: self.context)
        pembeli2.id = "2"
        pembeli2.nama = "Lilya Anderson"
        pembeli2.level = "Depo"
        let pembeli3 = Pembeli(context: self.context)
        pembeli3.id = "3"
        pembeli3.nama = "Arthur James Yong"
        pembeli3.level = "Distributor"
        dataPembeli.append(pembeli1)
        dataPembeli.append(pembeli2)
        dataPembeli.append(pembeli3)
        self.savePembeli()
    }
}
