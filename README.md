# Go Fish
This is a command-line version of the [Go Fish card game](https://en.wikipedia.org/wiki/Go_Fish) written in [Ruby 2.3.3](http://ruby-doc.org/core-2.3.3/).

## How to Install
Clone or download this repo to your computer and run `bundle install`. This requires be able to use [bundler](http://bundler.io/).

## Approach
This game consists of 6 classes of object:

* Card - which has a face value, suit, and rank if applicable
* Deck - contains 52 cards of value 1-13 in four suits; from which cards are dealt.
* Hand - a small, unique subset of cards; adding cards to the hand may result in 'books' being made.
* Book - four cards of the same face value (i.e. the cards of a given face value across all four suits).
* Player - requests cards from other players to try and make books (includes the user player)
* Game - governs player interactions.

This application was TDD'd with [RSpec](http://rspec.info/).

### Non-player characters

## Getting Started
Run `go-fish` in the directory you cloned or downloaded this repo to. You will be prompted to enter your name. Do so, and then you will be asked how many people you want to play with. When you enter a number, the game begins. Looking at your hand, choose a value for which you'd like to try to make a book. Choose another player and ask them for their cards.

## How to Play
The aim of the gaim is to make 'books'. A book is a set of four cards with the same face value i.e. all the cards of a given number, across all the suits. Then:

> The player whose turn it is to play asks another player for his or her cards of a particular face value. For example Alice may ask, "Bob, do you have any threes?" Alice must have at least one card of the rank she requested. Bob must hand over all cards of that rank if possible. If he has none, Bob tells Alice to "go fish" (or simply "fish"), and Alice draws a card from the pool and places it in her own hand. Then it is the next player's turn – unless the card Alice drew is the card she asked for, in which case she shows it to the other players, and she gets another turn. When any player at any time has all four cards of one face value, it forms a book, and the cards must be placed face up in front of that player. (source: [wiki](https://en.wikipedia.org/wiki/Go_Fish#The_game))

If the player whose turn it is receives cards from another player, they make make another request for cards. The winner of the game is the player with the most books.

## Authors
* [Oscar Barlow](https://github.com/oscar-barlow)

## Contributing
Please feel free to fork this repo and submit a pull request with changes. Thanks in advance!
