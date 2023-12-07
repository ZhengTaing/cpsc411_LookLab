import SwiftUI

struct ProductScreen: View {
    // Existing variables
    let productImages = ["trendy_1", "lol2", "lol1"]
    let sizes = ["S", "M", "L", "XL"]
    
    // New state variable for selected size
    @State private var selectedSize: String?

    // Price of the product
    let price = 59.99 // Example price

    var body: some View {
        ZStack {
            Color("bg")
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading) {
                    AppBarView() // Reusing the AppBarView from your HomeScreen

                    // Product Images Carousel
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productImages, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 300)
                                    .cornerRadius(15)
                            }
                        }
                    }
                    .padding(.horizontal)

                    // Product Description
                    Text("Buckle-detail Jacket Dress")
                        .font(.custom("Avenir-Black", size: 20))
                        .padding(.horizontal)
                    
                    Text("Short jacket dress in woven fabric. Pointed lapels, wrapover front with concealed snap fasteners, shaping darts at waist, and belt with a metal buckle. Welt chest pocket, welt front pockets with flap, shoulder pads, and long sleeves with a slit at cuffs. Lined.")
                        .font(.custom("Avenir-Roman", size: 14))
                        .padding([.horizontal, .bottom])
                    
                    // Price Display
                    Text("Price: $\(price, specifier: "%.2f")")
                        .font(.custom("Avenir-Black", size: 18))
                        .padding(.horizontal)

                    // Size Selection
                    Text("Sizes")
                        .font(.custom("Avenir-Black", size: 16))
                        .padding(.horizontal)

                    
                    
                    
                    
                    HStack {
                        ForEach(sizes, id: \.self) { size in
                            Button(size) {
                                selectedSize = size
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(size == selectedSize ? Color.blue : Color.black)
                            .cornerRadius(10)
                        }
                    }
                    .padding([.horizontal, .bottom])

                    // Add to Cart Button
                    Button(action: addToCart) {
                        Text("Add to Cart")
                            .font(.custom("Avenir-Black", size: 18))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(selectedSize != nil ? Color.blue : Color.gray)
                            .cornerRadius(10)
                            .disabled(selectedSize == nil)
                    }
                    .padding([.horizontal, .bottom])
                }
            }

            BottomNavBar()
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .padding(.bottom)
    }

    // Function to handle add to cart action
    private func addToCart() {
        // Handle the add to cart action here
        print("Added to Cart: Size \(selectedSize ?? "None"), Price: $\(price)")
    }
}

struct BottomNavBar: View {
    var body: some View {
        HStack {
            BottomNavBarItem(image: Image("home")) {}
            BottomNavBarItem(image: Image("market")) {}
            BottomNavBarItem(image: Image("ar")) {}
            BottomNavBarItem(image: Image("search")) {}
            BottomNavBarItem(image: Image("profile")) {}
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
    }
}

struct ProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen()
    }
}
