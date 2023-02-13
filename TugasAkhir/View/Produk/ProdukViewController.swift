//
//  ProdukViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 31/01/23.
//

import UIKit

class ProdukViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tambahButton: UIButton!
    @IBOutlet weak var produkTableview: UITableView!
    var viewModel = ProdukViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setInitialData()
        produkTableview.delegate = self
        produkTableview.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        produkTableview.reloadData()
    }
    //
    @IBAction func tambahProdukDidTap(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "TambahProdukViewController")as? TambahProdukViewController else { return }
        vc.viewModel.dataProduct = viewModel.dataProduct
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = produkTableview.dequeueReusableCell(withIdentifier: "produkViewCell") as! ProdukTableViewCell
        cell.setData(labelNama: viewModel.dataProduct[indexPath.row].nama, jumlah: viewModel.dataProduct[indexPath.row].jumlah, harga: viewModel.dataProduct[indexPath.row].harga, status: viewModel.dataProduct[indexPath.row].status, satuan: viewModel.dataProduct[indexPath.row].satuan)
        return cell
    }
    
}
