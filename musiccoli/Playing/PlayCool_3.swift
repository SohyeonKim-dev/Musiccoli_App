import SwiftUI

struct PlayCool_3: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.20)
                .frame(width: 400, height: 1000)
            
            Image("cat2")
                .resizable()
                .frame(width: 300, height: 300)
            
            NavigationLink (destination: egg1(),
                            label: {
                
                VStack {
                    Text("π κ³ μμ΄μ λΉλ°μ΄ κΆκΈνλ₯?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color.black.opacity(0.8))
                        .offset(x: 0, y: 290)//.overlay(.pink)
                    
                    Text("LPλ₯Ό λλ¬λ΄! :)")
                    
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
            NavigationLink (destination: PlayWarm_3(), label:{
                Text("π μμ βοΈ")
                    .bold()
                    .fontWeight(.heavy)
                    .foregroundColor(.indigo)
            }
            )
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PlayCool_3_Previews: PreviewProvider {
    static var previews: some View {
        PlayCool_3()
    }
}


