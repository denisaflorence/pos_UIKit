//
//  PembeliTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 06/02/23.
//

import UIKit

class PembeliTableViewCell: UITableViewCell {

    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var idPembeli: UILabel!
    @IBOutlet weak var nama: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setdata( nama:String, idPembeli:String,level:String){
        self.nama.text = nama
        self.idPembeli.text = idPembeli
        self.level.text = level
    }

}
