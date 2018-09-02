Create test_helper with simplecov

Create Rakefile

Theres a board for each player
There are spaces on the board
    4x4 16 spaces
There are valid spaces on the board.
There are players. Computer and User.
Each player has two ships. One is 2 length, the other is 3 length. They are defined by their length.
Each player can place their ships on their board.
    there are spots that ships cannot be placed. They have to be placed vertical or horizontal and the occupied spaces need to be adjacent for each ship. i.e. the ship cannot be placed on the edge of the board and wrap around.
Each player can shoot at the other player's board
    The player shoots first and then the game alternates between player and computer.
They either hit a ship or miss a ship and given feedback
Each shot location is recorded on the board
    if the player tries to guess the same spot twice, they are prompted to make another guess
    After each turn the boards are shown with M or H added.
Once an entire ship is hit, it sinks and the player gets feedback that they sunk a ship. This can be determined by length -=1 each time it's hit and when length == 0, ship is sunk
Once both ships are sunk for a player, the game is over, feedback is given and the game loop ends.
