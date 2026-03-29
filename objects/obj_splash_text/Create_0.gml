splashes = [
    "Nebula",
    "Made by Jake Neves",
    "Powered by GameMaker",
    "Also try Cave Story!",
    "Also try Deltarune!",
    "Also try Geometry Dash!",
    "Also try I Wanna Be The Guy!",
    "Also try Minecraft!",
    "Also try Terraria!",
    "Also try The Binding of Isaac!",
    "Also try Undertale!",
    "Also try VVVVVV!",
    "Smexy!",
    "Canada Forever!",
    "What is a kilometer?",
    "Shoutouts to Edmund McMillen",
    "Shoutouts to the Community",
    "Shoutouts to Toby Fox",
    "Indie!",
    "Now more illogical than ever!",
    "From the streets of Canada...",
    "It's Free!",
    "Hi I'm Jake, nice to meet ya!",
    "A Secret has been Revealed!",
    "Anime is real!",
    "Oh oh oh hi there!",
    "It goes \"Ding Dong\" on the door I open on you!",
    "Will send you straight back to detention!"
]

function draw_splash_text(_text) {
    draw_text_transformed_color(x + 2, y + 2, _text, 1.5, 1.5, 5, c_teal, c_teal, c_teal, c_teal, 1);
    draw_text_transformed_color(x, y, _text, 1.5, 1.5, 5, c_aqua, c_aqua, c_aqua, c_aqua, 1);
}

cur_splash = array_get(splashes, random_range(0, array_length(splashes)));