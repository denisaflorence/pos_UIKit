//
//  TambahBarangMasukViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 07/02/23.
//

import UIKit

class TambahBarangMasukViewController: UIViewController {

    @IBOutlet weak var hargaJual: UITextField!
    @IBOutlet weak var hargaBeli: UITextField!
    @IBOutlet weak var jumlah: UITextField!
    @IBOutlet weak var idProduk: UITextField!
    @IBOutlet weak var idBarangMasuk: UITextField!
    var viewModel = TambahBarangMasukViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSimpanDidTap(_ sender: Any) {
        if viewModel.checkData(idBarangMasuk: idBarangMasuk.text!, idProduk: idProduk.text!, jumlah: Int(jumlah.text!)!, hargaBeli: hargaBeli.text!, hargaJual: hargaJual.text!){
            print("Data Lengkap")
        }else {
            let alert = UIAlertController(title: "Perhatian", message: "Data tidak lengkap", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }
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
