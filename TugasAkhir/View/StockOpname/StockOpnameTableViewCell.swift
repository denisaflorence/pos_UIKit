//
//  StockOpnameTableViewCell.swift
//  TugasAkhir
//
//  Created by Denisa on 07/02/23.
//

import UIKit

class StockOpnameTableViewCell: UITableViewCell {

    @IBOutlet weak var tanggal: UILabel!
    @IBOutlet weak var stokAkhir: UILabel!
    @IBOutlet weak var keterangan: UILabel!
    @IBOutlet weak var namaProduk: UILabel!
    @IBOutlet weak var idStockOpname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(idStockOpname:String, namaProduk:String, keterangan:String, stokAkhir:String, tanggal:String){
        self.idStockOpname.text = idStockOpname
        self.namaProduk.text = namaProduk
        self.keterangan.text = keterangan
        self.stokAkhir.text = stokAkhir
        self.tanggal.text = tanggal
    }

}
