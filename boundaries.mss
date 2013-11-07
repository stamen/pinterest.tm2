// Mapbox admin levels not the same as Natural Earth
@countries_level: 2;
@states_level: 4;

#admin[maritime=0]{
  [admin_level=@countries_level][zoom<6] {
	line-width: 0.6;
	//line-color: #000;
    line-color: #7F8282;
  }
}
#admin[maritime=0] {
  [admin_level=@countries_level][zoom>=6] {
	//::outline {
	//	line-color: @land;
	//	line-width: 3;
//	}
    ::inline {
        //light grey : A5AEAF
		//line-color: #A5AEAF;  //#000;
        line-color: #7F8282;
        //line-color: #F7698E;
		line-width: 1; //1.2;
		//line-dasharray: 3,7;
		//line-cap: round;
    }
  }
}

#admin[admin_level=@states_level][maritime=0][zoom>=3][zoom<6] {
	line-width: 0.2;
	//line-color: #000;
   // line-color: #bae1e5;
    line-color: #909393;
    //grey tone 
    //line-color: #AAAFAF;
}

//////////state borders
#admin[admin_level=@states_level][maritime=0][zoom=6],
#admin[admin_level=@states_level][maritime=0][zoom=7] { 
	line-width: 1;//1.5;
    // dark grey 
    line-color: #909393;
    //grey tone 
   // line-color: #AAAFAF; 
    //red 
    //line-color: #B73B62;
	//line-dasharray: 1,5;
	line-cap: round;
}

#admin[admin_level=@states_level][maritime=0][zoom=8] {
    //state borders 
	line-width: 1;//2;
    line-color: #909393;
    //grey tone 
    //line-color: #AAAFAF;
    // red-pink tone
    //line-color: #B73B62; 
	//line-dasharray: 1,5;
	line-cap: round;
}

#admin[admin_level=@states_level][maritime=0][zoom=9],
#admin[admin_level=@states_level][maritime=0][zoom>9] {
    //state borders 
	line-width: 1; //2.0;
    line-color: #909393;
	//line-color: #F7698E; //#4d4d4d;
	//line-dasharray: 1,5;
	line-cap: round;
}