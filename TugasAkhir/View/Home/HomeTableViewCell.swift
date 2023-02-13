//
//  HomeTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 02/02/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var tanggal: UILabel!
    @IBOutlet weak var sisaBayar: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    func setData(labelTitle:String, sisaBayar:String, tanggal:String, status:String) {
        self.labelTitle.text = labelTitle
        self.sisaBayar.text = sisaBayar
        self.tanggal.text = tanggal
        self.status.text = status
    }

}
