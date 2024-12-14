# The Shadow That Follows #

## Summary ##

**The Shadow That Follows is a 2-D horror game that has players navigate through a dark, trap-filled maze while avoiding a deadly monster. Prepare yourself for a suspenseful, immersive experience where players feel the tension of survival as they search for the maze’s exit. Set in a decrepit maze shrouded in darkness, the game’s narrative centers on an unknown protagonist trapped in a nightmare. The player must uncover the maze’s paths while evading a shadowy horror and surviving its deadly traps. The user experience focuses on atmospheric horror, with dim lighting, eerie sound effects, and unpredictable dangers heightening the suspense. The player will explore increasingly challenging mazes, relying on strategy, memory, and reflexes to overcome obstacles.**

## Project Resources

[The Shadow That Follows on itch.io](https://keanu-c.itch.io/the-shadow-that-follows)  
[Trailor](https://youtube.com)  
[Press Kit](https://dopresskit.com/)  
[Proposal: make your own copy of the linked doc.](https://docs.google.com/document/d/1qwWCpMwKJGOLQ-rRJt8G8zisCa2XHFhv6zSWars0eWM/edit?usp=sharing)  

## Gameplay Explanation ##

**2-D Horror game where your goal is to escape the mental facility. The exit at every level is covered in blood for easier recognition of the escape. You must avoid the deadly spikes, the shadow grim reaper, and escape the level in time or you die. The game always restarts at level 1, so make sure to memorize the escapes of previous levels to help alleviate the anger that is going through levels again.**

*Control Scheme:*

**WASD or Arrows Keys: Up, Down, Left Right**

**Spacebar: Dash Movement**

**Add it here if you did work that should be factored into your grade but does not fit easily into the proscribed roles! Please include links to resources and descriptions of game-related material that does not fit into roles here.**

# External Code, Ideas, and Structure #

If your project contains code that: 1) your team did not write, and 2) does not fit cleanly into a role, please document it in this section. Please include the author of the code, where to find the code, and note which scripts, folders, or other files that comprise the external contribution. Additionally, include the license for the external code that permits you to use it. You do not need to include the license for code provided by the instruction team.

If you used tutorials or other intellectual guidance to create aspects of your project, include reference to that information as well.

[Helped me (Keanu Chau) write the code for typing text effect](https://www.youtube.com/watch?v=WVGAErOd3Z0&t=377s)

# Main Roles #

Your goal is to relate the work of your role and sub-role in terms of the content of the course. Please look at the role sections below for specific instructions for each role.

Below is a template for you to highlight items of your work. These provide the evidence needed for your work to be evaluated. Try to have at least four such descriptions. They will be assessed on the quality of the underlying system and how they are linked to course content. 

*Short Description* - Long description of your work item that includes how it is relevant to topics discussed in class. [link to evidence in your repository](https://github.com/dr-jam/ECS189L/edit/project-description/ProjectDocumentTemplate.md)

Here is an example:  
*Procedural Terrain* - The game's background consists of procedurally generated terrain produced with Perlin noise. The game can modify this terrain at run-time via a call to its script methods. The intent is to allow the player to modify the terrain. This system is based on the component design pattern and the procedural content generation portions of the course. [The PCG terrain generation script](https://github.com/dr-jam/CameraControlExercise/blob/513b927e87fc686fe627bf7d4ff6ff841cf34e9f/Obscura/Assets/Scripts/TerrainGenerator.cs#L6).

You should replay any **bold text** with your relevant information. Liberally use the template when necessary and appropriate.

## Producer

**Describe the steps you took in your role as producer. Typical items include group scheduling mechanisms, links to meeting notes, descriptions of team logistics problems with their resolution, project organization tools (e.g., timelines, dependency/task tracking, Gantt charts, etc.), and repository management methodology.**

## User Interface and Input

**Describe your user interface and how it relates to gameplay. This can be done via the template.**
**Describe the default input configuration.**

**Add an entry for each platform or input style your project supports.**

## Movement/Physics [ Ethan Nguyen ]

I made several adjustments and additions to the movement and physics mechanics to match the horror-themed atmosphere:

- **Player Movement Input Map**: I added a player input map for movement, providing more control and flexibility over how the player can move through the game environment.
  
- **Player Physics Movement Mechanic**: I implemented a custom physics movement system for the player, which causes the player to move slowly, enhancing the horror element of the game by making the player feel vulnerable and deliberate in their actions.

- **Dash Mechanic**: I introduced a dash mechanic, activated by the "spacebar" input. This allows the player to quickly cover short distances, adding a sense of urgency when trying to escape from threats.

- **Boss Movements**: I implemented boss movements where the boss constantly pursues the player, creating a feeling of tension and danger.

- **Adjusted Boss Speed**: I adjusted the boss's movement speed so it accelerates when it's farther away from the player and slows down when it's closer. This creates a more dynamic and challenging encounter as the player tries to avoid being caught.

These changes aim to enhance the game's atmosphere and create a more engaging experience for the player, where movement plays a critical role in the tension and gameplay.

## Animation and Visuals

**List your assets, including their sources and licenses.**

**Describe how your work intersects with game feel, graphic design, and world-building. Include your visual style guide if one exists.**

## Game Logic

**Document the game states and game data you managed and the design patterns you used to complete your task.**

# Sub-Roles

## Audio

**List your assets, including their sources and licenses.**

**Describe the implementation of your audio system.**

**Document the sound style.** 

## Gameplay Testing

**Add a link to the full results of your gameplay tests.**

**Summarize the key findings from your gameplay tests.**

## Narrative Design

**Document how the narrative is present in the game via assets, gameplay systems, and gameplay.** 

## Press Kit and Trailer [ Ethan Nguyen ]

- **[Watch the Official Game Trailer](https://drive.google.com/file/d/1AhtO4uz6NmKRa44NaspjD5EEgT1YOxGc/view?usp=sharing)**  
  Immerse yourself in the eerie atmosphere of *The Shadow That Follows* with our cinematic trailer

- **[Explore the Press Kit](https://andrew-fojas.github.io/The-Shadow-That-Follows/)**  
  Dive into development insight


## Game Feel and Polish

**Document what you added to and how you tweaked your game to improve its game feel.**
