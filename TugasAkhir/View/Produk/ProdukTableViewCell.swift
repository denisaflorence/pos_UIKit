//
//  ProdukTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 02/02/23.
//

import UIKit

class ProdukTableViewCell: UITableViewCell {

    @IBOutlet weak var satuan: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var harga: UILabel!
    @IBOutlet weak var jumlah: UILabel!
    @IBOutlet weak var labelNama: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(labelNama:String, jumlah:String, harga:String, status:String, satuan:String){
        self.labelNama.text = labelNama
        self.jumlah.text = jumlah
        self.harga.text = harga
        self.status.text = status
        self.satuan.text = satuan
    }

}
