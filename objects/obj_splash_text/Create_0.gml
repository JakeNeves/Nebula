splashes = [
    "Nebula",
    "Made by Jake Neves",
    "Powered by GameMaker",
    "Also try Cave Story!",
    "Also try Deltarune!",
    "Also try Geometry Dash!",
    "Also try I Wanna Be The Guy!",
    "Also try Mewgenics!",
    "Also try Minecraft!",
    "Also try Terraria!",
    "Also try The Binding of Isaac!",
    "Also try Undertale!",
    "Also try VVVVVV!",
    "Smexy!",
    "What is a kilometer?",
    "Shoutouts to Edmund McMillen",
    "Shoutouts to the Community",
    "Shoutouts to Toby Fox",
    "Indie!",
    "Now more illogical than ever!",
    "From the streets of Canada...",
    "It's Free!",
    "A Secret has been Revealed!",
    "Anime is real!",
    "Here's your tip, abandon ship!",
    "capussi",
    "Free DLC Game...",
    "What's a United States?"
]

function draw_splash_text(_text) {
    draw_text_transformed_color(x + 2, y + 2, _text, 1.5, 1.5, 0, c_purple, c_purple, c_purple, c_purple, 1);
    draw_text_transformed_color(x, y, _text, 1.5, 1.5, 0, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 1);
}

cur_splash = array_get(splashes, random_range(0, array_length(splashes)));