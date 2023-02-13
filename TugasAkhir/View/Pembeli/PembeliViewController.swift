//
//  PembeliViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 31/01/23.
//

import UIKit

class PembeliViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var pembeliTableView: UITableView!
    @IBOutlet weak var buttonTambah: UIButton!
    var viewModel = PembeliViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setInitialData()
        pembeliTableView.delegate = self
        pembeliTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        pembeliTableView.reloadData()
    }
    
    @IBAction func buttontambahDidTap(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "TambahPembeliViewController")as? TambahPembeliViewController else { return }
        vc.viewModel.dataPembeli = viewModel.dataPembeli
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataPembeli.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pembeliTableView.dequeueReusableCell(withIdentifier: "pembeliViewCell") as! PembeliTableViewCell
        cell.setdata(nama: viewModel.dataPembeli[indexPath.row].nama, idPembeli: viewModel.dataPembeli[indexPath.row].id, level: viewModel.dataPembeli[indexPath.row].level)
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
