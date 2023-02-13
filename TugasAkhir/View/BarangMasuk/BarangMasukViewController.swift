//
//  BarangMasukViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 02/02/23.
//

import UIKit

class BarangMasukViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var barangMasukTableView: UITableView!
    let idBarangMasuk = ["1","2","3"]
    let namaproduk = ["Minyak Kutus - Kutus","Sabun Kalila Kalila","Minyak Tanamu Tanami"]
    let jumlah = ["10000","200","1000"]
    let hargaBeli = ["Rp. 160.000","Rp. 20.000","Rp. 185.000"]
    let hargaJual = ["Rp. 170.000", "Rp. 45.000","Rp. 200.000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barangMasukTableView.delegate = self
        barangMasukTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tambahBarangMasukDidTap(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "TambahBarangMasukViewController")as? TambahBarangMasukViewController else  {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namaproduk.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = barangMasukTableView.dequeueReusableCell(withIdentifier: "barangMasukViewCell") as! BarangMasukTableViewCell
        cell.setData(idBarangMasuk: idBarangMasuk[indexPath.row], namaProduk: namaproduk[indexPath.row], jumlah: jumlah[indexPath.row], hargaBeli: hargaBeli[indexPath.row], hargaJual: hargaJual[indexPath.row])
        return cell
    }
    

}
