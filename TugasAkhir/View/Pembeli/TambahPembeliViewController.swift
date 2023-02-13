//
//  TambahPembeliViewController.swift
//  TugasAkhir
//
//  Created by Denisa on 06/02/23.
//

import UIKit

class TambahPembeliViewController: UIViewController {
    
    @IBOutlet weak var idPembeli: UITextField!
    
    @IBOutlet weak var level: UIPickerView!
    @IBOutlet weak var nama: UITextField!
    var viewModel = TambahPembeliViewModel()
    var selectedLevel = "String"
    var levelSource:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.level.delegate = self
        self.level.dataSource = self
        levelSource = ["Reseller","Depo","Distributor"]
        idPembeli.text = String(viewModel.dataPembeli.count+1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonSimpanDidTap(_ sender: Any) {
        guard let id = idPembeli.text, let nama = nama.text else {return}
        if viewModel.checkData(idPembeli: id, nama: nama, level: selectedLevel){
            viewModel.dataPembeli.append(PembeliModel(id: id, nama: nama, level: selectedLevel))
            let controllers = self.navigationController?.viewControllers
            for vc in controllers! {
                if let pembelivc = vc as? PembeliViewController {
                    pembelivc.viewModel.dataPembeli = self.viewModel.dataPembeli
                    _ = self.navigationController?.popToViewController(vc as! PembeliViewController, animated: true)
                }
            }
        }
        else{
            let alert = UIAlertController(title: "Perhatian", message: "Data tidak lengkap", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }
    }
}
    

 


extension TambahPembeliViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return levelSource.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return levelSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedLevel =  levelSource[row]
    }
}
