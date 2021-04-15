Gnu    >>SOURCE FORMAT IS FIXED
COBOL *> ***************************************************************
      *> Date:      20200630
      *> License:   Public Domain
Colors*> Purpose:   Show the GnuCOBOL default colour palette
      *> Tectonics: cobc -x gnucobol-colours.cob
      *> ***************************************************************
       identification division.
       program-id. sample.

       environment division.
       configuration section.
       repository.
           function all intrinsic.

       data division.
       working-storage section.
       01 black   constant as 0.
       01 blue    constant as 1.
       01 green   constant as 2.
       01 cyan    constant as 3.
       01 red     constant as 4.
       01 magenta constant as 5.
       01 brown   constant as 6.
       01 white   constant as 7.

       77  xx    PIC X.

       screen section.
       01 gnucobol-colours.
          05 line   1 column 1 value "GnuCOBOL Colours".
          05 line   2 column 1 value "==================".
          
          05 line   4 column 1 value "default        highlight      "
                                   & "lowlight       reverse-video  ".
          05 line   5 column 1 value "------------------------------"
                                   & "------------------------------".

          05 line   7 column 1 value "Black  " foreground-color black.
          05 line + 1 column 1 value "Blue   " foreground-color blue.
          05 line + 1 column 1 value "Green  " foreground-color green.
          05 line + 1 column 1 value "Cyan   " foreground-color cyan.
          05 line + 1 column 1 value "Red    " foreground-color red.
          05 line + 1 column 1 value "Magenta" foreground-color magenta.
          05 line + 1 column 1 value "Brown  " foreground-color brown.
          05 line + 1 column 1 value "White  " foreground-color white
                                               background-color black.

          05 line   7 column 16 value "Black  "
                                highlight foreground-color black.
                                        *>background-color white.
          05 line + 1 column 16 value "Blue   "
                                highlight foreground-color blue.
          05 line + 1 column 16 value "Green  "
                                highlight foreground-color green.
          05 line + 1 column 16 value "Cyan   "
                                highlight foreground-color cyan.
          05 line + 1 column 16 value "Red    "
                                highlight foreground-color red.
          05 line + 1 column 16 value "Magenta"
                                highlight foreground-color magenta.
          05 line + 1 column 16 value "Brown  "
                                highlight foreground-color brown.
          05 line + 1 column 16 value "White  "
                                highlight foreground-color white
                                          background-color black.

          05 line   7 column 31 value "Black  "
                                lowlight  foreground-color black.
                                          *>background-color white.
          05 line + 1 column 31 value "Blue   "
                                lowlight  foreground-color blue.
          05 line + 1 column 31 value "Green  "
                                lowlight  foreground-color green.
          05 line + 1 column 31 value "Cyan   "
                                lowlight  foreground-color cyan.
          05 line + 1 column 31 value "Red    "
                                lowlight  foreground-color red.
          05 line + 1 column 31 value "Magenta"
                                lowlight  foreground-color magenta.
          05 line + 1 column 31 value "Brown  "
                                lowlight  foreground-color brown.
          05 line + 1 column 31 value "White  "
                                lowlight  foreground-color white.
                                          *>background-color black.

          05 line   7 column 46 value "Black  "
                          reverse-video  foreground-color black.
                                         *>background-color white.
          05 line + 1 column 46 value "Blue   "
                          reverse-video  foreground-color blue.
          05 line + 1 column 46 value "Green  "
                          reverse-video  foreground-color green.
          05 line + 1 column 46 value "Cyan   "
                          reverse-video  foreground-color cyan.
          05 line + 1 column 46 value "Red    "
                          reverse-video  foreground-color red.
          05 line + 1 column 46 value "Magenta"
                          reverse-video  foreground-color magenta.
          05 line + 1 column 46 value "Brown  "
                          reverse-video  foreground-color brown.
          05 line + 1 column 46 value "White  "
                          reverse-video  foreground-color white.
                                         *>background-color black.
                                         
      *>    05 line   7 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *>    05 line + 1 column 61 ERASE EOL.
      *> ***************************************************************
       procedure division.

       display
           *> SCREEN
           gnucobol-colours
       end-display.

       accept
           omitted
           line 23 column 1
       end-accept.

       goback.
       end program sample.
