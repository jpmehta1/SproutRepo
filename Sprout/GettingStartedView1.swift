import SwiftUI

struct GettingStartedView1: View {
    @State private var textOne: String = ""
    @State private var textTwo: String = ""
    @State private var textThree: String = ""
    @State private var confirmText: String = "" // Assuming you want a separate state for confirm password
    @State private var navigate: Bool = false

    var body: some View {
        NavigationView(){
            ScrollView { // Added ScrollView for better handling of keyboard appearance and smaller screens
                NavigationLink(destination: HomePageChild2(), isActive: $navigate) {
                    EmptyView()
                }
                
                VStack(spacing: 20) {
                    Image("StartSymbol2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Text("Getting Started")
                        .font(.system(size: 24))
                        .bold()
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(hex: "0CB89A"))
                    
                    Text("Create an account to continue!")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    // Fields VStack
                    VStack(spacing: 16) { // Adjusted spacing to be consistent, removed manual padding adjustments
                        TextField("Full Name", text: $textOne)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        TextField("Email Address", text: $textTwo)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        SecureField("Password", text: $textThree)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        SecureField("Confirm Password", text: $confirmText) // Assuming this should be a SecureField
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        Button(action: {
                            // Action for the button
                           navigate = true
                        }) {
                            Text("Start")
                                .fontWeight(.semibold)
                                .frame(minWidth: 0, maxWidth: .infinity) // Makes the button width adaptive to its container
                                .padding()
                                .foregroundColor(.black) // Text color
                                .background(Color(hex: " 13FABF")) // Background color of the button
                                .cornerRadius(40) // Adjust this value to change the corner radius
                        }
                        .padding()
                        
                        Text("or sign up with")
                        
                        Image("SignInWith2")
                            .resizable(capInsets: EdgeInsets(top: -5.0, leading: -5.0, bottom: -6.0, trailing: -6.0))
                            .aspectRatio(contentMode: .fit)
                        
                    }
                }
                .padding() // This adds padding around the entire VStack content, so it's not too close to the edges.
                .offset(y:-30)
            }
            .navigationBarBackButtonHidden(true) // Hide the default back button
        }
    }
}

struct GettingStartedView1_Previews: PreviewProvider {
    static var previews: some View {
        GettingStartedView1()
          
    }
}
