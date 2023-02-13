//
//  LaporanPiutangViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 31/01/23.
//

import UIKit

class LaporanPiutangViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var laporanPiutangTableView: UITableView!
    let nama = ["Win Meta Win","Bagas Windtalker"]
    let sisaBayar = ["Rp. 20.000.000","Rp. 300.000.000"]
    let tanggal = ["2023-01-30","2023-03-20"]
    let status = ["Belum Lunas", "Belum Lunas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        laporanPiutangTableView.delegate = self
        laporanPiutangTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nama.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = laporanPiutangTableView.dequeueReusableCell(withIdentifier: "laporanPiutangViewCell") as! LaporanPiutangTableViewCell
        cell.setData(nama: nama[indexPath.row], sisaBayar: sisaBayar[indexPath.row], tanggalPelunasan: tanggal[indexPath.row], status: status[indexPath.row])
        return cell
    }
    

}
