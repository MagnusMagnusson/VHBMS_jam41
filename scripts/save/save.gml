function load(file){
	// ensure that value to be saved is actually a progress compared to existing metadata
    var existing_buffer = buffer_load(file);
    if (existing_buffer != -1) {
        var json = buffer_read(existing_buffer, buffer_string);
        buffer_delete(existing_buffer)
        return json_parse(json);
    } else{
		return false;
	}
}

function save(file, options){
	var json = json_stringify(options);
	var buffer = buffer_create(1, buffer_grow, 1);
    buffer_write(buffer, buffer_string, json);
    buffer_save(buffer, file);
    buffer_delete(buffer);
}