{{Take away chellenge}} Multi-Class Planned Design Recipe

1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.
As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.


2. Design the Class System

Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌───────────────────────┐
│                       │
│  Class Takeaway_Menu  │
│                       │
│ Takeaway_menu         │
│                       │
│ Takeaway_select       │
│                       │
│ Takeaway_price        │
│                       │
└────────────┬──────────┘
             │
             │
┌────────────▼──────────┐
│                       │
│ Class Text_Aleart       │
│                       │
│    text_user          │
│                       │
│    => order confirmed │
└───────────────────────┘



class Takeaway_Menu
  def initialize
    
  end

  def takeaway_menu(menu)
  #Will display a list of food items with cost per item


  def takeaway_select(item)
  #Will allow the user to select the items they want to buy
  end

  def takeaway_price
  #Will display the total price for the takeaway
  end

end

class Text_Alert

def text_user
#Will text the user with an estimated time of arrival 
end
  
end
3. Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE
``` ruby
take_away = Takeaway_Menu.new
text = Text_Alert.new
take_away.takeaway_menu{ "ice cream" => 3 }
take_away.select{ "ice cream" => 3 }
take_away.price("£3")
text.text_user(take_away)
```
#User will receive a text to confirm order



4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

