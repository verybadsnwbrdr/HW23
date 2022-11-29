//
//  EditScreenTableCell.swift
//  HW23
//
//  Created by Anton on 28.11.2022.
//

import SwiftUI

struct EditScreenTableCell: View {
    let model: TableModel
    
    var body: some View {
        HStack {
            Image(systemName: model.image)
                .foregroundColor(.red)
            Text(model.name)
        }
    }
}

struct EditScreenTableCell_Previews: PreviewProvider {
    static var previews: some View {
        EditScreenTableCell(model: Model.tableModels[0])
    }
}
