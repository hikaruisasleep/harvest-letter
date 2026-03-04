if(obj_budi.typedWord == word && image_index == 2 && instance_place(x, y, obj_budi)){
	 
    // Add 1 carrot to inventory
    global.carrot += 1;

    // Reset the crop to "not grown"
    image_index = 0;
}