#road[zoom>=6],#bridge,#tunnel {
  [class='rail'] {
    ::outline {
      [zoom=14] {
        line-color: @rail;
        line-width: 3;
        line-dasharray: 1,3;
        line-cap: butt;
      }
    }
    ::inline {
      [zoom=14] {
        line-color: @rail;
	line-width: 1;}
    }
  }
  [zoom>=10] {
    [class='street'],[class='street_limited'],[class='driveway'] {
      line-color: @minor;
      [zoom=10] { line-width: 0.2; }
      [zoom=11] { line-width: 0.2; }
      [zoom=12] { line-width: 0.2; }
      [zoom=13] { line-width: 0.4; }
      [zoom=14] { line-width: 0.8; }
    }
  }
  [class='main'][zoom>=9] {
    ::outline {
      line-color: @major_case;
      //[zoom=11] { line-width: 1.25; }
      [zoom=11] { line-width: 0.25; }
      //[zoom=12] { line-width: 5; }  // This seems excessive
      [zoom=12] { line-width: 0.5; } 
      //[zoom=13] { line-width: 5; }
      [zoom=13] { line-width: 0.7; }
      //[zoom=14] { line-width: 6; }
      [zoom=14] { line-width: 0.8; }
    }
    ::inline {
      line-color: @major;
      [zoom=9] { line-width: 0.15; }
      //[zoom=10] { line-width: 0.5; }
      [zoom=10] { line-width: 0.3; }
      //[zoom=11] { line-width: 0.7; }
      [zoom=11] { line-width: 0.4; }
      //[zoom=12] { line-width: 1; }
      [zoom=12] { line-width: 0.5; }
      //[zoom=13] { line-width: 1.5; }
      [zoom=13] { line-width: 0.65; }
      //[zoom=14] { line-width: 1.9; }
      [zoom=14] { line-width: 0.75; }
    }
  }
  [class='motorway'] {
    ::outline {
      line-color: @highway_case;
	  line-opacity: 0.5;
      [zoom=7] { line-width: 2.25; }
      [zoom=8] { line-width: 3.25; }
      [zoom=9] { line-width: 4.25; }
      [zoom=10] { line-width: 6; }
      [zoom=11] { line-width: 6; }
      [zoom=12] { line-width: 8; }
      [zoom=13] { line-width: 8; }
      [zoom=14] { line-width: 8; }
    }
    ::inline {
      line-color: @highway;
      [zoom=7] { line-width: 1.5; }
      [zoom=8] { line-width: 1.5; }
      [zoom=9] { line-width: 1.5; }
      [zoom=10] { line-width: 2; }
      [zoom=11] { line-width: 2.5; }
      [zoom=12] { line-width: 3; }
      [zoom=13] { line-width: 3; }
      [zoom=14] { line-width: 4; }
	}
  }
}
#tunnel {
  ::inline { line-opacity: 0.5; }
}

/* Zoom Levels 15+ */
#road::outline[zoom>=15],
#tunnel::outline[zoom>=15],
#bridge::outline[zoom>=15] {
	line-join: round;
	line-cap: butt;

	[class='path'] {
		line-color: @path_case;
	}
	[class='motorway'] { line-color: @highway_case; }
	[class='main']  { line-color: @major_case; }
	[class='street'] { line-color: @minor_case; }
	[class='service'],[class='driveway'],[class='street_limited'] { line-color: @service_case; }

	//[is_tunnel='yes'] {
	//	line-color: #ccc;
	//}
	[class='rail'] {
		line-color: @rail;
	}

	[zoom=15] {
		[class='path'] { line-width: 3.5; }
		[class='motorway'] { line-width: 11; }
		//[class='motorway'][is_link='yes'] { line-width: 6.5; }
		[class='main'] { line-width: 8; }
		//[class='main'][is_link='yes'] { line-width: 5.5; }
		[class='street'] { line-width: 0; }
		[class='service'] { line-width: 3.5; }
		[class='rail'] { line-width: 3; line-dasharray: 0.5,3.5; line-cap: butt;}
		//[is_tunnel='yes'] { line-width: 5; line-opacity: 0.7; }
	}
	[zoom=16] {
		[class='path'] { line-width: 4.5; }
		[class='motorway'] { line-width: 14; }
		//[class='motorway'][is_link='yes'] { line-width: 7; }
		[class='main'] { line-width: 11; }
		//[class='main'][is_link='yes'] { line-width: 7; }
		[class='street'] { line-width: 6.5; }
		[class='service'] { line-width: 4; }
		[class='rail'] { line-width: 5; line-dasharray: 0.5,4.5; line-cap: butt;}
		//[is_tunnel='yes'] { line-width: 5; line-opacity: 0.7; }
	}
	[zoom>=17] {
		[class='motorway'] { line-width: 24; }
		//[class='motorway'][is_link='yes'] { line-width: 9; }
		[class='main'] { line-width: 18; }
		//[class='main'][is_link='yes'] { line-width: 8; }
		[class='street'] { line-width: 9; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 6; }
		[class='path'] { line-width: 5; }
		[class='rail'] { line-width: 5; line-dasharray: 0.5,4.5; line-cap: butt;}
		[is_tunnel='yes'] { line-width: 18; line-opacity: 0.7; }
	}
	[zoom>=18] {
		[class='motorway'] { line-color: @highway; }
		[class='main']  { line-color: @major; }
		[class='street'] { line-color: @minor_2; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-color: @service; }

		[class='motorway'] { line-width: 42; }
		//[class='motorway'][is_link='yes'] { line-width: 14; }
		[class='main'] { line-width: 22; }
		//[class='main'][is_link='yes'] { line-width: 13; }
		[class='street'] { line-width: 17; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 6; }
		[class='path'] { line-width: 5; }
		[class='rail'] { line-width: 7; line-dasharray: 2,6; line-cap: butt;}
		//[is_tunnel='yes'] { line-width: 22; line-opacity: 0.4; line-color: #ccc;}
	}
}

