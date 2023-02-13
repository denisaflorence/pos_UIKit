//
//  BarangMasukTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 06/02/23.
//

import UIKit

class BarangMasukTableViewCell: UITableViewCell {

    @IBOutlet weak var hargaJual: UILabel!
    @IBOutlet weak var hargaBeli: UILabel!
    @IBOutlet weak var jumlah: UILabel!
    @IBOutlet weak var namaProduk: UILabel!
    @IBOutlet weak var idBarangMasuk: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(idBarangMasuk:String, namaProduk:String, jumlah:String, hargaBeli:String, hargaJual:String){
        self.idBarangMasuk.text = idBarangMasuk
        self.namaProduk.text = namaProduk
        self.jumlah.text = jumlah
        self.hargaBeli.text = hargaBeli
        self.hargaJual.text = hargaJual
    }

}
