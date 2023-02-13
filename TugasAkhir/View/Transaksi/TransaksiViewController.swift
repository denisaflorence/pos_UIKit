//
//  TransaksiViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 31/01/23.
//

import UIKit

class TransaksiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var transaksiTableView: UITableView!
    let nomorNota = ["1","2"]
    let idPembeli = ["1","1"]
    let jumlah = ["30","5"]
    let hargaTotal = ["Rp. 3.300.000","Rp. 350.000"]
    let tanggal = ["2022-12-20","2023-01-20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transaksiTableView.delegate = self
        transaksiTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return idPembeli.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = transaksiTableView.dequeueReusableCell(withIdentifier: "transaksiViewCell") as! TransaksiTableViewCell
        cell.setData(nomorNota: nomorNota[indexPath.row], idPembeli: idPembeli[indexPath.row], jumlah: jumlah[indexPath.row], hargaTotal: hargaTotal[indexPath.row], tanggal: tanggal[indexPath.row])
        return cell
    }


}
