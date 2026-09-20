# WarioWare Mini-Game Collection (Godot 4)

A fast-paced, arcade-style WarioWare game built in Godot. The project features two mini-games, custom UI menus, and an victory and a Game Over screen.

Game Features

* Multi-Game Mechanics:
  * Garlic Collector (Platformer): Control the player to navigate the stage and collect 3 garlic items within a strict timeframe.
  * Godot Icon Clicker (Clicker): Click on 4 garlic buttons within 5 seconds before time runs out.
* Persistent State Management:
  * Uses a global singletons system (Global.gd) to maintain state across scene transitions (Global.lives and Global.minigames_done).
* Complete Flow and UI:
  * Main Title Screen with game selection and exit logic.
  * Intermediate Timer Screen that routes between mini-games.
  * Custom Victory (done_screen.tscn) and Game Over (deathscreen.tscn) screens with complete reset options.

---

Project Structure
res
 Scenes
	  deathscreen.tscn       # Game Over UI
	  done_screen.tscn        # Victory UI
	  timer_screen.tscn       # Timer
 minigame_1.tscn             # Platformer mini-game (Heart Collector)
 minigame_2.tscn             # Clicker mini-game (Godot icon Clicker)
 title_screen.tscn            # Title screen & main menu
 player.tscn                  # Player node assembly
 Global.gd                    
 title_screen.gd              # Title menu button routing
 minigame_1.gd                # Script for Heart Collector Minigame
 minigame_2.gd                # Script for Godot Icon Clicker Minigame 
 README.md

How to play :- 
Open your Browser and just enter this link into the search bar https://momentum122.itch.io/mrotat and click run game 
then wait for some time and the game should start automatically.
OR
i) Open itch.io
ii) Search Mrotat 
iii) click on the first game that apears with its creator being momentum122
iv) Click on run game button and then wait for some time and the game should start automatically.
How to play each minigame:- 
For Heart Collector minigame :- 
i) When the Game starts a menu screen should open up.
ii) Click on "Start Game 
              Mingame 1
           collect Garlics"
iii) Now the game should open up.
iv) Now you have only 12 seconds to complete it .
v) To complete it collect all the three hearts within 12 seconds .
Vi) If you manage to do it Victory Screen will open up.
vii) If you don't Game Over Screen will open up.
Viii) From both the ending you can go back to the Main menu.
How to move :-
To move you just have to use the arrows on your keyboard right to move right , left to move left 
And to jump press spacebar (there is no double jump).

For Godot Icon Clicker :-

i) Click on "Start Game 
              Mingame 2
           Click Buttons"
ii) The Game should open up.
iii) To complete it click all the 4 button within 5 seconds .
iv) If you manage to do it Victory Screen will open up.
v) If you don't Game Over Screen will open up.
Vi) From both the ending you can go back to the Main menu


Acknowledsgements :- 
i) Usage of Ai for Debugging / understanding features of GODOT
ii) All images / resources are not owned by me . 
iii) Not my idea .
iv) Created with the guidance of stardance.hacklub.com

If you want removal of any object(s) owned by you please contact me on my Gmail given below.

CONTACT INFO :- 
mandeepswami2010@gmail.com

Suggestions / Issues / Complaint(s) are accepted and appreciated for the betterment of the game.

If you find any bugs please contact me .
