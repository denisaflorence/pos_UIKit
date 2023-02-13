//
//  StockOpnameViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 31/01/23.
//

import UIKit

class StockOpnameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var stockOpnameTableView: UITableView!
    let idStock = ["1","2"]
    let namaProduk = ["Minyak Kutus - Kutus", "Minyak Tanamu Tanami"]
    let keterangan = ["Salah hitung","Barang hilang"]
    let stokAkhir = ["20","300"]
    let tanggal = ["2022-11-22","2022-12-21"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stockOpnameTableView.delegate = self
        stockOpnameTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return idStock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = stockOpnameTableView.dequeueReusableCell(withIdentifier: "stockOpnameViewCell") as! StockOpnameTableViewCell
        cell.setData(idStockOpname: idStock[indexPath.row], namaProduk: namaProduk[indexPath.row], keterangan: keterangan[indexPath.row], stokAkhir: stokAkhir[indexPath.row], tanggal: tanggal[indexPath.row])
        return cell
    }

}
