//
//  TambahProdukViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 04/02/23.
//

import UIKit

class TambahProdukViewController: UIViewController {
 
    

    @IBOutlet weak var satuan: UIPickerView!
    @IBOutlet weak var harga: UITextField!
    @IBOutlet weak var jumlah: UITextField!
    @IBOutlet weak var namaProduk: UITextField!
    @IBOutlet weak var idProduk: UITextField!
    var viewModel = TambahProdukViewModel()
    var selectedSatuan = "String"
    var satuanSource:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.satuan.delegate = self
        self.satuan.dataSource = self
        satuanSource = ["btl", "pcs"]
        idProduk.text = String(viewModel.dataProduct.count+1)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func buttonSimpanDidTap(_ sender: Any) {
        guard let id = idProduk.text, let nama = namaProduk.text, let jumlah = jumlah.text, let harga = harga.text else { return }
        if  viewModel.checkData(idProduk: id, namaProduk: nama, jumlah: Int(jumlah) ?? 0, harga: harga, satuan: selectedSatuan){
            viewModel.dataProduct.append(ProductModel(id: id, nama: nama, jumlah: jumlah, harga: harga, status: "Sedikit", satuan: selectedSatuan))
            let controllers = self.navigationController?.viewControllers
                          for vc in controllers! {
                            if let produkvc = vc as? ProdukViewController {
                                produkvc.viewModel.dataProduct = self.viewModel.dataProduct
                              _ = self.navigationController?.popToViewController(vc as! ProdukViewController, animated: true)
                            }
                         }
//            print("Data Lengkap")
        }else{
            let alert = UIAlertController(title: "Perhatian", message: "Data tidak lengkap", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }
    }
}

extension TambahProdukViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return satuanSource.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return satuanSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedSatuan =  satuanSource[row]
    }
}