#road::inline[zoom>=15],
#tunnel::inline[zoom>=15],
#bridge::inline[zoom>=15] {
	line-join: round;
	line-cap: round;

	//[is_tunnel='yes'] {
	//	line-color: #000;
	//}
	[class='motorway'] { line-color: @highway; }
	[class='main']  { line-color: @major; }
	[class='street'] { line-color: @minor_2; }
	[class='service'],[class='driveway'],[class='street_limited'] { line-color: @service; }
	[class='street_limited'] { line-dasharray: 4,1; }

	[class='rail'] {
		line-color: @rail;
	}
	[class='path'] {
		line-color: @path;
		line-cap: butt;
	}
	//[is_bridge='yes'] {
	//	line-join: round;
	//}

	[zoom=15] {
		[class='motorway'] { line-width: 6; }
		//[class='motorway'][is_link='yes'] { line-width: 2.25; }
		[class='main'] { line-width: 5; }
		//[class='main'][is_link='yes'] { line-width: 2.25; }
		[class='street'] { line-width: 1.2; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 1.2; }
		[class='rail'] { line-width: 0.5; }
		//[is_tunnel='yes'] { line-width: 3; line-opacity: 0.1; }
		[class='path'] { line-width: 1.2; line-color: @path; line-cap: butt; }
	}
	[zoom=16] {
		[class='motorway'] { line-width: 8.5; }
		//[class='motorway'][is_link='yes'] { line-width: 2.5; }
		[class='main'] { line-width: 6.5; }
		//[class='main'][is_link='yes'] { line-width: 2; }
		[class='street'] { line-width: 3.5; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 1.5; }
		[class='rail'] { line-width: 0.5; }
		//[is_tunnel='yes'] { line-width: 3; line-opacity: 0.1; line-color: #999; }
		[class='path'] { line-width: 1.5; line-color: @path; line-cap: butt; }
	}
	[zoom=17] {
		[class='motorway'] { line-width: 14.75; }
		//[class='motorway'][is_link='yes'] { line-width: 4.75; }
		[class='main'] { line-width: 11.5; }
		//[class='main'][is_link='yes'] { line-width: 4; }
		[class='street'] { line-width: 6.5; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 4; }
		[class='path'] { line-width: 3; }
		[class='rail'] { line-width: 1; }
		//[is_tunnel='yes'] { line-width: 12; line-opacity: 0.1; line-color: #ccc; }
	}
	[zoom>=18] {
		[class='motorway'] { line-color: @highway_case; }
		[class='main']  { line-color: @major_case; }
		[class='street'] { line-color: @minor_case; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-color: @service_case; }

		[class='motorway'] { line-width: 28; }
		//[class='motorway'][is_link='yes'] { line-width: 10; }
		[class='main'] { line-width: 18; }
		//[class='main'][is_link='yes'] { line-width: 9; }
		[class='street'] { line-width: 13; }
		[class='service'],[class='driveway'],[class='street_limited'] { line-width: 4; }
		[class='path'] { line-width: 2; line-cap: butt; }
		[class='rail'] { line-width: 2; }
		//[is_tunnel='yes'] { line-width: 18; line-opacity: 0.7; line-color: #ccc;}
	}
}

/* aeroways */
#aeroway[zoom>11] {
	line-color: @aeroway;
	line-cap: square;
	line-join: miter;
}

#aeroway[zoom>=15] {
	line-color: @aeroway;
}

#aeroway[type='runway'][zoom=12] { line-width: 2; }
#aeroway[type='runway'][zoom=13] { line-width: 4; }
#aeroway[type='runway'][zoom=14] { line-width: 8; }
#aeroway[type='runway'][zoom=15] { line-width: 16; }
#aeroway[type='runway'][zoom=16] { line-width: 32; }
#aeroway[type='runway'][zoom=17] { line-width: 64; }
#aeroway[type='runway'][zoom>=18] { line-width: 128; }

#aeroway[type='taxiway'][zoom=13] { line-width: 1; }
#aeroway[type='taxiway'][zoom=14] { line-width: 2; }
#aeroway[type='taxiway'][zoom=15] { line-width: 4; }
#aeroway[type='taxiway'][zoom=16] { line-width: 8; }
#aeroway[type='taxiway'][zoom=17] { line-width: 16; }
#aeroway[type='taxiway'][zoom>=18] { line-width: 32; }