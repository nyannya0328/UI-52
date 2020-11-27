//
//  ContentView.swift
//  UI-52
//
//  Created by にゃんにゃん丸 on 2020/11/27.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    
    
    @State var show = false
    var body: some View {
        Button(action: {
            withAnimation(.spring()){show.toggle()}
            
        }){
            Text("Push")
                
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            
        }
        .padding(.horizontal,10)
        .padding(.vertical,10)
        .background(Color.red.opacity(1))
        .cornerRadius(20)
        .fullScreenCover(isPresented: $show){
            
            Safari()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Safari : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
        
        let controller = SFSafariViewController(url: URL(string: "https://www.apple.com/jp/")!)
        
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}
