# The Shadow That Follows #

## Summary ##

**The Shadow That Follows is a 2-D horror game that has players navigate through a dark, trap-filled maze while avoiding a deadly monster. Prepare yourself for a suspenseful, immersive experience where players feel the tension of survival as they search for the maze’s exit. Set in a decrepit maze shrouded in darkness, the game’s narrative centers on an unknown protagonist trapped in a nightmare. The player must uncover the maze’s paths while evading a shadowy horror and surviving its deadly traps. The user experience focuses on atmospheric horror, with dim lighting, eerie sound effects, and unpredictable dangers heightening the suspense. The player will explore increasingly challenging mazes, relying on strategy, memory, and reflexes to overcome obstacles.**

## Project Resources

[The Shadow That Follows on itch.io](https://keanu-c.itch.io/the-shadow-that-follows)  
[Trailor](https://drive.google.com/file/d/1AhtO4uz6NmKRa44NaspjD5EEgT1YOxGc/view?usp=sharing)  
[Press Kit](https://andrew-fojas.github.io/The-Shadow-That-Follows/)  
[Proposal: The Shadow That Follows: Initial Plan.](https://docs.google.com/document/d/1_s2GGPkNTNx4cO-fwIupkpcOfQshuwqgIplpRGbJLsY/edit?usp=sharing)  

## Gameplay Explanation ##

**2-D Horror game where your goal is to escape the mental facility. The exit at every level is covered in blood for easier recognition of the escape. You must avoid the deadly spikes, the shadow grim reaper, and escape the level in time or you die. The game always restarts at level 1, so make sure to memorize the escapes of previous levels to help alleviate the anger that is going through levels again.**

*Control Scheme:*

**WASD or Arrows Keys: Up, Down, Left Right**

**Spacebar: Dash Movement**



## Ethan Nguyen
*  Boss Animations and Sprites**: I added animations and sprites for the boss from our selection, helping to bring the boss to life and make encounters more dynamic and engaging.

*  Player Animations**: I successfully implemented them into the player’s movement system, altough I did not find the assests for it.

*  Boss Attack Mechanics**: I implemented the boss attack mechanics, where the boss triggers an attack animation when getting close to the player. When it gets even closer, the boss physically attacks the player, adding a sense of danger and urgency during encounters.

*  GitHub Conflict Assistance**: I helped resolve several GitHub conflicts this included merging branches and fixing issues that arose when multiple team members were working on the same files.

*  Added Camera Mechanics**: I implemented the focus point camera logic that was inspired from execise 2. This gave the game a more eerie feeling. 

## Keanu Chau
*   Moved scenes/nodes that weren't in the player scene and moved them to the player scene so the project was more organized with less scenes/nodes.
  
*   Changed player camera view to widen view and improve game feel.

*   Added more spike traps to all levels.

*   Changed boss collision mask so that it could pass thorough borders and not get stuck.

## Andrew Fojas
[Heart Sprite](https://gpway.itch.io/2d-pixel-heart?download#google_vignette)

[Torch Sprite](https://gianmansuper.itch.io/pixel-torches)

[Spike Hit Audio (used a machete sound)](https://terrorbytegames.itch.io/zombie-massacre-sound-effects-starter-pack)

[Torch Burning Audio](https://gregor-quendel.itch.io/free-cinematic-sound-effects)

[Dash Audio](https://onstringedge.itch.io/slides-sound-assets-for-games-and-films)

# External Code, Ideas, and Structure #

[Helped me (Keanu Chau) write the code for typing text effect](https://www.youtube.com/watch?v=WVGAErOd3Z0&t=377s)

[How to implement enemy attacks (Ethan Nguyen)](https://www.youtube.com/watch?v=9u59U-DWNJs)

[Helped me (Andrew Fojas) add the music/sound effects. Also helped with busses and audio manipulation. Part 1](https://www.youtube.com/watch?v=ANUBrcw8ONI)

[Helped me (Andrew Fojas) add the music/sound effects. Part 2](https://www.youtube.com/watch?v=N6-2Iwb8xoU)

[Helped me (Andrew Fojas) add the health mechanic and UI to display health](https://www.youtube.com/watch?v=kBzV7vgdQfU)

[(Andrew Fojas) Found the video that other team members used to create map boundaries](https://www.youtube.com/watch?v=GiZuWjXmvcc)

# Main Role Documentation #

## Producer : Andrew Fojas

*Main Platform Creation* - I created a discord server to serve as our main platform for all things related to the server. I set up important channels such as role-related channels, meeting details, documents/assets, and announcements. (Everyone was notified beforehand that class faculty may join to see this server as documentation) [Discord Server Invite](https://discord.gg/v8PDcrHbmF)

*Task Dependency Chart* - I created a Dependency Chart of important tasks for everyone to look at to see big-picture what we needed to get done in the time we had for the project. [Dependency Chart in Github](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/main/ProducerMaterials/Task_Flowchart.jpg)

*Team Logistics and Task Reassignment* - I assisted in resolving git conflicts and push/pulling from github when members requested help (I did moreso in person but was able to assist online via discord as well). I took over certain tasks of other roles when they asked for assistance. If I felt I did not have the resources/time to be able to immediately help someone, I coordinated efforts in our group to get other teammates to help [Logistics and Support Examples](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/tree/main/ProducerMaterials/TaskAssistance)

*Meeting Scheduling and Notes* - I scheduled meetings in order to keep us on track with our group project. I also created meeting notes for the first few meetings because I felt they were helpful. I also organized meetings for important events like the Progress Report. Further detailed correspondence about meetings can be found in the meetings and general channels on our discord server. [GitHub Meeting Screenshots](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/tree/main/ProducerMaterials/MeetingDocumentation)


Below are the detailed implementation tasks I completed:


*Torch and Reduced Field of View* - I implemented the small circular field of view with a point light node (circle of what you can see) and a canvasmodulate node (the black space) to increase the tension and horror the player experiences in game. Furthermore, I added the torch mechanic that increases the field of view. I also added the animation and found the sprite for the torch. [Field of View Widening in Player Script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/817211ea36fba4ea056e9399cdf4d92c187469ba/the-shadow-that-follows/scripts/player.gd#L67)

*Torch Audio* - I implemented the torch's audio. I made it so that the burning noise gets gradually quieter as you go away from the torch and get louder as you get closer to it. I lerp'ed the audio and took inspiration from the Exercise 3 implementaiton of the lerp camera to get a similar 
"smoothing" effect, but in a different context. [Torch Audio Script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/817211ea36fba4ea056e9399cdf4d92c187469ba/the-shadow-that-follows/scripts/torch.gd#L27)

*Ambient Music Audio* - I implemented the ambient music that plays in each menu and game level. [Menu Music Script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/ec9d7f56cda6702a77606b46f39726755344b745/the-shadow-that-follows/scripts/menu_screen.gd#L9), [Level Music Script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/ec9d7f56cda6702a77606b46f39726755344b745/the-shadow-that-follows/scripts/level.gd#L8)

*Added Player Dash Animation + Hurt Animation* - I implemented the player's dash animation in all directions and hurt animation by adding a custom sprite sequence based on the player sprite sheets. [Player Scene](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/main/the-shadow-that-follows/scenes/player.tscn)

*Various Sound Effect Elements* - I implemented the other audio elements which include the dash audio, spike hit audio, and the footsteps audio. I lumped all of these together because they are all implemented to play when their associated actions (dashing, hitting a spike, and walking respectively) are triggered [Dashing](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/817211ea36fba4ea056e9399cdf4d92c187469ba/the-shadow-that-follows/scripts/player.gd#L83), [Spike](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/817211ea36fba4ea056e9399cdf4d92c187469ba/the-shadow-that-follows/scripts/spike_trap.gd#L15), [Walking](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/817211ea36fba4ea056e9399cdf4d92c187469ba/the-shadow-that-follows/scripts/player.gd#L120) 

*Health & Health UI* - I created and implemented the health logic and UI to display the hearts. To update the health, I took inspiration from the signals in exercise 3 which played various audios in the sound node from other nodes. Instead of using a signal, I just used a boolean variable in player that other nodes can raise to damage the player. I created a player [Damage Logic + UI Health implementation in Player Script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/ec9d7f56cda6702a77606b46f39726755344b745/the-shadow-that-follows/scripts/player.gd#L44)

## User Interface and Input: Keanu Chau

*   I created the start_screen, game_over_screen, victory_screen, and story_screen (shows the narrative). The menu screens (start_screen, game_over_screen, victory_screen) where all very simple. I added a background for all of them and buttons (Start Game, Quit Game, Play Again). A [script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/3e6217138df0e2ac3d0204ed86099e23a022cc40/the-shadow-that-follows/scripts/menu_screen.gd#L1) is reused for the menu screens that dictate the transitions for the button presses and also the audio when hovering a button. I used the Inspector for all the stylisitc elements as that was the easiest method.

*   For the story_screen, I first created my narrative for all 3 levels. Then I created the scene using a simple background and a label to show the narrative. At first, I had created a script where I could test the transitions between the 3 different narratives and levels so it could correctly show the right narrative. The [script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/60379c706368ea5fb2c54ae11fbad38c90fff96a/the-shadow-that-follows/scripts/story_screen.gd#L1) is largely unchanged except some made by Alex Do to help with the transitions of all different scenes. For the typing text effect, I searched for a [YouTube video](https://www.youtube.com/watch?v=WVGAErOd3Z0&t=377s) that helped me implement it. I made it so that you could also press the spacebar to skip the narrative (since it can become annoying, especially after dying). I also added the audio for the typing text (it stops early in the itch.io version for some reason).

*   I also added the timer for time pressure while playing each level. At first, I attached it directly to the player's camera but then realized that the CanvasModulate of each level makes the timer invisible since it darkens the whole view. So, I added a CanvasLayer to the Player and then attached the TimerLabel to that so it could always be visible. The [script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/60379c706368ea5fb2c54ae11fbad38c90fff96a/the-shadow-that-follows/scripts/timer.gd#L1) for the Timer was not hard, as it just counted down the time. I did use ChatGPT to help me [format the time](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/60379c706368ea5fb2c54ae11fbad38c90fff96a/the-shadow-that-follows/scripts/timer.gd#L37).

*   For the dash_bar for the dash movement of the player, I used a ProgressBar inside a Node with a [script](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/60379c706368ea5fb2c54ae11fbad38c90fff96a/the-shadow-that-follows/scripts/dash_bar.gd#L1). Creating the [stylistic](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/blob/60379c706368ea5fb2c54ae11fbad38c90fff96a/the-shadow-that-follows/scripts/dash_bar.gd#L17) part of the bar in code was hard, but after that, I got the cooldown_timer from the player script made by Ethan Nguyen to update the ProgressBar.

*   As input in this game is very simple, Ethan Nguyen mainly implemented the movement and WASD + Arrow keys for it. The spacebar for dash movement and skipping narratives was choice we both made.

## Movement/Physics [ Ethan Nguyen ]

I made several adjustments and additions to the movement and physics mechanics to match the horror-themed atmosphere:

- **Player Movement Input Map**: I added a player input map for movement, providing more control and flexibility over how the player can move through the game environment.
  
- **Player Physics Movement Mechanic**: I implemented a custom physics movement system for the player, which causes the player to move slowly, enhancing the horror element of the game by making the player feel vulnerable and deliberate in their actions.

- **Dash Mechanic**: I introduced a dash mechanic, activated by the "spacebar" input. This allows the player to quickly cover short distances, adding a sense of urgency when trying to escape from threats.

- **Boss Movements**: I implemented boss movements where the boss constantly pursues the player, creating a feeling of tension and danger. This was inspired from excerise 1, where we implemented a follower logic gdscript. 

- **Adjusted Boss Speed**: I adjusted the boss's movement speed so it accelerates when it's farther away from the player and slows down when it's closer. This creates a more dynamic and challenging encounter as the player tries to avoid being caught.


## Animation and Visuals [Jhaydine Bandola]

[Assets Documentation](https://docs.google.com/document/d/1otKVwYftvXHWFM8JcBoXQ_-a_BPwbSfA9dLRCxMegZI/edit?usp=sharing)

Game Feel:
- The assets that were chosen, such as the reaper sprite, spike traps, and blood effects, contribute to the horror atmosphere of the game, emphasizing on an eerie and unsettling environment. Vibrant-colored hazards such as spikes and reaper provide instant feedback to players about danger, creating a sense of urgency and reinforcing the horror atmosphere. Other vibrant objects such as the torch, indicate saftey and comfortability to the player, affirming that they are headed in the right direction. Additionally, the smooth animations of traps and the reaper’s movement contribute to the gameplay's fluidity and immersiveness.

Graphic Design:
- The use of monotone colors for the overall map creates a sense of unease and unfamiliarity, while the choice of vibrant assets symbolizes danger. Levels progress in difficulty, with level one's exit being a room away and having level three's exit be completely across the map. The design of the levels are to support the narrative. Level one's layout is similar to a family home while the layout for level three be more maze-like and difficult to navigate with dead-ends, traps and empty rooms. 

World-Building:
- Along with the use of a montone color pallate for the tilemap, the levels and decoration contribute to the narrative. The first two levels contain much more decoration and furniture fit for a home, such as bedrooms, a living room, kitchen, etc. However, as we reach the third level, the overall layout becomes more dull and lifeless. This shift reflects the player's descent into psychological warfare, transitioning from a place of comfort and familiarity to an unsettling, unknown environment.

## Game Logic [Alex Do]

**Document the game states and game data you managed and the design patterns you used to complete your task.**

- Developed the original game’s purpose, goals, and mechanics. This includes planning how the player navigates through a horror maze and escapes a mental facility while avoiding traps and a monster. I outlined the game flow (e.g., main screen → narrative → levels → victory/game-over screens) and set rules like losing hearts to traps or dying instantly from the monster.

- After determining the logic for how players interact with borders, traps, obstacles, and the monster, I implemented event triggers to ensure smooth transitions and progression throughout the game. For example, reaching an exit zone transitions players to the next narrative cutscene, followed by the next level.

- I shared the game logic with my group, and we collaborated to refine it, ensuring we all agreed. We came to the consensus of including a black border for limited visibility, interactive items like a torch, a dash ability, and a timer for increased difficulty. These adjustments finalized the gameplay foundation.

- To implement the transitions, I created an Area2D exit zone and attached a transition_zone.gd script that triggered level progression. To resolve level reset issues, I developed a global gamedata.gd script to track progress and ensure reliable transitions to game-over states when players failed.

# Sub-Roles

## Audio [Jhaydine Bandola]

[Audio Documentation](https://docs.google.com/document/d/1J7bbUfTyEgmoXEvW6jzqZpvXVqfVm7_sP1kDuVk_PDA/edit?usp=sharing)

- The audio system was designed to immerse players into an unsettling atmosphere and enhance the emotional tone of the game. The main menu music includes tones of somber and mystery, to slowly ease the player into our horror atmosphere. In-game audio creates tension and anticipation throughout the levels, adding onto the horror atmosphere

- There are pecific in-game events  that trigger sound effects:
    - Example: When the Reaper attacks, the Sword Swing Attack sound effect plays, synced to the animation.
    - Example: Reaper creepily laughs randomly through the game and levels.

-  For enhanced realism, I added sound effects like footsteps, and other members of the group added sound effects to our in-game objects such as the torch, spikes and typing.


**List your assets, including their sources and licenses.**

**Describe the implementation of your audio system.**

**Document the sound style.** 

## Gameplay Testing - Andrew Fojas

Had all team members besides Ethan get 2 playtests, and I did four of them. Ethan was exempt so that he could fully devote himself to press kit and trailer post game completion.

[Playtest Forms + Report](https://github.com/Andrew-Fojas/The-Shadow-That-Follows/tree/main/ProducerMaterials/PlayTestDocuments)


Significant findings:

* Dash Mechanic Seen as Fun - Nearly every playtester mentioned enjoying the dash mechanic and highlighted how it created exciting moments when escaping the reaper. However, many players didn't know they could dash initially.
* Timer UI - This was the most consistently cited UI issue across all playtests. Players repeatedly mentioned wanting to see the timer clearly especially cause it's a core game mechanic. We have since fixed this.
* Level 3 - The third level was very important in player experience. However, it had mixed reception: some players found it appropriately challenging, but others felt it dragged on too long. 
* Controls Need Introduction - Multiple playtesters had to be told the controls or discovered them through chance. Even our experienced gamers struggled with discovering the dash mechanic. A simple control display or brief message about controls could significantly improve the initial player experience.
* Horror/Thriller Elements Recieved Positively - The game successfully creates tension and fear as intended. Players reported being scared when the reaper appeared suddenly. The audio/visual components received positive feedback. The horror aspect is delivered on, even if players eventually are more focused on the challenge of the game rather than the aesthetic.

## Narrative Design: Keanu Chau

*   For my narratives, I had freedom to create a story however I wanted. I wanted to create a traumatic feeling, as I felt that was best for the experience of our game. i decided that the player would be a mentally ill individual that has been admitted to a mental facility. Now, the character feels the presence of it's trauma (shadow) again. The narrative also scales up in scariness as the levels get harder and harder. I tried to add as many scary adjectives as possible and I'm happy with the result of the narrative. All of the narrative aspects of the game are in the story_screens in between levels, as i thought that any narrative while playing the level would distract from that eerie feeling that one gets.

## Press Kit and Trailer [ Ethan Nguyen ]

- **Recording and Editing Clips**: I recorded clips from our finished game and imported them into CapCut for editing. I carefully selected gameplay footage to represent the most exciting and engaging parts of the game.

- **Trailer Creation**: I adjusted the clips and added transitions to fit a trailor theme, ensuring the video had a dynamic and exciting flow. I made sure the transitions highlighted key moments in the game, such as interactions with objects, player movement, and boss encounters.

- **Game Representation**: I ensured that the trailer clips accurately represented the core gameplay, showing off the player's movement, boss behavior, and interactive objects. This helps to convey the unique experience our game offers.

- **Press Kit Website**: I created a press kit website using GitHub Pages. The website redirects to all relevant game materials, providing easy access.

- **HTML Page for Game Description**: I designed an HTML page that offers a detailed description of our game, its concept, and the inspiration behind it. The page also includes images that showcase our progress.

- **[Watch the Official Game Trailer](https://drive.google.com/file/d/1AhtO4uz6NmKRa44NaspjD5EEgT1YOxGc/view?usp=sharing)**  
  *The Shadow That Follows* cinematic trailer

- **[Explore the Press Kit](https://andrew-fojas.github.io/The-Shadow-That-Follows/)**  
  Dive into development insight


## Game Feel and Polish [Alex Do]

**Document what you added to and how you tweaked your game to improve its game feel.**
- During development, I tested the game a lot to ensure that everything was smooth, which includes making sure that the transitions, player interactions, and monster behavior are functioning correctly. I made sure to collaborate with the team with any identified issues and resolved them, minimizing the amount of glitches and improving the overall experience.

- To enhance the horror atmosphere, I asked volunteers to playtest the game and provided feedback, based on their reactions or verbal interactions. I focused on whether players felt tense and immersed in the eerie environment. Based on their input, I identified ways to improve, such as adding audio effects to increase spookiness, and worked with the team to implement these adjustments.


