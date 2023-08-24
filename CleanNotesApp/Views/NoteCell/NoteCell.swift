//
//  NoteCell.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.
//

import UIKit

class NoteCell: UITableViewCell {
    
    static let identifier = "NoteCell"
    
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
//    func setup() {
//        bodyLabel.text = "Note text"
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "d MMM y, HH:mm"
//
//        dateLabel.text = formatter.string(from: Date())
//        titleLabel.text = "Note Title"
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(data: NoteModel) {
        titleLabel.text = data.title
        bodyLabel.text = data.body
        dateLabel.text = ""
    }
    
}
