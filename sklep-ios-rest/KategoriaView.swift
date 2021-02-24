//
//  KategoriaView.swift
//  sklep-ios-rest
//
//  Created by Mike Crow on 24/02/2021.
//

import SwiftUI

struct KategoriaView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Kategoria.title, ascending: true)],
        animation: .default)
    private var kategorie: FetchedResults<Kategoria>

    var body: some View {
        NavigationView{
        List {
            ForEach(kategorie) { kategoria in
                HStack {
                    NavigationLink(kategoria.value(forKey: "title") as! String, destination: ProduktView(kategoria: kategoria))
                }
            }
        }
        }
    }



}
struct KategoriaView_Previews: PreviewProvider {
    static var previews: some View {
        KategoriaView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
