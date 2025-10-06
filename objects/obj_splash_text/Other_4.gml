if (current_day == 1 && current_month == 1)
    splash = "Happy New Year!";
else if (current_day == 23 && current_month == 3)
    splash = "Happy birthday Jake!";
else if (current_day == 1 && current_month == 7)
    splash = "Happy Canada Day!";
else if (current_day == 15 && current_month == 8)
    splash = "Happy Acadia Day!";
else if (current_day == 13 && current_month == 10)
    splash = "Happy Thanksgiving!";
else if (current_day == 31 && current_month == 10)
    splash = "Trick or Treat!";
else if (current_day == 24 || current_day == 25 && current_month == 12)
    splash = "Merry Christmas!";
else
    splash = random_range(array_first(splashes), array_last(splashes));