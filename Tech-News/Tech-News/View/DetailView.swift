//
//  DetailView.swift
//  Tech-News
//
//  Created by Ramin on 7/6/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
    }
}


