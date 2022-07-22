//
//  PlayListCell.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 21.07.2022.
//

import UIKit

class PlayListCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personSurnameLabel: UILabel!
    
    // MARK: Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func config(with model: Person) {
        personNameLabel.text = model.contactName
        personSurnameLabel.text = model.contactSurname
    }
}

//MARK: Extension

extension PlayListCell {
    func setupUI() {
        selectionStyle = .gray
    }
}
