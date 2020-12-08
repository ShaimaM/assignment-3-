deck <- read.csv('https://github.com/gumdropsteve/datasets/raw/master/deck.csv')

X <- deck[(deck$value >= 7) | (deck$value == 1), ]
X
#----------------------------------------
shuffle <- function(df) 
  {
  
  random <- sample(32, size = 32)
  df[random, ]
  }

shuffle(X)
#--------------------------------------------
deal_cards <- function(new_deck)
  {
  cards <- new_deck[sample(nrow(new_deck) , 13,  replace= FALSE ),]
  print('cards')
  print(cards)
  dealer <- data.frame(rbind(cards[1 , ] , cards[2 , ], cards[3 , ]))
  print('Dealer ')
  print(dealer)
  player1 <- data.frame(rbind(cards[4 , ] , cards[5 , ], cards[6 , ]))
  print('player 1 ')
  print(player1)
  player2 <- data.frame(rbind(cards[7, ] , cards[8 , ], cards[9 , ]))
  print('player 2 ')
  print(player2)
  player3 <- data.frame(rbind(cards[10 , ] , cards[11 , ], cards[12 , ]))
  print('player 3 ')
  print(player3)
  middle_card <- data.frame(rbind(cards[13 , ] ))
  print('middle card ')
  print(middle_card)
  }
deal_cards(X)

#-------------------------


deal_cards2 <- function(new_deck2)
  {
  for(i in 1:X)
    {
    for( j in 1:list)
      {
      random <- sample(32, size = 32)
      X[random[i], ]
      }
    } 
  }

