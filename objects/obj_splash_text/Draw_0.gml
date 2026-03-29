if (current_day == 1 && current_month == 1)
    draw_splash_text("Happy New Year!");
else if (current_day == 23 && current_month == 3)
    draw_splash_text("Happy Birthday Jake!");
else if (current_day == 29 && current_month == 5)
    draw_splash_text("Happy Birthday Lamb B'lamb!");
else if (current_day == 1 && current_month == 7)
    draw_splash_text("Happy Canada Day!");
else if (current_day == 15 && current_month == 8)
    draw_splash_text("Happy Acadia Day!");
else if (current_day == 30 && current_month == 9)
    draw_splash_text("Every Child Matters...");
else if (current_day == 31 && current_month == 10)
    draw_splash_text("Trick or Treat!");
else if (current_day == 11 && current_month == 5)
    draw_splash_text("Happy Birthday Jaer!");
else if (current_day == 11 && current_month == 11)
    draw_splash_text("Lest we Forget...");
else if ((current_day == 24 || current_day == 25) && current_month == 12)
    draw_splash_text("Merry Christmas!");
else
    draw_splash_text(cur_splash);