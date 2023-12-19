#  Prank Shop
### Using NavigationStack to show multiple of the same item.

## Annotated Hi-Fi
![A hi-fi prototype of the Prank Shop app. There is a tab view with 4 tabs in this story. The first tab shows the Lincoln Navigator car. The second tab shows Prince Henry the Navigator, with 3 Navigation Links that lead to pictures of places he has travelled: Madeira, The Azores, and Cabo Blanco. The third tab shows Navi, a character from Zelda. The fourth tab shows Apple's MapKit centered on Detroit.](PrankShopHiFi.png)

## User Stories
* As a user, I want to see a Navigation Title that says "Prank Shop" on ContentView.

> [!TIP]
> Adding a [NavigationStack with a navigation title.](https://www.hackingwithswift.com/books/ios-swiftui/adding-a-navigation-bar)

* As a user, when I tap on an item in the Prank Shop, I want to Navigation Link to the ItemDetailView, so I can see details about the specific item. I also want the Navigation Title of ItemDetailView to say the name of the item I'm looking at, so I know where I am.

> [!TIP]
> Using a [NavigationLink using a value.](https://developer.apple.com/documentation/swiftui/view/navigationdestination(for:destination:))
> The `NavigationLink(value:label:)` initializer is useful because it allows us to pass one `Item` to the NavigationStack, which we can display with the `navigationdestination(for:destination:)` view modifier _matching_ the type passed to our NavigationLink's value parameter.

* As a user, when I tap on a related item in the ItemDetailView, I want to Navigation Link to _another_ ItemDetailView, so I can see details about a related item.

* **Stretch Goal:** As a user, I want to be able to jump alll the way back to the Prank Shop screen at any time.

> [!TIP]
> You'll need to use a [NavigationPath.](https://swiftwithmajid.com/2022/10/05/mastering-navigationstack-in-swiftui-navigationpath/)

* **Super Stretch Goal:** As a user, I want to be able to add items to some sort of cart, and view my cart at any time by pushing some sort of cart view onto the NavigationStack.
