//
//  HomeViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 02/02/23.
//

import UIKit
import CoreData

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    // don't forget to hook this up from the storyboard
    @IBOutlet weak var tableView: UITableView!
        
    let nama = ["Win Meta Win", "Adam Levino", "Tina Provis", "Phoebe Alexander", "Nadine Lee"]
    let sisaBayar = ["Rp. 20.000.000","Rp. 35.000.000","Rp. 250.000","Rp. 30.000.000","Rp. 29.000.000"]
    let tanggal = ["2022-12-31","2023-01-12","2023-01-15","2023-01-20","2023-01-22"]
    let status = ["Belum Lunas","Belum Lunas","Belum Lunas","Belum Lunas","Belum Lunas"]
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            tableView.delegate = self
            tableView.dataSource = self
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return nama.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customViewCell") as! HomeTableViewCell
  
        cell.setData(labelTitle: nama[indexPath.row], sisaBayar: sisaBayar[indexPath.row], tanggal: tanggal[indexPath.row], status: status[indexPath.row])
        
        return cell
       
    }
  
    

    }

    
