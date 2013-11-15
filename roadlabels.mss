#road_label {
  text-fill: darken(#4d73a0, 15%);
  text-halo-fill: @halo;
  text-halo-radius: 2;
  text-character-spacing: 0.5;
  text-name: '';
  text-face-name: "Frutiger LT 45 Light Regular", "Arial Unicode MS Regular";
  text-placement: line;
  text-min-distance: 100;
  text-min-padding: 1;
  text-dy: -6;
  text-size: 11;

  //
  // separated highways
  //
  /*
  [class='motorway'],
  {
    [zoom>=12] {
      text-name: [name];
      text-halo-fill: #e4cba2;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=14] {
      text-size: 13;
      text-spacing: 400;
    }
  }
  */

  //
  // arterials
  //
  [class='main']
  {
    [zoom>=15] {
      text-name: [name];
      
      [len>1000] {
        text-character-spacing: 0;
      }
      
      [len<250] {
        text-character-spacing: 0.6;
      }
    }
    
    [zoom>=16] {
      text-size: 12;
      text-character-spacing: 0;
      text-halo-radius: 2;
      text-dy: -8;
    }
  }

  //
  // local roads
  //
  [class='street'],
  [class='service'],
  {
    [zoom>=17] {
      text-name: [name];
      text-halo-fill: @road_halo;
      text-halo-radius: 1.5;
      text-dy: -6;

      text-size: 11;
      text-character-spacing: 0.5;
    }
  }
}
