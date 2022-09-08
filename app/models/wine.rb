class Wine < ApplicationRecord
  enum type: { still: 0, sparkling: 1 }
  enum color: { red: 0, white: 1, rose: 2, other: 3 }
end
