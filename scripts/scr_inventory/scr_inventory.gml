// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory() constructor {
    _inv_item = [];
    
    set_item = function(_id, _amount, _sprite) {
        array_push(_inv_item, { 
            name: _id,
            amount: _amount,
            sprite: _sprite
        });
    }
    
    find_item = function(_id) {
        for (var _i = 0; _i < array_length(_inv_item); _i++) {
            if (_id == _inv_item[_i].name) 
                return _i;
        }
        
        return -1;
    }
    
    add_item = function(_id, _amount, _sprite) {
        var _index = find_item(_id);
        
        if (_index >= 0)
            _inv_item[_index].amount += _amount;
        else
            set_item(_id, _amount, _sprite);
    }
    
    has_item = function(_id, _amount) {
        var _index = find_item(_id);
        
        if (_index >= 0)
            return _inv_item[_index].amount >= _amount;
        
        return false;
    }
    
    subtract_item = function(_id, _amount) {
        var _index = find_item(_id);
        
        if (_index >= 0) {
            if (has_item(_id, _amount)) {
                _inv_item[_index].amount -= _amount;
                
                if (_inv_item[_index].amount <= 0) {
                    remove_item(_index);
                }
            }
        }
    }
    
    remove_item = function(_index) {
        array_delete(_inv_item, _index, 1);
    }
    
    get_item = function() {
        return _inv_item;
    }
    
    to_string = function() {
        return json_stringify(_inv_item);
    }
}