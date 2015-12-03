function wielangnoch {
 if [ -z "$1" ] ; then
     echo "Usage: wielangnoch 07:30"
     return
 fi

 C=$(echo $1|sed 's#:##')
 # calculations
 BEGINN=$(date -j "$C" +%s )
 ENDE=$((BEGINN+29880))
 HARTLIMIT=$((BEGINN+37800))
 AUSSTEHEND=$(echo "scale=2; 7.8+0.5-(($(date -j +%s ) - $BEGINN) / 60 / 60)" | bc | awk '{printf "%.2f", $0}')
 GEARBEITET=$(echo "scale=2; (($(date -j +%s ) - $BEGINN) / 60 / 60)-0.5" | bc | awk '{printf "%.2f", $0}')

 # output
 echo "Ausstehend: $AUSSTEHEND"
 echo "Gearbeitet: $GEARBEITET"
 echo "Ende: $(date -d @${ENDE} +%H:%M:%S )"
 echo "10-Stunden-Regel: $(date -d @${HARTLIMIT} +%H:%M:%S )"
}
