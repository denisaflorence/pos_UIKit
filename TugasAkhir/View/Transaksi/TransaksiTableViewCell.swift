//
//  TransaksiTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 06/02/23.
//

import UIKit

class TransaksiTableViewCell: UITableViewCell {

    @IBOutlet weak var tanggal: UILabel!
    @IBOutlet weak var hargaTotal: UILabel!
    @IBOutlet weak var jumlah: UILabel!
    @IBOutlet weak var idPembeli: UILabel!
    @IBOutlet weak var nomorNota: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(nomorNota:String, idPembeli:String, jumlah: String, hargaTotal:String, tanggal:String){
        self.nomorNota.text = nomorNota
        self.idPembeli.text = idPembeli
        self.jumlah.text = jumlah
        self.hargaTotal.text = hargaTotal
        self.tanggal.text = tanggal
    }

}
