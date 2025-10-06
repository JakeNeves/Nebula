/// @description
/// Gets the objects X and Y values and attempts to normalize it.
function normalize() {
    var _value = 1.0 / sqrt((x * x) + (y * y));
    x *= _value;
    y *= _value;
}

function text_align(_halign = fa_left, _valign = fa_middle) {
    draw_set_halign(_halign);
    draw_set_valign(_valign);
}

function is_between(_value, _min, _max) {
    return _value >= _min && _value <= _max;
}