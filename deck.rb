require 'squib'
require 'squib/sample_helpers'

data = Squib.csv file: 'data/heroes.csv'

Squib::Deck.new(width: 80, height: 80, cards: data['name'].size) do
  background color: :black
  rect height: 40, width: 40, x: 20, y: 20, fill_color: :white
  save_png
  save_pdf trim: 37.5
end
