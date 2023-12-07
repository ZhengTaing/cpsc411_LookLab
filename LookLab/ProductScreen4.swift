import SwiftUI

struct ProductScreen4: View {
    let productImages = ["trendy_4", "lol9", "lol10"]
    let sizes = ["S", "M", "L", "XL"]

    @State private var selectedSize: String?

    let price = 64.99 // Example price
    let description = "Shirred velvet creates a dramatic long sleeve dress that features a daring front slit detail. The Isla Velvet Front Slit Dress is a blend of elegance and contemporary style, perfect for evening gatherings and special events."

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

                    // Product Title
                    Text("Isla Velvet Front Slit Dress")
                        .font(.custom("Avenir-Black", size: 20))
                        .padding(.horizontal)

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

                    // Product Description
                    Text(description)
                        .font(.custom("Avenir-Roman", size: 14))
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

            BottomNavBar4()
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .padding(.bottom)
    }

    private func addToCart() {
        print("Added to Cart: Size \(selectedSize ?? "None"), Price: $\(price)")
    }
}

struct BottomNavBar4: View {
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

struct ProductScreen4_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen4()
    }
}
