//
//  LaporanPiutangTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 07/02/23.
//

import UIKit

class LaporanPiutangTableViewCell: UITableViewCell {

    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var tanggalPelunasan: UILabel!
    @IBOutlet weak var sisaBayar: UILabel!
    @IBOutlet weak var nama: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(nama:String, sisaBayar:String, tanggalPelunasan:String, status:String){
        self.nama.text = nama
        self.sisaBayar.text = sisaBayar
        self.tanggalPelunasan.text = tanggalPelunasan
        self.status.text = status
    }

}
