/// @description
/// Gets the objects X and Y values and attempts to normalize it.
function normalize() {
    var _value = 1.0 / sqrt((x * x) + (y * y));
    x *= _value;
    y *= _value;
}