#!/bin/bash
#NC brute file transfer
#Creator 0katz

BLUE=$(tput setaf 075)
GREY=$(tput setaf 0)
WHITE=$(tput setaf 7)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)



echo "

                                    "$GREY".O,                          
                                     "$GREY"lkOl                         
                                     "$GREY"od1"$GREY"cOc                     
                                     "$GREY" X,"$WHITE"11"$GREY"cOo.                        
                                       "$GREY"cX,"$WHITE"111"$GREY",dkc.                    
                                       "$GREY";Kd."$WHITE"1111"$GREY",odo,.                 
                                        "$GREY".dXl"$WHITE"111"$GREY"."$WHITE"11"$GREY".:xkl              
                                           "$GREY"OKc"$WHITE"11"$GREY".;c"$WHITE"111"$GREY",oOk:           
                                            "$GREY",kKo."$WHITE"1"$GREY".cOkc."$WHITE"1"$GREY".lOk:.       
                                              "$GREY".dXx."$WHITE"11"$GREY":KWKo."$WHITE"11"$GREY"dXd.     
                                                "$GREY".oXx."$WHITE"11"$GREY"cXWW0c..dXd.   
                                                "$GREY" oW0"$WHITE"111"$GREY".OWWWNd."$WHITE"1"$GREY"KK.  
                                          "$GREY"....,;lkNWx"$WHITE"11111"$GREY"KWWWWX:"$WHITE"1"$GREY"XK. 
 ,o:,                          "$GREY".,:odkO00XNK0Okxdlc,."$WHITE"11111"$GREY".KWWWWWWddWd 
  K::Ol                   .:d0NXK0Ok"$BLUE"xdoxO"$WHITE"11111111111111"$GREY".lXWWWWWWWWKW0 
  oD"$WHITE"11"$GREY"d0.              .l0NKO"$BLUE"xdooooooox0"$GREY"."$WHITE"11111111"$GREY".,cdOXWWWWWWWWWWWWWx 
  :O"$WHITE"111"$GREY";K;           ;kN0k"$BLUE"ooooooooooooK"$GREY":"$WHITE"11.1"$GREY":ok0NWWWWWWWWWWWWWWWWWWK. 
   X"$WHITE"1111"$GREY".Kl        ;KNO"$BLUE"doooooooooooooo"$GREY"XkkXWWWWWWWWWWWWWWWWWWWWWWWNd.  
  .N."$WHITE"1"$GREY"o."$WHITE"1"$GREY".Kl      OW0"$BLUE"doooooooooooooo"$GREY"dkXWWWWWWWWWWWWWWWWWWWWWWWW0l.    
   0l"$WHITE"1"$GREY"oK"$WHITE"11"$GREY".kO: ;kNN"$BLUE"kooooooooooooo"$GREY"k0XWWWWWWWWWWWWWWWWWWWWWWWKx:.       
   lX.,WN:"$WHITE"11"$GREY".:c:xWk"$BLUE"ooooooooooo"$GREY"d0NWW0OWWWWWWWWWWWWWWWWWWWKo.           
    0O.0WWk"$WHITE"1111"$GREY".XK"$BLUE"ooooooooooo"$GREY"ONWWNo"$RED"00"$GREY"dWWWWWWWWWWWWWWWWWl              
     oKkNWWWX00NWX"$BLUE"doooooooo"$GREY"xXWWNk"$RED"0000"$GREY"dWWWWWWWWWWWWWWWWX               
      .cONWWWWWWWW"$BLUE"Oooooooo"$GREY"ONWWK:"$RED"000"$GREY"c0WWWWWWWWWWWWWWWWWW:              
         .;oONWWWW"$BLUE"xooooo"$GREY"dKWWWWWWWWWWWWWWWWWWWWWWWWWWWWWX.                -------------------------------------
               XW0"$BLUE"ooooo"$GREY"kNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWd                           
              oW0"$BLUE"ooooo"$GREY"0WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWO                                                    
             ;NX"$BLUE"doood"$GREY"KWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWx                  "$WHITE"Created by: Katz           
          ;xkO"$BLUE"OdooooxOO0"$GREY"KNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWX.                                                    
         .NO"$BLUE"odd"$GREY"xkkkkxxd"$BLUE"ooo"$GREY"kKWWWWWWWWWWWWWWWWWWWWWWWWWWX                  "
          :KNWWWWWWWWWWX0"$BLUE"xoo"$GREY"ONWWWWWWWWWWWWWWWWWWWWWWWk.                   
         .xNXxKWWWWWWWOXWWX"$BLUE"xo"$GREY"KWWWWWWWWWWWWWWWWWWWWNk'                     
         OWl"$WHITE"1"$GREY"cNWWWWWWWk"$WHITE"1"$GREY"oNWNx"$GREY"KWWWWWWWWWWWWWWWWWNOl.                                          
        ,Wk"$WHITE"11"$GREY"xWWWWWWWWd"$WHITE"11"$GREY"x"$GREY"WWNWWWWWWWWWWWWXOdc,.                       
        .N0"$WHITE"111"$GREY"lOXNX0x;"$WHITE"11"$GREY"."$GREY"KWWWWWWWWWWWNkc.                             
         :NO,"$WHITE"1111111111"$GREY""$GREY"lXWWWWWWWWWNk:.                              
          .dXN0Okxk"$GREY"O0NWWWWWWWWWWKl.                                   
             "$GREY".;o0WWWWWWWWWWWNk;                                      
                 "$GREY" .cxOKXKKOd;. "


#find first 3 octets of the gateway and set it to a variable.
GW=$(route -n | grep 'UG[ \t]' | awk '{print $2}' | cut -c1-10)


host=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/' > incoming.txt)

$host

#loop through 1 to 255 on the 4th octect

for octet in {1..255}
do
   netcat -w1 -v $GW$octet 4545 < incoming.txt
  	[[ "$?" -eq 0 ]] && continue && echo $GREEN "Connection Succesful!"

done

