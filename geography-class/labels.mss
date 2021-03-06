/* Fonts and font sets can be assigned to variables. The first font
   will be preferred, and fall back to subsequent fonts for characters
   that are not available, or if the entire font is not available to
   Mapnik. */
@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";
@futura_italic: "Futura Medium Italic","Function Pro Medium Italic","Ubuntu Italic","Trebuchet MS Italic","DejaVu Sans Oblique";
@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";

/* ---- Countries ---- */
#country-name[zoom>1][TYPE='Sovereign country'],
#country-name[zoom>1][TYPE='Country']{
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"''"; /* hackish? */
  
  [zoom=3] { 
    text-size:10; 
  }
  [zoom=4] { 
    text-size:11; 
  }
  [zoom=5] { 
    text-size:12;
    text-character-spacing:1;
    text-line-spacing:1;
  }
  [zoom>5] {
    text-size:14;
    text-character-spacing:2;
    text-line-spacing:2;
  }
  
 /* The Z_* properties were assigned to indicate at which
  * zoom level that type of label should begin appearing
  * given a Google Mercator projection. 
  */
  [zoom>=2][Z_POSTAL = 2],
  [zoom>=3][Z_POSTAL = 3],
  [zoom>=4][Z_POSTAL = 4],
  [zoom>=5][Z_POSTAL = 5] { text-name: "[POSTAL]"; }
  
  [zoom>=2][Z_ABBREV = 2],
  [zoom>=3][Z_ABBREV = 3],
  [zoom>=4][Z_ABBREV = 4],
  [zoom>=5][Z_ABBREV = 5],
  [zoom>=6][Z_ABBREV = 6] { text-name: "[ABBREV]"; }
  
  [zoom>=2][Z_NAME = 2],
  [zoom>=3][Z_NAME = 3],
  [zoom>=4][Z_NAME = 4],
  [zoom>=5][Z_NAME = 5],
  [zoom>=6][Z_NAME = 6] { text-name: "[NAME]"; }
  
  [zoom>=2][Z_ADMIN = 2],
  [zoom>=3][Z_ADMIN = 3],
  [zoom>=4][Z_ADMIN = 4],
  [zoom>=5][Z_ADMIN = 5],
  [zoom>=6][Z_ADMIN = 6] { text-name: "[ADMIN]"; } 
}

#country-name[zoom>4][TYPE='Dependency']{
  text-face-name: @futura_italic;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"[NAME]";
  [zoom=6] { text-size:10; }
  [zoom>6] { text-size:11; }
}

/* ---- CITIES ---- */
#cities[WORLDCITY=1][zoom>4] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -4;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../resources/icons/circle-7.png);
}

#cities[ADM0CAP=1][zoom>3] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -5;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../resources/icons/star-10.png);
}

/* ---- GEOGRAPHIC LINES ---- */
#geo-lines[zoom>1][DISPLAY!='Internationl Date Line � 1995 Kiribati adjustment']{ 
  text-dy:-7;
  text-name:"[DISPLAY]";
  text-face-name:@futura_med;
  text-fill:@line;
  text-placement:line;
  text-spacing:600;
}