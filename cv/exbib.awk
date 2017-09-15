

cat $1 |awk '{if(substr($1,1,1)=="@") printf $1" ";
              if($1=="Year" || $1=="year") printf $3" ";
              if(index($1,"ollaboration")>0) 
                  printf $3"\n" 
              #else 
              #    printf "\n ";
              }' |
                    #awk '{if(index($3, "ALICE") > 0  && index($1, "2017") > 0) print $2}' |
                    awk '{if(index($3, "PHENIX") > 0 && index($1, "2017") > 0) print $2}' |
                    #awk '{if(index($3, "CERES") > 0  && index($1, "2016") > 0) print $2}' |
                    #awk '{if(index($3, "WA98") > 0   && index($1, "2016") > 0) print $2}' |
                    awk -F "{" '{print $2}'




#    if($1=="article") key = $2
#        if($4=="January") m=01; else 
#        if($4=="February") m=02; else 
#        if($4=="March") m=03; else 
#        if($4=="April") m=04; else 
#        if($4=="May") m=05; else 
#        if($4=="June") m=06; else 
#        if($4=="July") m=07; else 
#        if($4=="August") m=08; else 
#        if($4=="September") m=09; else 
#        if($4=="October") m=10; else 
#        if($4=="November") m=11; else 
#        if($4=="December") m=12;
#        getline t1;
#        getline t2;
#       print m"/"01"/"substr($5,1,4)","t1,t2;
#    } 
##else print $0
#}'
