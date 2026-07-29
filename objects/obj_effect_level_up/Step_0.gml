image_alpha -= 0.02;

effect_falloff += 0.1;
y += effect_falloff;

if (image_alpha <= 0)
    instance_destroy();