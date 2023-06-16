Live code from RaukR
================
Jenny Bryan
2023-06-16

Use `rmarkdown::render()` on this or, in RStudio, click on the “Compile
Report” spiral-notebook icon.

## Where to find this document

Shortlink humans can type:

- [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code)

Horrible link that reveals how this is done:

- <https://www.dropbox.com/s/32ekchfbnswzd9r/jenny-live-code.R?raw=1>

Using the `raw=1` query trick for rendering a DropBox-hosted file in the
browser:

- <https://help.dropbox.com/share/force-download> learned from [Michael
  Levy](https://twitter.com/ucdlevy).

How this works:

- I code live in an R script locally. I save often.
- This file lives in a directory synced to DropBox.
- You open the DropBox file at
  [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code) and refresh
  as needed.
- Should allow you to see, copy, paste everything I’ve typed and save
  the entire transcript at the end. This file is highly perishable, so
  save your own copy if you want it.
- Every now and then the refresh won’t work. Just re-open from from the
  rstd.io link:
  [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code)

``` r

library(purrr)
library(repurrrsive)

got_chars
#> [[1]]
#> [[1]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1022"
#> 
#> [[1]]$id
#> [1] 1022
#> 
#> [[1]]$name
#> [1] "Theon Greyjoy"
#> 
#> [[1]]$gender
#> [1] "Male"
#> 
#> [[1]]$culture
#> [1] "Ironborn"
#> 
#> [[1]]$born
#> [1] "In 278 AC or 279 AC, at Pyke"
#> 
#> [[1]]$died
#> [1] ""
#> 
#> [[1]]$alive
#> [1] TRUE
#> 
#> [[1]]$titles
#> [1] "Prince of Winterfell"                                
#> [2] "Lord of the Iron Islands (by law of the green lands)"
#> 
#> [[1]]$aliases
#> [1] "Prince of Fools" "Theon Turncloak" "Reek"            "Theon Kinslayer"
#> 
#> [[1]]$father
#> [1] ""
#> 
#> [[1]]$mother
#> [1] ""
#> 
#> [[1]]$spouse
#> [1] ""
#> 
#> [[1]]$allegiances
#> [1] "House Greyjoy of Pyke"
#> 
#> [[1]]$books
#> [1] "A Game of Thrones" "A Storm of Swords" "A Feast for Crows"
#> 
#> [[1]]$povBooks
#> [1] "A Clash of Kings"     "A Dance with Dragons"
#> 
#> [[1]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[1]]$playedBy
#> [1] "Alfie Allen"
#> 
#> 
#> [[2]]
#> [[2]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1052"
#> 
#> [[2]]$id
#> [1] 1052
#> 
#> [[2]]$name
#> [1] "Tyrion Lannister"
#> 
#> [[2]]$gender
#> [1] "Male"
#> 
#> [[2]]$culture
#> [1] ""
#> 
#> [[2]]$born
#> [1] "In 273 AC, at Casterly Rock"
#> 
#> [[2]]$died
#> [1] ""
#> 
#> [[2]]$alive
#> [1] TRUE
#> 
#> [[2]]$titles
#> [1] "Acting Hand of the King (former)" "Master of Coin (former)"         
#> 
#> [[2]]$aliases
#>  [1] "The Imp"            "Halfman"            "The boyman"        
#>  [4] "Giant of Lannister" "Lord Tywin's Doom"  "Lord Tywin's Bane" 
#>  [7] "Yollo"              "Hugor Hill"         "No-Nose"           
#> [10] "Freak"              "Dwarf"             
#> 
#> [[2]]$father
#> [1] ""
#> 
#> [[2]]$mother
#> [1] ""
#> 
#> [[2]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/2044"
#> 
#> [[2]]$allegiances
#> [1] "House Lannister of Casterly Rock"
#> 
#> [[2]]$books
#> [1] "A Feast for Crows"         "The World of Ice and Fire"
#> 
#> [[2]]$povBooks
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[2]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[2]]$playedBy
#> [1] "Peter Dinklage"
#> 
#> 
#> [[3]]
#> [[3]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1074"
#> 
#> [[3]]$id
#> [1] 1074
#> 
#> [[3]]$name
#> [1] "Victarion Greyjoy"
#> 
#> [[3]]$gender
#> [1] "Male"
#> 
#> [[3]]$culture
#> [1] "Ironborn"
#> 
#> [[3]]$born
#> [1] "In 268 AC or before, at Pyke"
#> 
#> [[3]]$died
#> [1] ""
#> 
#> [[3]]$alive
#> [1] TRUE
#> 
#> [[3]]$titles
#> [1] "Lord Captain of the Iron Fleet" "Master of the Iron Victory"    
#> 
#> [[3]]$aliases
#> [1] "The Iron Captain"
#> 
#> [[3]]$father
#> [1] ""
#> 
#> [[3]]$mother
#> [1] ""
#> 
#> [[3]]$spouse
#> [1] ""
#> 
#> [[3]]$allegiances
#> [1] "House Greyjoy of Pyke"
#> 
#> [[3]]$books
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> 
#> [[3]]$povBooks
#> [1] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[3]]$tvSeries
#> [1] ""
#> 
#> [[3]]$playedBy
#> [1] ""
#> 
#> 
#> [[4]]
#> [[4]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1109"
#> 
#> [[4]]$id
#> [1] 1109
#> 
#> [[4]]$name
#> [1] "Will"
#> 
#> [[4]]$gender
#> [1] "Male"
#> 
#> [[4]]$culture
#> [1] ""
#> 
#> [[4]]$born
#> [1] ""
#> 
#> [[4]]$died
#> [1] "In 297 AC, at Haunted Forest"
#> 
#> [[4]]$alive
#> [1] FALSE
#> 
#> [[4]]$titles
#> [1] ""
#> 
#> [[4]]$aliases
#> [1] ""
#> 
#> [[4]]$father
#> [1] ""
#> 
#> [[4]]$mother
#> [1] ""
#> 
#> [[4]]$spouse
#> [1] ""
#> 
#> [[4]]$allegiances
#> list()
#> 
#> [[4]]$books
#> [1] "A Clash of Kings"
#> 
#> [[4]]$povBooks
#> [1] "A Game of Thrones"
#> 
#> [[4]]$tvSeries
#> [1] ""
#> 
#> [[4]]$playedBy
#> [1] "Bronson Webb"
#> 
#> 
#> [[5]]
#> [[5]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1166"
#> 
#> [[5]]$id
#> [1] 1166
#> 
#> [[5]]$name
#> [1] "Areo Hotah"
#> 
#> [[5]]$gender
#> [1] "Male"
#> 
#> [[5]]$culture
#> [1] "Norvoshi"
#> 
#> [[5]]$born
#> [1] "In 257 AC or before, at Norvos"
#> 
#> [[5]]$died
#> [1] ""
#> 
#> [[5]]$alive
#> [1] TRUE
#> 
#> [[5]]$titles
#> [1] "Captain of the Guard at Sunspear"
#> 
#> [[5]]$aliases
#> [1] ""
#> 
#> [[5]]$father
#> [1] ""
#> 
#> [[5]]$mother
#> [1] ""
#> 
#> [[5]]$spouse
#> [1] ""
#> 
#> [[5]]$allegiances
#> [1] "House Nymeros Martell of Sunspear"
#> 
#> [[5]]$books
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> 
#> [[5]]$povBooks
#> [1] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[5]]$tvSeries
#> [1] "Season 5" "Season 6"
#> 
#> [[5]]$playedBy
#> [1] "DeObia Oparei"
#> 
#> 
#> [[6]]
#> [[6]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1267"
#> 
#> [[6]]$id
#> [1] 1267
#> 
#> [[6]]$name
#> [1] "Chett"
#> 
#> [[6]]$gender
#> [1] "Male"
#> 
#> [[6]]$culture
#> [1] ""
#> 
#> [[6]]$born
#> [1] "At Hag's Mire"
#> 
#> [[6]]$died
#> [1] "In 299 AC, at Fist of the First Men"
#> 
#> [[6]]$alive
#> [1] FALSE
#> 
#> [[6]]$titles
#> [1] ""
#> 
#> [[6]]$aliases
#> [1] ""
#> 
#> [[6]]$father
#> [1] ""
#> 
#> [[6]]$mother
#> [1] ""
#> 
#> [[6]]$spouse
#> [1] ""
#> 
#> [[6]]$allegiances
#> list()
#> 
#> [[6]]$books
#> [1] "A Game of Thrones" "A Clash of Kings" 
#> 
#> [[6]]$povBooks
#> [1] "A Storm of Swords"
#> 
#> [[6]]$tvSeries
#> [1] ""
#> 
#> [[6]]$playedBy
#> [1] ""
#> 
#> 
#> [[7]]
#> [[7]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1295"
#> 
#> [[7]]$id
#> [1] 1295
#> 
#> [[7]]$name
#> [1] "Cressen"
#> 
#> [[7]]$gender
#> [1] "Male"
#> 
#> [[7]]$culture
#> [1] ""
#> 
#> [[7]]$born
#> [1] "In 219 AC or 220 AC"
#> 
#> [[7]]$died
#> [1] "In 299 AC, at Dragonstone"
#> 
#> [[7]]$alive
#> [1] FALSE
#> 
#> [[7]]$titles
#> [1] "Maester"
#> 
#> [[7]]$aliases
#> [1] ""
#> 
#> [[7]]$father
#> [1] ""
#> 
#> [[7]]$mother
#> [1] ""
#> 
#> [[7]]$spouse
#> [1] ""
#> 
#> [[7]]$allegiances
#> list()
#> 
#> [[7]]$books
#> [1] "A Storm of Swords" "A Feast for Crows"
#> 
#> [[7]]$povBooks
#> [1] "A Clash of Kings"
#> 
#> [[7]]$tvSeries
#> [1] "Season 2"
#> 
#> [[7]]$playedBy
#> [1] "Oliver Ford"
#> 
#> 
#> [[8]]
#> [[8]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/130"
#> 
#> [[8]]$id
#> [1] 130
#> 
#> [[8]]$name
#> [1] "Arianne Martell"
#> 
#> [[8]]$gender
#> [1] "Female"
#> 
#> [[8]]$culture
#> [1] "Dornish"
#> 
#> [[8]]$born
#> [1] "In 276 AC, at Sunspear"
#> 
#> [[8]]$died
#> [1] ""
#> 
#> [[8]]$alive
#> [1] TRUE
#> 
#> [[8]]$titles
#> [1] "Princess of Dorne"
#> 
#> [[8]]$aliases
#> [1] ""
#> 
#> [[8]]$father
#> [1] ""
#> 
#> [[8]]$mother
#> [1] ""
#> 
#> [[8]]$spouse
#> [1] ""
#> 
#> [[8]]$allegiances
#> [1] "House Nymeros Martell of Sunspear"
#> 
#> [[8]]$books
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[8]]$povBooks
#> [1] "A Feast for Crows"
#> 
#> [[8]]$tvSeries
#> [1] ""
#> 
#> [[8]]$playedBy
#> [1] ""
#> 
#> 
#> [[9]]
#> [[9]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1303"
#> 
#> [[9]]$id
#> [1] 1303
#> 
#> [[9]]$name
#> [1] "Daenerys Targaryen"
#> 
#> [[9]]$gender
#> [1] "Female"
#> 
#> [[9]]$culture
#> [1] "Valyrian"
#> 
#> [[9]]$born
#> [1] "In 284 AC, at Dragonstone"
#> 
#> [[9]]$died
#> [1] ""
#> 
#> [[9]]$alive
#> [1] TRUE
#> 
#> [[9]]$titles
#> [1] "Queen of the Andals and the Rhoynar and the First Men, Lord of the Seven Kingdoms"
#> [2] "Khaleesi of the Great Grass Sea"                                                  
#> [3] "Breaker of Shackles/Chains"                                                       
#> [4] "Queen of Meereen"                                                                 
#> [5] "Princess of Dragonstone"                                                          
#> 
#> [[9]]$aliases
#>  [1] "Dany"                    "Daenerys Stormborn"     
#>  [3] "The Unburnt"             "Mother of Dragons"      
#>  [5] "Mother"                  "Mhysa"                  
#>  [7] "The Silver Queen"        "Silver Lady"            
#>  [9] "Dragonmother"            "The Dragon Queen"       
#> [11] "The Mad King's daughter"
#> 
#> [[9]]$father
#> [1] ""
#> 
#> [[9]]$mother
#> [1] ""
#> 
#> [[9]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/1346"
#> 
#> [[9]]$allegiances
#> [1] "House Targaryen of King's Landing"
#> 
#> [[9]]$books
#> [1] "A Feast for Crows"
#> 
#> [[9]]$povBooks
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[9]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[9]]$playedBy
#> [1] "Emilia Clarke"
#> 
#> 
#> [[10]]
#> [[10]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/1319"
#> 
#> [[10]]$id
#> [1] 1319
#> 
#> [[10]]$name
#> [1] "Davos Seaworth"
#> 
#> [[10]]$gender
#> [1] "Male"
#> 
#> [[10]]$culture
#> [1] "Westeros"
#> 
#> [[10]]$born
#> [1] "In 260 AC or before, at King's Landing"
#> 
#> [[10]]$died
#> [1] ""
#> 
#> [[10]]$alive
#> [1] TRUE
#> 
#> [[10]]$titles
#> [1] "Ser"                       "Lord of the Rainwood"     
#> [3] "Admiral of the Narrow Sea" "Hand of the King"         
#> 
#> [[10]]$aliases
#> [1] "Onion Knight"    "Davos Shorthand" "Ser Onions"      "Onion Lord"     
#> [5] "Smuggler"       
#> 
#> [[10]]$father
#> [1] ""
#> 
#> [[10]]$mother
#> [1] ""
#> 
#> [[10]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/1676"
#> 
#> [[10]]$allegiances
#> [1] "House Baratheon of Dragonstone" "House Seaworth of Cape Wrath"  
#> 
#> [[10]]$books
#> [1] "A Feast for Crows"
#> 
#> [[10]]$povBooks
#> [1] "A Clash of Kings"     "A Storm of Swords"    "A Dance with Dragons"
#> 
#> [[10]]$tvSeries
#> [1] "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[10]]$playedBy
#> [1] "Liam Cunningham"
#> 
#> 
#> [[11]]
#> [[11]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/148"
#> 
#> [[11]]$id
#> [1] 148
#> 
#> [[11]]$name
#> [1] "Arya Stark"
#> 
#> [[11]]$gender
#> [1] "Female"
#> 
#> [[11]]$culture
#> [1] "Northmen"
#> 
#> [[11]]$born
#> [1] "In 289 AC, at Winterfell"
#> 
#> [[11]]$died
#> [1] ""
#> 
#> [[11]]$alive
#> [1] TRUE
#> 
#> [[11]]$titles
#> [1] "Princess"
#> 
#> [[11]]$aliases
#>  [1] "Arya Horseface"       "Arya Underfoot"       "Arry"                
#>  [4] "Lumpyface"            "Lumpyhead"            "Stickboy"            
#>  [7] "Weasel"               "Nymeria"              "Squan"               
#> [10] "Saltb"                "Cat of the Canaly"    "Bets"                
#> [13] "The Blind Girh"       "The Ugly Little Girl" "Mercedenl"           
#> [16] "Mercye"              
#> 
#> [[11]]$father
#> [1] ""
#> 
#> [[11]]$mother
#> [1] ""
#> 
#> [[11]]$spouse
#> [1] ""
#> 
#> [[11]]$allegiances
#> [1] "House Stark of Winterfell"
#> 
#> [[11]]$books
#> list()
#> 
#> [[11]]$povBooks
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[11]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[11]]$playedBy
#> [1] "Maisie Williams"
#> 
#> 
#> [[12]]
#> [[12]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/149"
#> 
#> [[12]]$id
#> [1] 149
#> 
#> [[12]]$name
#> [1] "Arys Oakheart"
#> 
#> [[12]]$gender
#> [1] "Male"
#> 
#> [[12]]$culture
#> [1] "Reach"
#> 
#> [[12]]$born
#> [1] "At Old Oak"
#> 
#> [[12]]$died
#> [1] "In 300 AC, at the Greenblood"
#> 
#> [[12]]$alive
#> [1] FALSE
#> 
#> [[12]]$titles
#> [1] "Ser"
#> 
#> [[12]]$aliases
#> [1] ""
#> 
#> [[12]]$father
#> [1] ""
#> 
#> [[12]]$mother
#> [1] ""
#> 
#> [[12]]$spouse
#> [1] ""
#> 
#> [[12]]$allegiances
#> [1] "House Oakheart of Old Oak"
#> 
#> [[12]]$books
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[12]]$povBooks
#> [1] "A Feast for Crows"
#> 
#> [[12]]$tvSeries
#> [1] ""
#> 
#> [[12]]$playedBy
#> [1] ""
#> 
#> 
#> [[13]]
#> [[13]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/150"
#> 
#> [[13]]$id
#> [1] 150
#> 
#> [[13]]$name
#> [1] "Asha Greyjoy"
#> 
#> [[13]]$gender
#> [1] "Female"
#> 
#> [[13]]$culture
#> [1] "Ironborn"
#> 
#> [[13]]$born
#> [1] "In 275 AC or 276 AC, at Pyke"
#> 
#> [[13]]$died
#> [1] ""
#> 
#> [[13]]$alive
#> [1] TRUE
#> 
#> [[13]]$titles
#> [1] "Princess"                    "Captain of the Black Wind"  
#> [3] "Conqueror of Deepwood Motte"
#> 
#> [[13]]$aliases
#> [1] "Esgred"                "The Kraken's Daughter"
#> 
#> [[13]]$father
#> [1] ""
#> 
#> [[13]]$mother
#> [1] ""
#> 
#> [[13]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/1372"
#> 
#> [[13]]$allegiances
#> [1] "House Greyjoy of Pyke" "House Ironmaker"      
#> 
#> [[13]]$books
#> [1] "A Game of Thrones" "A Clash of Kings" 
#> 
#> [[13]]$povBooks
#> [1] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[13]]$tvSeries
#> [1] "Season 2" "Season 3" "Season 4"
#> 
#> [[13]]$playedBy
#> [1] "Gemma Whelan"
#> 
#> 
#> [[14]]
#> [[14]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/168"
#> 
#> [[14]]$id
#> [1] 168
#> 
#> [[14]]$name
#> [1] "Barristan Selmy"
#> 
#> [[14]]$gender
#> [1] "Male"
#> 
#> [[14]]$culture
#> [1] "Westeros"
#> 
#> [[14]]$born
#> [1] "In 237 AC"
#> 
#> [[14]]$died
#> [1] ""
#> 
#> [[14]]$alive
#> [1] TRUE
#> 
#> [[14]]$titles
#> [1] "Ser"               "Hand of the Queen"
#> 
#> [[14]]$aliases
#> [1] "Barristan the Bold" "Arstan Whitebeard"  "Ser Grandfather"   
#> [4] "Barristan the Old"  "Old Ser"           
#> 
#> [[14]]$father
#> [1] ""
#> 
#> [[14]]$mother
#> [1] ""
#> 
#> [[14]]$spouse
#> [1] ""
#> 
#> [[14]]$allegiances
#> [1] "House Selmy of Harvest Hall"       "House Targaryen of King's Landing"
#> 
#> [[14]]$books
#> [1] "A Game of Thrones"         "A Clash of Kings"         
#> [3] "A Storm of Swords"         "A Feast for Crows"        
#> [5] "The World of Ice and Fire"
#> 
#> [[14]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[14]]$tvSeries
#> [1] "Season 1" "Season 3" "Season 4" "Season 5"
#> 
#> [[14]]$playedBy
#> [1] "Ian McElhinney"
#> 
#> 
#> [[15]]
#> [[15]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/2066"
#> 
#> [[15]]$id
#> [1] 2066
#> 
#> [[15]]$name
#> [1] "Varamyr"
#> 
#> [[15]]$gender
#> [1] "Male"
#> 
#> [[15]]$culture
#> [1] "Free Folk"
#> 
#> [[15]]$born
#> [1] "At a village Beyond the Wall"
#> 
#> [[15]]$died
#> [1] "In 300 AC, at a village Beyond the Wall"
#> 
#> [[15]]$alive
#> [1] FALSE
#> 
#> [[15]]$titles
#> [1] ""
#> 
#> [[15]]$aliases
#> [1] "Varamyr Sixskins" "Haggon"           "Lump"            
#> 
#> [[15]]$father
#> [1] ""
#> 
#> [[15]]$mother
#> [1] ""
#> 
#> [[15]]$spouse
#> [1] ""
#> 
#> [[15]]$allegiances
#> list()
#> 
#> [[15]]$books
#> [1] "A Storm of Swords"
#> 
#> [[15]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[15]]$tvSeries
#> [1] ""
#> 
#> [[15]]$playedBy
#> [1] ""
#> 
#> 
#> [[16]]
#> [[16]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/208"
#> 
#> [[16]]$id
#> [1] 208
#> 
#> [[16]]$name
#> [1] "Brandon Stark"
#> 
#> [[16]]$gender
#> [1] "Male"
#> 
#> [[16]]$culture
#> [1] "Northmen"
#> 
#> [[16]]$born
#> [1] "In 290 AC, at Winterfell"
#> 
#> [[16]]$died
#> [1] ""
#> 
#> [[16]]$alive
#> [1] TRUE
#> 
#> [[16]]$titles
#> [1] "Prince of Winterfell"
#> 
#> [[16]]$aliases
#> [1] "Bran"            "Bran the Broken" "The Winged Wolf"
#> 
#> [[16]]$father
#> [1] ""
#> 
#> [[16]]$mother
#> [1] ""
#> 
#> [[16]]$spouse
#> [1] ""
#> 
#> [[16]]$allegiances
#> [1] "House Stark of Winterfell"
#> 
#> [[16]]$books
#> [1] "A Feast for Crows"
#> 
#> [[16]]$povBooks
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[16]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 6"
#> 
#> [[16]]$playedBy
#> [1] "Isaac Hempstead-Wright"
#> 
#> 
#> [[17]]
#> [[17]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/216"
#> 
#> [[17]]$id
#> [1] 216
#> 
#> [[17]]$name
#> [1] "Brienne of Tarth"
#> 
#> [[17]]$gender
#> [1] "Female"
#> 
#> [[17]]$culture
#> [1] ""
#> 
#> [[17]]$born
#> [1] "In 280 AC"
#> 
#> [[17]]$died
#> [1] ""
#> 
#> [[17]]$alive
#> [1] TRUE
#> 
#> [[17]]$titles
#> [1] ""
#> 
#> [[17]]$aliases
#> [1] "The Maid of Tarth"  "Brienne the Beauty" "Brienne the Blue"  
#> 
#> [[17]]$father
#> [1] ""
#> 
#> [[17]]$mother
#> [1] ""
#> 
#> [[17]]$spouse
#> [1] ""
#> 
#> [[17]]$allegiances
#> [1] "House Baratheon of Storm's End" "House Stark of Winterfell"     
#> [3] "House Tarth of Evenfall Hall"  
#> 
#> [[17]]$books
#> [1] "A Clash of Kings"     "A Storm of Swords"    "A Dance with Dragons"
#> 
#> [[17]]$povBooks
#> [1] "A Feast for Crows"
#> 
#> [[17]]$tvSeries
#> [1] "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[17]]$playedBy
#> [1] "Gwendoline Christie"
#> 
#> 
#> [[18]]
#> [[18]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/232"
#> 
#> [[18]]$id
#> [1] 232
#> 
#> [[18]]$name
#> [1] "Catelyn Stark"
#> 
#> [[18]]$gender
#> [1] "Female"
#> 
#> [[18]]$culture
#> [1] "Rivermen"
#> 
#> [[18]]$born
#> [1] "In 264 AC, at Riverrun"
#> 
#> [[18]]$died
#> [1] "In 299 AC, at the Twins"
#> 
#> [[18]]$alive
#> [1] FALSE
#> 
#> [[18]]$titles
#> [1] "Lady of Winterfell"
#> 
#> [[18]]$aliases
#> [1] "Catelyn Tully"     "Lady Stoneheart"   "The Silent Sistet"
#> [4] "Mother Mercilesr"  "The Hangwomans"   
#> 
#> [[18]]$father
#> [1] ""
#> 
#> [[18]]$mother
#> [1] ""
#> 
#> [[18]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/339"
#> 
#> [[18]]$allegiances
#> [1] "House Stark of Winterfell" "House Tully of Riverrun"  
#> 
#> [[18]]$books
#> [1] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[18]]$povBooks
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> 
#> [[18]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3"
#> 
#> [[18]]$playedBy
#> [1] "Michelle Fairley"
#> 
#> 
#> [[19]]
#> [[19]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/238"
#> 
#> [[19]]$id
#> [1] 238
#> 
#> [[19]]$name
#> [1] "Cersei Lannister"
#> 
#> [[19]]$gender
#> [1] "Female"
#> 
#> [[19]]$culture
#> [1] "Westerman"
#> 
#> [[19]]$born
#> [1] "In 266 AC, at Casterly Rock"
#> 
#> [[19]]$died
#> [1] ""
#> 
#> [[19]]$alive
#> [1] TRUE
#> 
#> [[19]]$titles
#> [1] "Light of the West"      "Queen Dowager"          "Protector of the Realm"
#> [4] "Lady of Casterly Rock"  "Queen Regent"          
#> 
#> [[19]]$aliases
#> [1] ""
#> 
#> [[19]]$father
#> [1] ""
#> 
#> [[19]]$mother
#> [1] ""
#> 
#> [[19]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/901"
#> 
#> [[19]]$allegiances
#> [1] "House Lannister of Casterly Rock"
#> 
#> [[19]]$books
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> 
#> [[19]]$povBooks
#> [1] "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[19]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[19]]$playedBy
#> [1] "Lena Headey"
#> 
#> 
#> [[20]]
#> [[20]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/339"
#> 
#> [[20]]$id
#> [1] 339
#> 
#> [[20]]$name
#> [1] "Eddard Stark"
#> 
#> [[20]]$gender
#> [1] "Male"
#> 
#> [[20]]$culture
#> [1] "Northmen"
#> 
#> [[20]]$born
#> [1] "In 263 AC, at Winterfell"
#> 
#> [[20]]$died
#> [1] "In 299 AC, at Great Sept of Baelor in King's Landing"
#> 
#> [[20]]$alive
#> [1] FALSE
#> 
#> [[20]]$titles
#> [1] "Lord of Winterfell"     "Warden of the North"    "Hand of the King"      
#> [4] "Protector of the Realm" "Regent"                
#> 
#> [[20]]$aliases
#> [1] "Ned"            "The Ned"        "The Quiet Wolf"
#> 
#> [[20]]$father
#> [1] ""
#> 
#> [[20]]$mother
#> [1] ""
#> 
#> [[20]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/232"
#> 
#> [[20]]$allegiances
#> [1] "House Stark of Winterfell"
#> 
#> [[20]]$books
#> [1] "A Clash of Kings"          "A Storm of Swords"        
#> [3] "A Feast for Crows"         "A Dance with Dragons"     
#> [5] "The World of Ice and Fire"
#> 
#> [[20]]$povBooks
#> [1] "A Game of Thrones"
#> 
#> [[20]]$tvSeries
#> [1] "Season 1" "Season 6"
#> 
#> [[20]]$playedBy
#> [1] "Sean Bean"       "Sebastian Croft" "Robert Aramayo" 
#> 
#> 
#> [[21]]
#> [[21]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/529"
#> 
#> [[21]]$id
#> [1] 529
#> 
#> [[21]]$name
#> [1] "Jaime Lannister"
#> 
#> [[21]]$gender
#> [1] "Male"
#> 
#> [[21]]$culture
#> [1] "Westerlands"
#> 
#> [[21]]$born
#> [1] "In 266 AC, at Casterly Rock"
#> 
#> [[21]]$died
#> [1] ""
#> 
#> [[21]]$alive
#> [1] TRUE
#> 
#> [[21]]$titles
#> [1] "Ser"                              "Lord Commander of the Kingsguard"
#> [3] "Warden of the East (formerly)"   
#> 
#> [[21]]$aliases
#> [1] "The Kingslayer"        "The Lion of Lannister" "The Young Lion"       
#> [4] "Cripple"              
#> 
#> [[21]]$father
#> [1] ""
#> 
#> [[21]]$mother
#> [1] ""
#> 
#> [[21]]$spouse
#> [1] ""
#> 
#> [[21]]$allegiances
#> [1] "House Lannister of Casterly Rock"
#> 
#> [[21]]$books
#> [1] "A Game of Thrones" "A Clash of Kings" 
#> 
#> [[21]]$povBooks
#> [1] "A Storm of Swords"    "A Feast for Crows"    "A Dance with Dragons"
#> 
#> [[21]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5"
#> 
#> [[21]]$playedBy
#> [1] "Nikolaj Coster-Waldau"
#> 
#> 
#> [[22]]
#> [[22]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/576"
#> 
#> [[22]]$id
#> [1] 576
#> 
#> [[22]]$name
#> [1] "Jon Connington"
#> 
#> [[22]]$gender
#> [1] "Male"
#> 
#> [[22]]$culture
#> [1] "Stormlands"
#> 
#> [[22]]$born
#> [1] "In or between 263 AC and 265 AC"
#> 
#> [[22]]$died
#> [1] ""
#> 
#> [[22]]$alive
#> [1] TRUE
#> 
#> [[22]]$titles
#> [1] "Lord of Griffin's Roost" "Hand of the King"       
#> [3] "Hand of the True King"  
#> 
#> [[22]]$aliases
#> [1] "Griffthe Mad King's Hand"
#> 
#> [[22]]$father
#> [1] ""
#> 
#> [[22]]$mother
#> [1] ""
#> 
#> [[22]]$spouse
#> [1] ""
#> 
#> [[22]]$allegiances
#> [1] "House Connington of Griffin's Roost" "House Targaryen of King's Landing"  
#> 
#> [[22]]$books
#> [1] "A Storm of Swords"         "A Feast for Crows"        
#> [3] "The World of Ice and Fire"
#> 
#> [[22]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[22]]$tvSeries
#> [1] ""
#> 
#> [[22]]$playedBy
#> [1] ""
#> 
#> 
#> [[23]]
#> [[23]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/583"
#> 
#> [[23]]$id
#> [1] 583
#> 
#> [[23]]$name
#> [1] "Jon Snow"
#> 
#> [[23]]$gender
#> [1] "Male"
#> 
#> [[23]]$culture
#> [1] "Northmen"
#> 
#> [[23]]$born
#> [1] "In 283 AC"
#> 
#> [[23]]$died
#> [1] ""
#> 
#> [[23]]$alive
#> [1] TRUE
#> 
#> [[23]]$titles
#> [1] "Lord Commander of the Night's Watch"
#> 
#> [[23]]$aliases
#> [1] "Lord Snow"                                    
#> [2] "Ned Stark's Bastard"                          
#> [3] "The Snow of Winterfell"                       
#> [4] "The Crow-Come-Over"                           
#> [5] "The 998th Lord Commander of the Night's Watch"
#> [6] "The Bastard of Winterfell"                    
#> [7] "The Black Bastard of the Wall"                
#> [8] "Lord Crow"                                    
#> 
#> [[23]]$father
#> [1] ""
#> 
#> [[23]]$mother
#> [1] ""
#> 
#> [[23]]$spouse
#> [1] ""
#> 
#> [[23]]$allegiances
#> [1] "House Stark of Winterfell"
#> 
#> [[23]]$books
#> [1] "A Feast for Crows"
#> 
#> [[23]]$povBooks
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[23]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[23]]$playedBy
#> [1] "Kit Harington"
#> 
#> 
#> [[24]]
#> [[24]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/60"
#> 
#> [[24]]$id
#> [1] 60
#> 
#> [[24]]$name
#> [1] "Aeron Greyjoy"
#> 
#> [[24]]$gender
#> [1] "Male"
#> 
#> [[24]]$culture
#> [1] "Ironborn"
#> 
#> [[24]]$born
#> [1] "In or between 269 AC and 273 AC, at Pyke"
#> 
#> [[24]]$died
#> [1] ""
#> 
#> [[24]]$alive
#> [1] TRUE
#> 
#> [[24]]$titles
#> [1] "Priest of the Drowned God"             
#> [2] "Captain of the Golden Storm (formerly)"
#> 
#> [[24]]$aliases
#> [1] "The Damphair"   "Aeron Damphair"
#> 
#> [[24]]$father
#> [1] ""
#> 
#> [[24]]$mother
#> [1] ""
#> 
#> [[24]]$spouse
#> [1] ""
#> 
#> [[24]]$allegiances
#> [1] "House Greyjoy of Pyke"
#> 
#> [[24]]$books
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Storm of Swords"   
#> [4] "A Dance with Dragons"
#> 
#> [[24]]$povBooks
#> [1] "A Feast for Crows"
#> 
#> [[24]]$tvSeries
#> [1] "Season 6"
#> 
#> [[24]]$playedBy
#> [1] "Michael Feast"
#> 
#> 
#> [[25]]
#> [[25]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/605"
#> 
#> [[25]]$id
#> [1] 605
#> 
#> [[25]]$name
#> [1] "Kevan Lannister"
#> 
#> [[25]]$gender
#> [1] "Male"
#> 
#> [[25]]$culture
#> [1] ""
#> 
#> [[25]]$born
#> [1] "In 244 AC"
#> 
#> [[25]]$died
#> [1] "In 300 AC, at King's Landing"
#> 
#> [[25]]$alive
#> [1] FALSE
#> 
#> [[25]]$titles
#> [1] "Ser"                    "Master of laws"         "Lord Regent"           
#> [4] "Protector of the Realm"
#> 
#> [[25]]$aliases
#> [1] ""
#> 
#> [[25]]$father
#> [1] ""
#> 
#> [[25]]$mother
#> [1] ""
#> 
#> [[25]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/327"
#> 
#> [[25]]$allegiances
#> [1] "House Lannister of Casterly Rock"
#> 
#> [[25]]$books
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> [4] "A Feast for Crows"
#> 
#> [[25]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[25]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 5" "Season 6"
#> 
#> [[25]]$playedBy
#> [1] "Ian Gelder"
#> 
#> 
#> [[26]]
#> [[26]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/743"
#> 
#> [[26]]$id
#> [1] 743
#> 
#> [[26]]$name
#> [1] "Melisandre"
#> 
#> [[26]]$gender
#> [1] "Female"
#> 
#> [[26]]$culture
#> [1] "Asshai"
#> 
#> [[26]]$born
#> [1] "At Unknown"
#> 
#> [[26]]$died
#> [1] ""
#> 
#> [[26]]$alive
#> [1] TRUE
#> 
#> [[26]]$titles
#> [1] ""
#> 
#> [[26]]$aliases
#> [1] "The Red Priestess"     "The Red Woman"         "The King's Red Shadow"
#> [4] "Lady Red"              "Lot Seven"            
#> 
#> [[26]]$father
#> [1] ""
#> 
#> [[26]]$mother
#> [1] ""
#> 
#> [[26]]$spouse
#> [1] ""
#> 
#> [[26]]$allegiances
#> list()
#> 
#> [[26]]$books
#> [1] "A Clash of Kings"  "A Storm of Swords" "A Feast for Crows"
#> 
#> [[26]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[26]]$tvSeries
#> [1] "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[26]]$playedBy
#> [1] "Carice van Houten"
#> 
#> 
#> [[27]]
#> [[27]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/751"
#> 
#> [[27]]$id
#> [1] 751
#> 
#> [[27]]$name
#> [1] "Merrett Frey"
#> 
#> [[27]]$gender
#> [1] "Male"
#> 
#> [[27]]$culture
#> [1] "Rivermen"
#> 
#> [[27]]$born
#> [1] "In 262 AC"
#> 
#> [[27]]$died
#> [1] "In 300 AC, at Near Oldstones"
#> 
#> [[27]]$alive
#> [1] FALSE
#> 
#> [[27]]$titles
#> [1] ""
#> 
#> [[27]]$aliases
#> [1] "Merrett Muttonhead"
#> 
#> [[27]]$father
#> [1] ""
#> 
#> [[27]]$mother
#> [1] ""
#> 
#> [[27]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/712"
#> 
#> [[27]]$allegiances
#> [1] "House Frey of the Crossing"
#> 
#> [[27]]$books
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Feast for Crows"   
#> [4] "A Dance with Dragons"
#> 
#> [[27]]$povBooks
#> [1] "A Storm of Swords"
#> 
#> [[27]]$tvSeries
#> [1] ""
#> 
#> [[27]]$playedBy
#> [1] ""
#> 
#> 
#> [[28]]
#> [[28]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/844"
#> 
#> [[28]]$id
#> [1] 844
#> 
#> [[28]]$name
#> [1] "Quentyn Martell"
#> 
#> [[28]]$gender
#> [1] "Male"
#> 
#> [[28]]$culture
#> [1] "Dornish"
#> 
#> [[28]]$born
#> [1] "In 281 AC, at Sunspear, Dorne"
#> 
#> [[28]]$died
#> [1] "In 300 AC, at Meereen"
#> 
#> [[28]]$alive
#> [1] FALSE
#> 
#> [[28]]$titles
#> [1] "Prince"
#> 
#> [[28]]$aliases
#> [1] "Frog"                         "Prince Frog"                 
#> [3] "The prince who came too late" "The Dragonrider"             
#> 
#> [[28]]$father
#> [1] ""
#> 
#> [[28]]$mother
#> [1] ""
#> 
#> [[28]]$spouse
#> [1] ""
#> 
#> [[28]]$allegiances
#> [1] "House Nymeros Martell of Sunspear"
#> 
#> [[28]]$books
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> [4] "A Feast for Crows"
#> 
#> [[28]]$povBooks
#> [1] "A Dance with Dragons"
#> 
#> [[28]]$tvSeries
#> [1] ""
#> 
#> [[28]]$playedBy
#> [1] ""
#> 
#> 
#> [[29]]
#> [[29]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/954"
#> 
#> [[29]]$id
#> [1] 954
#> 
#> [[29]]$name
#> [1] "Samwell Tarly"
#> 
#> [[29]]$gender
#> [1] "Male"
#> 
#> [[29]]$culture
#> [1] "Andal"
#> 
#> [[29]]$born
#> [1] "In 283 AC, at Horn Hill"
#> 
#> [[29]]$died
#> [1] ""
#> 
#> [[29]]$alive
#> [1] TRUE
#> 
#> [[29]]$titles
#> [1] ""
#> 
#> [[29]]$aliases
#> [1] "Sam"              "Ser Piggy"        "Prince Pork-chop" "Lady Piggy"      
#> [5] "Sam the Slayer"   "Black Sam"        "Lord of Ham"     
#> 
#> [[29]]$father
#> [1] ""
#> 
#> [[29]]$mother
#> [1] ""
#> 
#> [[29]]$spouse
#> [1] ""
#> 
#> [[29]]$allegiances
#> [1] "House Tarly of Horn Hill"
#> 
#> [[29]]$books
#> [1] "A Game of Thrones"    "A Clash of Kings"     "A Dance with Dragons"
#> 
#> [[29]]$povBooks
#> [1] "A Storm of Swords" "A Feast for Crows"
#> 
#> [[29]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[29]]$playedBy
#> [1] "John Bradley-West"
#> 
#> 
#> [[30]]
#> [[30]]$url
#> [1] "https://www.anapioficeandfire.com/api/characters/957"
#> 
#> [[30]]$id
#> [1] 957
#> 
#> [[30]]$name
#> [1] "Sansa Stark"
#> 
#> [[30]]$gender
#> [1] "Female"
#> 
#> [[30]]$culture
#> [1] "Northmen"
#> 
#> [[30]]$born
#> [1] "In 286 AC, at Winterfell"
#> 
#> [[30]]$died
#> [1] ""
#> 
#> [[30]]$alive
#> [1] TRUE
#> 
#> [[30]]$titles
#> [1] "Princess"
#> 
#> [[30]]$aliases
#> [1] "Little bird"  "Alayne Stone" "Jonquil"     
#> 
#> [[30]]$father
#> [1] ""
#> 
#> [[30]]$mother
#> [1] ""
#> 
#> [[30]]$spouse
#> [1] "https://www.anapioficeandfire.com/api/characters/1052"
#> 
#> [[30]]$allegiances
#> [1] "House Baelish of Harrenhal" "House Stark of Winterfell" 
#> 
#> [[30]]$books
#> [1] "A Dance with Dragons"
#> 
#> [[30]]$povBooks
#> [1] "A Game of Thrones" "A Clash of Kings"  "A Storm of Swords"
#> [4] "A Feast for Crows"
#> 
#> [[30]]$tvSeries
#> [1] "Season 1" "Season 2" "Season 3" "Season 4" "Season 5" "Season 6"
#> 
#> [[30]]$playedBy
#> [1] "Sophie Turner"
```

How many elements are in got_chars?

``` r
length(got_chars)
#> [1] 30
```

Who is the 9th person listed in got_chars?

``` r
got_chars[[9]]$name
#> [1] "Daenerys Targaryen"
got_chars[[9]][["name"]]
#> [1] "Daenerys Targaryen"

# What information is given for this person?
names(got_chars[[9]])
#>  [1] "url"         "id"          "name"        "gender"      "culture"    
#>  [6] "born"        "died"        "alive"       "titles"      "aliases"    
#> [11] "father"      "mother"      "spouse"      "allegiances" "books"      
#> [16] "povBooks"    "tvSeries"    "playedBy"

# What is the difference between got_chars[9] and got_chars[[9]]?
str(got_chars[[9]])
#> List of 18
#>  $ url        : chr "https://www.anapioficeandfire.com/api/characters/1303"
#>  $ id         : int 1303
#>  $ name       : chr "Daenerys Targaryen"
#>  $ gender     : chr "Female"
#>  $ culture    : chr "Valyrian"
#>  $ born       : chr "In 284 AC, at Dragonstone"
#>  $ died       : chr ""
#>  $ alive      : logi TRUE
#>  $ titles     : chr [1:5] "Queen of the Andals and the Rhoynar and the First Men, Lord of the Seven Kingdoms" "Khaleesi of the Great Grass Sea" "Breaker of Shackles/Chains" "Queen of Meereen" ...
#>  $ aliases    : chr [1:11] "Dany" "Daenerys Stormborn" "The Unburnt" "Mother of Dragons" ...
#>  $ father     : chr ""
#>  $ mother     : chr ""
#>  $ spouse     : chr "https://www.anapioficeandfire.com/api/characters/1346"
#>  $ allegiances: chr "House Targaryen of King's Landing"
#>  $ books      : chr "A Feast for Crows"
#>  $ povBooks   : chr [1:4] "A Game of Thrones" "A Clash of Kings" "A Storm of Swords" "A Dance with Dragons"
#>  $ tvSeries   : chr [1:6] "Season 1" "Season 2" "Season 3" "Season 4" ...
#>  $ playedBy   : chr "Emilia Clarke"
str(got_chars[9])
#> List of 1
#>  $ :List of 18
#>   ..$ url        : chr "https://www.anapioficeandfire.com/api/characters/1303"
#>   ..$ id         : int 1303
#>   ..$ name       : chr "Daenerys Targaryen"
#>   ..$ gender     : chr "Female"
#>   ..$ culture    : chr "Valyrian"
#>   ..$ born       : chr "In 284 AC, at Dragonstone"
#>   ..$ died       : chr ""
#>   ..$ alive      : logi TRUE
#>   ..$ titles     : chr [1:5] "Queen of the Andals and the Rhoynar and the First Men, Lord of the Seven Kingdoms" "Khaleesi of the Great Grass Sea" "Breaker of Shackles/Chains" "Queen of Meereen" ...
#>   ..$ aliases    : chr [1:11] "Dany" "Daenerys Stormborn" "The Unburnt" "Mother of Dragons" ...
#>   ..$ father     : chr ""
#>   ..$ mother     : chr ""
#>   ..$ spouse     : chr "https://www.anapioficeandfire.com/api/characters/1346"
#>   ..$ allegiances: chr "House Targaryen of King's Landing"
#>   ..$ books      : chr "A Feast for Crows"
#>   ..$ povBooks   : chr [1:4] "A Game of Thrones" "A Clash of Kings" "A Storm of Swords" "A Dance with Dragons"
#>   ..$ tvSeries   : chr [1:6] "Season 1" "Season 2" "Season 3" "Season 4" ...
#>   ..$ playedBy   : chr "Emilia Clarke"

str(got_chars[[9]], list.len = 4)
#> List of 18
#>  $ url        : chr "https://www.anapioficeandfire.com/api/characters/1303"
#>  $ id         : int 1303
#>  $ name       : chr "Daenerys Targaryen"
#>  $ gender     : chr "Female"
#>   [list output truncated]
str(got_chars[9], list.len = 4)
#> List of 1
#>  $ :List of 18
#>   ..$ url        : chr "https://www.anapioficeandfire.com/api/characters/1303"
#>   ..$ id         : int 1303
#>   ..$ name       : chr "Daenerys Targaryen"
#>   ..$ gender     : chr "Female"
#>   .. [list output truncated]

View(got_chars)
#> Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 1, 2, 4, 3, 6
View(got_chars[[9]])
#> Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 1, 5, 11, 4, 6
View(got_chars[9])
#> Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 1, 5, 11, 4, 6

# How many aliases does each character have?
daenerys <- got_chars[[9]]
length(daenerys[["aliases"]])
#> [1] 11

asha <- got_chars[[13]]
length(asha[["aliases"]])
#> [1] 2

f <- function(x) {
  length(x[["aliases"]])
}
f(asha)
#> [1] 2

map(got_chars, f)
#> [[1]]
#> [1] 4
#> 
#> [[2]]
#> [1] 11
#> 
#> [[3]]
#> [1] 1
#> 
#> [[4]]
#> [1] 1
#> 
#> [[5]]
#> [1] 1
#> 
#> [[6]]
#> [1] 1
#> 
#> [[7]]
#> [1] 1
#> 
#> [[8]]
#> [1] 1
#> 
#> [[9]]
#> [1] 11
#> 
#> [[10]]
#> [1] 5
#> 
#> [[11]]
#> [1] 16
#> 
#> [[12]]
#> [1] 1
#> 
#> [[13]]
#> [1] 2
#> 
#> [[14]]
#> [1] 5
#> 
#> [[15]]
#> [1] 3
#> 
#> [[16]]
#> [1] 3
#> 
#> [[17]]
#> [1] 3
#> 
#> [[18]]
#> [1] 5
#> 
#> [[19]]
#> [1] 1
#> 
#> [[20]]
#> [1] 3
#> 
#> [[21]]
#> [1] 4
#> 
#> [[22]]
#> [1] 1
#> 
#> [[23]]
#> [1] 8
#> 
#> [[24]]
#> [1] 2
#> 
#> [[25]]
#> [1] 1
#> 
#> [[26]]
#> [1] 5
#> 
#> [[27]]
#> [1] 1
#> 
#> [[28]]
#> [1] 4
#> 
#> [[29]]
#> [1] 7
#> 
#> [[30]]
#> [1] 3

map(got_chars, \(x) length(x[["aliases"]]))
#> [[1]]
#> [1] 4
#> 
#> [[2]]
#> [1] 11
#> 
#> [[3]]
#> [1] 1
#> 
#> [[4]]
#> [1] 1
#> 
#> [[5]]
#> [1] 1
#> 
#> [[6]]
#> [1] 1
#> 
#> [[7]]
#> [1] 1
#> 
#> [[8]]
#> [1] 1
#> 
#> [[9]]
#> [1] 11
#> 
#> [[10]]
#> [1] 5
#> 
#> [[11]]
#> [1] 16
#> 
#> [[12]]
#> [1] 1
#> 
#> [[13]]
#> [1] 2
#> 
#> [[14]]
#> [1] 5
#> 
#> [[15]]
#> [1] 3
#> 
#> [[16]]
#> [1] 3
#> 
#> [[17]]
#> [1] 3
#> 
#> [[18]]
#> [1] 5
#> 
#> [[19]]
#> [1] 1
#> 
#> [[20]]
#> [1] 3
#> 
#> [[21]]
#> [1] 4
#> 
#> [[22]]
#> [1] 1
#> 
#> [[23]]
#> [1] 8
#> 
#> [[24]]
#> [1] 2
#> 
#> [[25]]
#> [1] 1
#> 
#> [[26]]
#> [1] 5
#> 
#> [[27]]
#> [1] 1
#> 
#> [[28]]
#> [1] 4
#> 
#> [[29]]
#> [1] 7
#> 
#> [[30]]
#> [1] 3

# How many x does each (GoT or SW) character have?
# (x = titles, allegiances, vehicles, starships)
map(got_chars, \(x) length(x[["allegiances"]]))
#> [[1]]
#> [1] 1
#> 
#> [[2]]
#> [1] 1
#> 
#> [[3]]
#> [1] 1
#> 
#> [[4]]
#> [1] 0
#> 
#> [[5]]
#> [1] 1
#> 
#> [[6]]
#> [1] 0
#> 
#> [[7]]
#> [1] 0
#> 
#> [[8]]
#> [1] 1
#> 
#> [[9]]
#> [1] 1
#> 
#> [[10]]
#> [1] 2
#> 
#> [[11]]
#> [1] 1
#> 
#> [[12]]
#> [1] 1
#> 
#> [[13]]
#> [1] 2
#> 
#> [[14]]
#> [1] 2
#> 
#> [[15]]
#> [1] 0
#> 
#> [[16]]
#> [1] 1
#> 
#> [[17]]
#> [1] 3
#> 
#> [[18]]
#> [1] 2
#> 
#> [[19]]
#> [1] 1
#> 
#> [[20]]
#> [1] 1
#> 
#> [[21]]
#> [1] 1
#> 
#> [[22]]
#> [1] 2
#> 
#> [[23]]
#> [1] 1
#> 
#> [[24]]
#> [1] 1
#> 
#> [[25]]
#> [1] 1
#> 
#> [[26]]
#> [1] 0
#> 
#> [[27]]
#> [1] 1
#> 
#> [[28]]
#> [1] 1
#> 
#> [[29]]
#> [1] 1
#> 
#> [[30]]
#> [1] 2
map(got_chars, \(x) length(x[["titles"]]))
#> [[1]]
#> [1] 2
#> 
#> [[2]]
#> [1] 2
#> 
#> [[3]]
#> [1] 2
#> 
#> [[4]]
#> [1] 1
#> 
#> [[5]]
#> [1] 1
#> 
#> [[6]]
#> [1] 1
#> 
#> [[7]]
#> [1] 1
#> 
#> [[8]]
#> [1] 1
#> 
#> [[9]]
#> [1] 5
#> 
#> [[10]]
#> [1] 4
#> 
#> [[11]]
#> [1] 1
#> 
#> [[12]]
#> [1] 1
#> 
#> [[13]]
#> [1] 3
#> 
#> [[14]]
#> [1] 2
#> 
#> [[15]]
#> [1] 1
#> 
#> [[16]]
#> [1] 1
#> 
#> [[17]]
#> [1] 1
#> 
#> [[18]]
#> [1] 1
#> 
#> [[19]]
#> [1] 5
#> 
#> [[20]]
#> [1] 5
#> 
#> [[21]]
#> [1] 3
#> 
#> [[22]]
#> [1] 3
#> 
#> [[23]]
#> [1] 1
#> 
#> [[24]]
#> [1] 2
#> 
#> [[25]]
#> [1] 4
#> 
#> [[26]]
#> [1] 1
#> 
#> [[27]]
#> [1] 1
#> 
#> [[28]]
#> [1] 1
#> 
#> [[29]]
#> [1] 1
#> 
#> [[30]]
#> [1] 1
map(got_chars, \(x) length(x[["povBooks"]]))
#> [[1]]
#> [1] 2
#> 
#> [[2]]
#> [1] 4
#> 
#> [[3]]
#> [1] 2
#> 
#> [[4]]
#> [1] 1
#> 
#> [[5]]
#> [1] 2
#> 
#> [[6]]
#> [1] 1
#> 
#> [[7]]
#> [1] 1
#> 
#> [[8]]
#> [1] 1
#> 
#> [[9]]
#> [1] 4
#> 
#> [[10]]
#> [1] 3
#> 
#> [[11]]
#> [1] 5
#> 
#> [[12]]
#> [1] 1
#> 
#> [[13]]
#> [1] 2
#> 
#> [[14]]
#> [1] 1
#> 
#> [[15]]
#> [1] 1
#> 
#> [[16]]
#> [1] 4
#> 
#> [[17]]
#> [1] 1
#> 
#> [[18]]
#> [1] 3
#> 
#> [[19]]
#> [1] 2
#> 
#> [[20]]
#> [1] 1
#> 
#> [[21]]
#> [1] 3
#> 
#> [[22]]
#> [1] 1
#> 
#> [[23]]
#> [1] 4
#> 
#> [[24]]
#> [1] 1
#> 
#> [[25]]
#> [1] 1
#> 
#> [[26]]
#> [1] 1
#> 
#> [[27]]
#> [1] 1
#> 
#> [[28]]
#> [1] 1
#> 
#> [[29]]
#> [1] 2
#> 
#> [[30]]
#> [1] 4

# What's each character's name?
map_chr(got_chars, \(x) x[["name"]])
#>  [1] "Theon Greyjoy"      "Tyrion Lannister"   "Victarion Greyjoy" 
#>  [4] "Will"               "Areo Hotah"         "Chett"             
#>  [7] "Cressen"            "Arianne Martell"    "Daenerys Targaryen"
#> [10] "Davos Seaworth"     "Arya Stark"         "Arys Oakheart"     
#> [13] "Asha Greyjoy"       "Barristan Selmy"    "Varamyr"           
#> [16] "Brandon Stark"      "Brienne of Tarth"   "Catelyn Stark"     
#> [19] "Cersei Lannister"   "Eddard Stark"       "Jaime Lannister"   
#> [22] "Jon Connington"     "Jon Snow"           "Aeron Greyjoy"     
#> [25] "Kevan Lannister"    "Melisandre"         "Merrett Frey"      
#> [28] "Quentyn Martell"    "Samwell Tarly"      "Sansa Stark"
map_chr(sw_people, \(x) x[["name"]])
#>  [1] "Luke Skywalker"        "C-3PO"                 "R2-D2"                
#>  [4] "Darth Vader"           "Leia Organa"           "Owen Lars"            
#>  [7] "Beru Whitesun lars"    "R5-D4"                 "Biggs Darklighter"    
#> [10] "Obi-Wan Kenobi"        "Anakin Skywalker"      "Wilhuff Tarkin"       
#> [13] "Chewbacca"             "Han Solo"              "Greedo"               
#> [16] "Jabba Desilijic Tiure" "Wedge Antilles"        "Jek Tono Porkins"     
#> [19] "Yoda"                  "Palpatine"             "Boba Fett"            
#> [22] "IG-88"                 "Bossk"                 "Lando Calrissian"     
#> [25] "Lobot"                 "Ackbar"                "Mon Mothma"           
#> [28] "Arvel Crynyd"          "Wicket Systri Warrick" "Nien Nunb"            
#> [31] "Qui-Gon Jinn"          "Nute Gunray"           "Finis Valorum"        
#> [34] "Jar Jar Binks"         "Roos Tarpals"          "Rugor Nass"           
#> [37] "Ric Olié"              "Watto"                 "Sebulba"              
#> [40] "Quarsh Panaka"         "Shmi Skywalker"        "Darth Maul"           
#> [43] "Bib Fortuna"           "Ayla Secura"           "Dud Bolt"             
#> [46] "Gasgano"               "Ben Quadinaros"        "Mace Windu"           
#> [49] "Ki-Adi-Mundi"          "Kit Fisto"             "Eeth Koth"            
#> [52] "Adi Gallia"            "Saesee Tiin"           "Yarael Poof"          
#> [55] "Plo Koon"              "Mas Amedda"            "Gregar Typho"         
#> [58] "Cordé"                 "Cliegg Lars"           "Poggle the Lesser"    
#> [61] "Luminara Unduli"       "Barriss Offee"         "Dormé"                
#> [64] "Dooku"                 "Bail Prestor Organa"   "Jango Fett"           
#> [67] "Zam Wesell"            "Dexter Jettster"       "Lama Su"              
#> [70] "Taun We"               "Jocasta Nu"            "Ratts Tyerell"        
#> [73] "R4-P17"                "Wat Tambor"            "San Hill"             
#> [76] "Shaak Ti"              "Grievous"              "Tarfful"              
#> [79] "Raymus Antilles"       "Sly Moore"             "Tion Medon"           
#> [82] "Finn"                  "Rey"                   "Poe Dameron"          
#> [85] "BB8"                   "Captain Phasma"        "Padmé Amidala"

# What color is each SW character's hair?
map_chr(sw_people, \(x) x[["hair_color"]])
#>  [1] "blond"         "n/a"           "n/a"           "none"         
#>  [5] "brown"         "brown, grey"   "brown"         "n/a"          
#>  [9] "black"         "auburn, white" "blond"         "auburn, grey" 
#> [13] "brown"         "brown"         "n/a"           "n/a"          
#> [17] "brown"         "brown"         "white"         "grey"         
#> [21] "black"         "none"          "none"          "black"        
#> [25] "none"          "none"          "auburn"        "brown"        
#> [29] "brown"         "none"          "brown"         "none"         
#> [33] "blond"         "none"          "none"          "none"         
#> [37] "brown"         "black"         "none"          "black"        
#> [41] "black"         "none"          "none"          "none"         
#> [45] "none"          "none"          "none"          "none"         
#> [49] "white"         "none"          "black"         "none"         
#> [53] "none"          "none"          "none"          "none"         
#> [57] "black"         "brown"         "brown"         "none"         
#> [61] "black"         "black"         "brown"         "white"        
#> [65] "black"         "black"         "blonde"        "none"         
#> [69] "none"          "none"          "white"         "none"         
#> [73] "none"          "none"          "none"          "none"         
#> [77] "none"          "brown"         "brown"         "none"         
#> [81] "none"          "black"         "brown"         "brown"        
#> [85] "none"          "unknown"       "brown"

# Is the GoT character alive?
map_lgl(got_chars, \(x) x[["alive"]])
#>  [1]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE
#> [13]  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
#> [25] FALSE  TRUE FALSE FALSE  TRUE  TRUE

# Is the SW character female?
map_lgl(sw_people, \(x) x[["gender"]] == "female")
#>  [1] FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
#> [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [25] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [37] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
#> [49] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
#> [61]  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE
#> [73]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
#> [85] FALSE  TRUE  TRUE

# How heavy is each SW character?
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.2          ✔ readr     2.1.4.9000
#> ✔ forcats   1.0.0          ✔ stringr   1.5.0     
#> ✔ ggplot2   3.4.2          ✔ tibble    3.2.1     
#> ✔ lubridate 1.9.2          ✔ tidyr     1.3.0     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
map_chr(sw_people, \(x) x[["mass"]])
#>  [1] "77"      "75"      "32"      "136"     "49"      "120"     "75"     
#>  [8] "32"      "84"      "77"      "84"      "unknown" "112"     "80"     
#> [15] "74"      "1,358"   "77"      "110"     "17"      "75"      "78.2"   
#> [22] "140"     "113"     "79"      "79"      "83"      "unknown" "unknown"
#> [29] "20"      "68"      "89"      "90"      "unknown" "66"      "82"     
#> [36] "unknown" "unknown" "unknown" "40"      "unknown" "unknown" "80"     
#> [43] "unknown" "55"      "45"      "unknown" "65"      "84"      "82"     
#> [50] "87"      "unknown" "50"      "unknown" "unknown" "80"      "unknown"
#> [57] "85"      "unknown" "unknown" "80"      "56.2"    "50"      "unknown"
#> [64] "80"      "unknown" "79"      "55"      "102"     "88"      "unknown"
#> [71] "unknown" "15"      "unknown" "48"      "unknown" "57"      "159"    
#> [78] "136"     "79"      "48"      "80"      "unknown" "unknown" "unknown"
#> [85] "unknown" "unknown" "45"
map_dbl(sw_people, \(x) parse_number(x[["mass"]], na = "unknown"))
#>  [1]   77.0   75.0   32.0  136.0   49.0  120.0   75.0   32.0   84.0   77.0
#> [11]   84.0     NA  112.0   80.0   74.0 1358.0   77.0  110.0   17.0   75.0
#> [21]   78.2  140.0  113.0   79.0   79.0   83.0     NA     NA   20.0   68.0
#> [31]   89.0   90.0     NA   66.0   82.0     NA     NA     NA   40.0     NA
#> [41]     NA   80.0     NA   55.0   45.0     NA   65.0   84.0   82.0   87.0
#> [51]     NA   50.0     NA     NA   80.0     NA   85.0     NA     NA   80.0
#> [61]   56.2   50.0     NA   80.0     NA   79.0   55.0  102.0   88.0     NA
#> [71]     NA   15.0     NA   48.0     NA   57.0  159.0  136.0   79.0   48.0
#> [81]   80.0     NA     NA     NA     NA     NA   45.0

map_chr(got_chars, "name")
#>  [1] "Theon Greyjoy"      "Tyrion Lannister"   "Victarion Greyjoy" 
#>  [4] "Will"               "Areo Hotah"         "Chett"             
#>  [7] "Cressen"            "Arianne Martell"    "Daenerys Targaryen"
#> [10] "Davos Seaworth"     "Arya Stark"         "Arys Oakheart"     
#> [13] "Asha Greyjoy"       "Barristan Selmy"    "Varamyr"           
#> [16] "Brandon Stark"      "Brienne of Tarth"   "Catelyn Stark"     
#> [19] "Cersei Lannister"   "Eddard Stark"       "Jaime Lannister"   
#> [22] "Jon Connington"     "Jon Snow"           "Aeron Greyjoy"     
#> [25] "Kevan Lannister"    "Melisandre"         "Merrett Frey"      
#> [28] "Quentyn Martell"    "Samwell Tarly"      "Sansa Stark"
map_chr(got_chars, 3)
#>  [1] "Theon Greyjoy"      "Tyrion Lannister"   "Victarion Greyjoy" 
#>  [4] "Will"               "Areo Hotah"         "Chett"             
#>  [7] "Cressen"            "Arianne Martell"    "Daenerys Targaryen"
#> [10] "Davos Seaworth"     "Arya Stark"         "Arys Oakheart"     
#> [13] "Asha Greyjoy"       "Barristan Selmy"    "Varamyr"           
#> [16] "Brandon Stark"      "Brienne of Tarth"   "Catelyn Stark"     
#> [19] "Cersei Lannister"   "Eddard Stark"       "Jaime Lannister"   
#> [22] "Jon Connington"     "Jon Snow"           "Aeron Greyjoy"     
#> [25] "Kevan Lannister"    "Melisandre"         "Merrett Frey"      
#> [28] "Quentyn Martell"    "Samwell Tarly"      "Sansa Stark"

got_chars |>
  map(\(x) x[["aliases"]]) |>
  map_int(\(x) sum(x != ""))
#>  [1]  4 11  1  0  0  0  0  0 11  5 16  0  2  5  3  3  3  5  0  3  4  1  8  2  0
#> [26]  5  1  4  7  3

map_chr(sw_vehicles, "pilots")
#> Error in `map_chr()`:
#> ℹ In index: 1.
#> Caused by error:
#> ! Result must be length 1, not 0.
map_chr(sw_vehicles, "pilots", .default = NA)
#> Error in `map_chr()`:
#> ℹ In index: 5.
#> Caused by error:
#> ! Result must be length 1, not 2.
map_chr(sw_vehicles, list("pilots", 1), .default = NA)
#>  [1] NA                               NA                              
#>  [3] NA                               NA                              
#>  [5] "http://swapi.co/api/people/1/"  NA                              
#>  [7] NA                               "http://swapi.co/api/people/13/"
#>  [9] NA                               NA                              
#> [11] NA                               NA                              
#> [13] "http://swapi.co/api/people/1/"  NA                              
#> [15] NA                               NA                              
#> [17] NA                               NA                              
#> [19] "http://swapi.co/api/people/10/" "http://swapi.co/api/people/44/"
#> [21] "http://swapi.co/api/people/11/" "http://swapi.co/api/people/70/"
#> [23] "http://swapi.co/api/people/11/" NA                              
#> [25] NA                               "http://swapi.co/api/people/79/"
#> [27] NA                               NA                              
#> [29] NA                               NA                              
#> [31] NA                               NA                              
#> [33] NA                               NA                              
#> [35] NA                               NA                              
#> [37] "http://swapi.co/api/people/67/" NA                              
#> [39] NA

map_chr(got_chars, "name")
#>  [1] "Theon Greyjoy"      "Tyrion Lannister"   "Victarion Greyjoy" 
#>  [4] "Will"               "Areo Hotah"         "Chett"             
#>  [7] "Cressen"            "Arianne Martell"    "Daenerys Targaryen"
#> [10] "Davos Seaworth"     "Arya Stark"         "Arys Oakheart"     
#> [13] "Asha Greyjoy"       "Barristan Selmy"    "Varamyr"           
#> [16] "Brandon Stark"      "Brienne of Tarth"   "Catelyn Stark"     
#> [19] "Cersei Lannister"   "Eddard Stark"       "Jaime Lannister"   
#> [22] "Jon Connington"     "Jon Snow"           "Aeron Greyjoy"     
#> [25] "Kevan Lannister"    "Melisandre"         "Merrett Frey"      
#> [28] "Quentyn Martell"    "Samwell Tarly"      "Sansa Stark"

got_chars_named <- set_names(got_chars, map_chr(got_chars, "name"))

got_chars |>
  set_names(map_chr(got_chars, "name")) |>
  map_lgl("alive")
#>      Theon Greyjoy   Tyrion Lannister  Victarion Greyjoy               Will 
#>               TRUE               TRUE               TRUE              FALSE 
#>         Areo Hotah              Chett            Cressen    Arianne Martell 
#>               TRUE              FALSE              FALSE               TRUE 
#> Daenerys Targaryen     Davos Seaworth         Arya Stark      Arys Oakheart 
#>               TRUE               TRUE               TRUE              FALSE 
#>       Asha Greyjoy    Barristan Selmy            Varamyr      Brandon Stark 
#>               TRUE               TRUE              FALSE               TRUE 
#>   Brienne of Tarth      Catelyn Stark   Cersei Lannister       Eddard Stark 
#>               TRUE              FALSE               TRUE              FALSE 
#>    Jaime Lannister     Jon Connington           Jon Snow      Aeron Greyjoy 
#>               TRUE               TRUE               TRUE               TRUE 
#>    Kevan Lannister         Melisandre       Merrett Frey    Quentyn Martell 
#>              FALSE               TRUE              FALSE              FALSE 
#>      Samwell Tarly        Sansa Stark 
#>               TRUE               TRUE

allegiances <- map(got_chars_named, "allegiances")
tibble::enframe(allegiances, value = "allegiances")
#> # A tibble: 30 × 2
#>    name               allegiances
#>    <chr>              <list>     
#>  1 Theon Greyjoy      <chr [1]>  
#>  2 Tyrion Lannister   <chr [1]>  
#>  3 Victarion Greyjoy  <chr [1]>  
#>  4 Will               <list [0]> 
#>  5 Areo Hotah         <chr [1]>  
#>  6 Chett              <list [0]> 
#>  7 Cressen            <list [0]> 
#>  8 Arianne Martell    <chr [1]>  
#>  9 Daenerys Targaryen <chr [1]>  
#> 10 Davos Seaworth     <chr [2]>  
#> # ℹ 20 more rows

got_chars_named |>
  map_chr(list("allegiances", 1), .default = NA)
#>                         Theon Greyjoy                      Tyrion Lannister 
#>               "House Greyjoy of Pyke"    "House Lannister of Casterly Rock" 
#>                     Victarion Greyjoy                                  Will 
#>               "House Greyjoy of Pyke"                                    NA 
#>                            Areo Hotah                                 Chett 
#>   "House Nymeros Martell of Sunspear"                                    NA 
#>                               Cressen                       Arianne Martell 
#>                                    NA   "House Nymeros Martell of Sunspear" 
#>                    Daenerys Targaryen                        Davos Seaworth 
#>   "House Targaryen of King's Landing"      "House Baratheon of Dragonstone" 
#>                            Arya Stark                         Arys Oakheart 
#>           "House Stark of Winterfell"           "House Oakheart of Old Oak" 
#>                          Asha Greyjoy                       Barristan Selmy 
#>               "House Greyjoy of Pyke"         "House Selmy of Harvest Hall" 
#>                               Varamyr                         Brandon Stark 
#>                                    NA           "House Stark of Winterfell" 
#>                      Brienne of Tarth                         Catelyn Stark 
#>      "House Baratheon of Storm's End"           "House Stark of Winterfell" 
#>                      Cersei Lannister                          Eddard Stark 
#>    "House Lannister of Casterly Rock"           "House Stark of Winterfell" 
#>                       Jaime Lannister                        Jon Connington 
#>    "House Lannister of Casterly Rock" "House Connington of Griffin's Roost" 
#>                              Jon Snow                         Aeron Greyjoy 
#>           "House Stark of Winterfell"               "House Greyjoy of Pyke" 
#>                       Kevan Lannister                            Melisandre 
#>    "House Lannister of Casterly Rock"                                    NA 
#>                          Merrett Frey                       Quentyn Martell 
#>          "House Frey of the Crossing"   "House Nymeros Martell of Sunspear" 
#>                         Samwell Tarly                           Sansa Stark 
#>            "House Tarly of Horn Hill"          "House Baelish of Harrenhal"

got_chars_named |>
  map("allegiances") |>
  map_chr(str_flatten_comma)
#>                                                                             Theon Greyjoy 
#>                                                                   "House Greyjoy of Pyke" 
#>                                                                          Tyrion Lannister 
#>                                                        "House Lannister of Casterly Rock" 
#>                                                                         Victarion Greyjoy 
#>                                                                   "House Greyjoy of Pyke" 
#>                                                                                      Will 
#>                                                                                        "" 
#>                                                                                Areo Hotah 
#>                                                       "House Nymeros Martell of Sunspear" 
#>                                                                                     Chett 
#>                                                                                        "" 
#>                                                                                   Cressen 
#>                                                                                        "" 
#>                                                                           Arianne Martell 
#>                                                       "House Nymeros Martell of Sunspear" 
#>                                                                        Daenerys Targaryen 
#>                                                       "House Targaryen of King's Landing" 
#>                                                                            Davos Seaworth 
#>                            "House Baratheon of Dragonstone, House Seaworth of Cape Wrath" 
#>                                                                                Arya Stark 
#>                                                               "House Stark of Winterfell" 
#>                                                                             Arys Oakheart 
#>                                                               "House Oakheart of Old Oak" 
#>                                                                              Asha Greyjoy 
#>                                                  "House Greyjoy of Pyke, House Ironmaker" 
#>                                                                           Barristan Selmy 
#>                          "House Selmy of Harvest Hall, House Targaryen of King's Landing" 
#>                                                                                   Varamyr 
#>                                                                                        "" 
#>                                                                             Brandon Stark 
#>                                                               "House Stark of Winterfell" 
#>                                                                          Brienne of Tarth 
#> "House Baratheon of Storm's End, House Stark of Winterfell, House Tarth of Evenfall Hall" 
#>                                                                             Catelyn Stark 
#>                                      "House Stark of Winterfell, House Tully of Riverrun" 
#>                                                                          Cersei Lannister 
#>                                                        "House Lannister of Casterly Rock" 
#>                                                                              Eddard Stark 
#>                                                               "House Stark of Winterfell" 
#>                                                                           Jaime Lannister 
#>                                                        "House Lannister of Casterly Rock" 
#>                                                                            Jon Connington 
#>                  "House Connington of Griffin's Roost, House Targaryen of King's Landing" 
#>                                                                                  Jon Snow 
#>                                                               "House Stark of Winterfell" 
#>                                                                             Aeron Greyjoy 
#>                                                                   "House Greyjoy of Pyke" 
#>                                                                           Kevan Lannister 
#>                                                        "House Lannister of Casterly Rock" 
#>                                                                                Melisandre 
#>                                                                                        "" 
#>                                                                              Merrett Frey 
#>                                                              "House Frey of the Crossing" 
#>                                                                           Quentyn Martell 
#>                                                       "House Nymeros Martell of Sunspear" 
#>                                                                             Samwell Tarly 
#>                                                                "House Tarly of Horn Hill" 
#>                                                                               Sansa Stark 
#>                                   "House Baelish of Harrenhal, House Stark of Winterfell"

# Which SW film has the most characters?
# View(sw_films)
sw_films |>
  set_names(map_chr(sw_films, "title")) |>
  map("characters") |>
  map_int(length) |>
  sort() |>
  rev()
#>    Attack of the Clones     Revenge of the Sith      The Phantom Menace 
#>                      40                      34                      34 
#>      Return of the Jedi              A New Hope The Empire Strikes Back 
#>                      20                      18                      16 
#>       The Force Awakens 
#>                      11
# Attack of the Clones

# Which SW species has the most possible eye colors?
#View(sw_species)
sw_species_named <- sw_species |>
  set_names(map_chr(sw_species, "name"))
sw_species_named |>
  map("eye_colors") |>
  discard(\(x) x == "n/a") |>
  map(\(x) str_split_1(x, pattern = ",\\s*")) |>
  map_int(length) |>
  sort() |>
  rev()
#>          Human        Wookiee        Togruta       Mirialan        Twi'lek 
#>              6              6              6              6              4 
#> Yoda's species      Geonosian        Kel Dor     Tholothian         Zabrak 
#>              3              2              2              2              2 
#>            Dug      Neimodian           Ewok     Trandoshan           Hutt 
#>              2              2              2              2              2 
#>         Rodian         Pau'an        Kaleesh           Muun        Skakoan 
#>              1              1              1              1              1 
#>       Kaminoan       Besalisk       Clawdite       Chagrian       Quermian 
#>              1              1              1              1              1 
#>       Iktotchi       Nautolan         Cerean          Toong          Xexto 
#>              1              1              1              1              1 
#>     Vulptereen         Aleena      Toydarian         Gungan      Sullustan 
#>              1              1              1              1              1 
#>   Mon Calamari 
#>              1
# Human
sw_species_named[["Human"]][["eye_colors"]]
#> [1] "brown, blue, green, hazel, grey, amber"

# Which GoT character has the most allegiances? Aliases? Titles?

# Which GoT character has been played by multiple actors?
got_chars_named |>
  map("playedBy") |>
  keep(\(x) length(x) > 1)
#> $`Eddard Stark`
#> [1] "Sean Bean"       "Sebastian Croft" "Robert Aramayo"

library(tidyverse)
library(gapminder)

countries <- c("Argentina", "Brazil", "Canada")
gap_small <- gapminder |>
  filter(country %in% countries, year > 1996)
gap_small
#> # A tibble: 9 × 6
#>   country   continent  year lifeExp       pop gdpPercap
#>   <fct>     <fct>     <int>   <dbl>     <int>     <dbl>
#> 1 Argentina Americas   1997    73.3  36203463    10967.
#> 2 Argentina Americas   2002    74.3  38331121     8798.
#> 3 Argentina Americas   2007    75.3  40301927    12779.
#> 4 Brazil    Americas   1997    69.4 168546719     7958.
#> 5 Brazil    Americas   2002    71.0 179914212     8131.
#> 6 Brazil    Americas   2007    72.4 190010647     9066.
#> 7 Canada    Americas   1997    78.6  30305843    28955.
#> 8 Canada    Americas   2002    79.8  31902268    33329.
#> 9 Canada    Americas   2007    80.7  33390141    36319.

write_one <- function(x) {
  filename <- paste0(x, ".csv")
  dataset <- filter(gap_small, country == x)
  write_csv(dataset, filename)
}

walk(countries, write_one)
list.files(pattern = "*.csv")
#> [1] "Argentina.csv" "Brazil.csv"    "Canada.csv"

library(tidyverse)

csv_files <- list.files(pattern = "*.csv")
csv_files
#> [1] "Argentina.csv" "Brazil.csv"    "Canada.csv"

csv_files |>
  map(\(x) read_csv(x, show_col_types = FALSE)) |>
  list_rbind()
#> # A tibble: 9 × 6
#>   country   continent  year lifeExp       pop gdpPercap
#>   <chr>     <chr>     <dbl>   <dbl>     <dbl>     <dbl>
#> 1 Argentina Americas   1997    73.3  36203463    10967.
#> 2 Argentina Americas   2002    74.3  38331121     8798.
#> 3 Argentina Americas   2007    75.3  40301927    12779.
#> 4 Brazil    Americas   1997    69.4 168546719     7958.
#> 5 Brazil    Americas   2002    71.0 179914212     8131.
#> 6 Brazil    Americas   2007    72.4 190010647     9066.
#> 7 Canada    Americas   1997    78.6  30305843    28955.
#> 8 Canada    Americas   2002    79.8  31902268    33329.
#> 9 Canada    Americas   2007    80.7  33390141    36319.
```
