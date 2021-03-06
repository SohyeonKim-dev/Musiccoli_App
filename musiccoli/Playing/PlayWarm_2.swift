import SwiftUI

struct PlayWarm_2: View {
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.20)
                .frame(width: 400, height: 1000)
            
            Image("cat2")
                .resizable()
                .frame(width: 300, height: 300)
            
            NavigationLink (destination: egg1(),
                            label: {
                
                VStack {
                    Text("๐ ๊ณ ์์ด์ ๋น๋ฐ์ด ๊ถ๊ธํ๋ฅ?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color.black.opacity(0.8))
                        .offset(x: 0, y: 290)//.overlay(.pink)
                    
                    Text("LP๋ฅผ ๋๋ฌ๋ด! :)")
                    
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundColor(Color.black.opacity(0.8))
                        .offset(x: 0, y: 300)//.overlay(.pink)
                    
                }
            })
        }
        .navigationBarHidden(false)
        .navigationTitle("")
        .toolbar {
            NavigationLink (destination: PlayCool_2(), label:{
                Text("๐งถ ๋ฐ๋ ๐")
                    .bold()
                    .fontWeight(.heavy)
                    .foregroundColor(.brown)
            }
            )
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PlayWarm_2_Previews: PreviewProvider {
    static var previews: some View {
        PlayWarm_2()
    }
}

