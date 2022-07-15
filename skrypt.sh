#!/bin/bash
case $1 in
--help)
echo
"Wpisz:
--help aby wyswietlic pomoc
--date aby wyswietlic godzine
--logs aby stworzyc 100 plikow log<numer>.txt
--logs <liczba> aby stworzyc wybrana przez siebie liczbe plikow log<liczba>.txt
"
;;
--date)
echo `date +'%m/%d/%Y'`
;;
--logs)
if [ -z "$2" ]
then
pliki=100
else
pliki=$2
fi
for i in $( eval echo {1..$pliki} )
do
echo log$i.txt $0 `date +'%m/%d/%Y'` >> log$i.txt
done
;;
esac
