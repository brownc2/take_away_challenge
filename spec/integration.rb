require "take_away_menu"
require "text_user"

RSpec.describe "integration" do
  context "Will display the menu list" do 
    it "will display a menu list"do
    menu = Takeaway_Menu.new
    text = Text_Alert.new
    menu.takeaway_menu{"Ice cream" => 4}
    expect(menu.take_away_show).to eq 
    end
  end
end