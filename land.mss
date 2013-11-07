Map { /* the land */
	//background-color: @land;
    //background-image: url("icons/4h.png"); 
    background-image: url("icons/texture14.png");
    //background-image: url("icons/texture7.png"); 
    //@land: fadein(@color, 20%);
    //@land: fadeout(@color, 20%);
}

// Oceans
#water {
  polygon-fill: @water;
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.1;
    [zoom>=10] { line-width: 0.5; }
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'],
  [type='drain'],
  [type='ditch'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=10] { line-width: 0.5; }
    [zoom>=12] { line-width: 0.5; }
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}

/* buildings */
#building[zoom=13] {
	//polygon-pattern-file: url('icons/stripe_sm.png');
	//line-width: 0.25;
    polygon-fill: #c0c0c0;
    //line-color: #c0c0c0;
	//line-color: #aaa;
}
#building[zoom=14] {
	//polygon-pattern-file: url('icons/stripe_sm.png');
	//line-width: 0.5; 
    polygon-fill: #c0c0c0;
   // line-color: #aaa;
	//line-color: #000;
}
#building[zoom=15] {
	polygon-pattern-file: url('icons/stripe_med.png');
	line-width: 0.5; 
	line-color: #000;
}
#building[zoom=16],
#building[zoom=17],
#building[zoom>=18] {
	polygon-pattern-file: url('icons/stripe.png');
	line-width: 0.5; 
	line-color: #000;
}
#building[osm_id=45074542][zoom>=18] {
	polygon-pattern-file: url('icons/stripe_color.png');
	line-width: 1.5; 
	line-color: #00aeef;
}

/* parks, etc. */
#landuse {
  **//insert new image / color here //**
  [class='park'],[class='cemetery'],[class='pitch'],[class='sand'] {
      polygon-fill: #DDE2C5;
    //polygon-pattern-file: url('icons/halftone2.png');
   // polygon-fill: #F4DDAB; //#8F9899; //D5DFE0
  }
}
#landuse_overlay {
  [class='wetland'], [class='wetland_noveg'] {
    //polygon-pattern-file: url('icons/halftone2-transparent.png');
  //  polygon-fill: #F4DDAB; 
  }
}

#barrier_line {
  line-color: #7f7f7f;//#4d4d4d;
  line-width: 1.5;
}