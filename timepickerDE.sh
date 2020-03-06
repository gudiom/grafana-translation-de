#!/bin/bash
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/build_OLD
cd /usr/share/grafana/public/build
#Auswahlanzeige
sed -i 's/display:"Last 5 minutes"/display:"Letzten 5 Minuten"/g' app*.js*
sed -i 's/display:"Last 15 minutes"/display:"Letzten 15 Minuten"/g' app*.js*
sed -i 's/display:"Last 30 minutes"/display:"Letzten 30 Minuten"/g' app*.js*
sed -i 's/display:"Last 1 hour"/display:"Letzte 1 Stunde"/g' app*.js*
sed -i 's/display:"Last 3 hours"/display:"Letzten 3 Stunden"/g' app*.js*
sed -i 's/display:"Last 6 hours"/display:"Letzten 6 Stunden"/g' app*.js*
sed -i 's/display:"Last 12 hours"/display:"Letzten 12 Stunden"/g' app*.js*
sed -i 's/display:"Last 24 hours"/display:"Letzten 24 Stunden"/g' app*.js*
sed -i 's/display:"Last 2 days"/display:"Letzten 2 Tage"/g' app*.js*
sed -i 's/display:"Last 7 days"/display:"Letzten 7 Tage"/g' app*.js*
sed -i 's/display:"Last 30 days"/display:"Letzten 30 Tage"/g' app*.js*
sed -i 's/display:"Last 90 days"/display:"Letzten 90 Tage"/g' app*.js*
sed -i 's/display:"Last 6 months"/display:"Letzten 6 Monate"/g' app*.js*
sed -i 's/display:"Last 1 year"/display:"Letztes 1 Jahr"/g' app*.js*
sed -i 's/display:"Last 2 years"/display:"Letzten 2 Jahre"/g' app*.js*
sed -i 's/display:"Last 5 years"/display:"Letzten 5 Jahre"/g' app*.js*
sed -i 's/display:"Yesterday"/display:"Gestern"/g' app*.js*
sed -i 's/display:"Day before yesterday"/display:"Vorgestern"/g' app*.js*
sed -i 's/display:"This day last week"/display:"Heute vor einer Woche"/g' app*.js*
sed -i 's/display:"Previous week"/display:"Letzte Woche"/g' app*.js*
sed -i 's/display:"Previous month"/display:"Letzter Monat"/g' app*.js*
sed -i 's/display:"Previous year"/display:"Letztes Jahr"/g' app*.js*
sed -i 's/display:"Today"/display:"Heute"/g' app*.js*
sed -i 's/display:"Today so far"/display:"Heute bisher"/g' app*.js*
sed -i 's/display:"This week"/display:"Diese Woche"/g' app*.js*
sed -i 's/display:"This week so far"/display:"Diese Woche bisher"/g' app*.js*
sed -i 's/display:"This month"/display:"Dieser Monat"/g' app*.js*
sed -i 's/display:"This month so far"/display:"Dieser Monat bisher"/g' app*.js*
sed -i 's/display:"This year"/display:"Dieses Jahr"/g' app*.js*
sed -i 's/display:"This year so far"/display:"Dieses Jahr bisher"/g' app*.js*
#Aktuelle Anzeige
sed -i 's/display:"Last 5 minutes"/display:"Letzten 5 Minuten"/g' vendor*.js*
sed -i 's/display:"Last 15 minutes"/display:"Letzten 15 Minuten"/g' vendor*.js*
sed -i 's/display:"Last 30 minutes"/display:"Letzten 30 Minuten"/g' vendor*.js*
sed -i 's/display:"Last 1 hour"/display:"Letzte 1 Stunde"/g' vendor*.js*
sed -i 's/display:"Last 3 hours"/display:"Letzten 3 Stunden"/g' vendor*.js*
sed -i 's/display:"Last 6 hours"/display:"Letzten 6 Stunden"/g' vendor*.js*
sed -i 's/display:"Last 12 hours"/display:"Letzten 12 Stunden"/g' vendor*.js*
sed -i 's/display:"Last 24 hours"/display:"Letzten 24 Stunden"/g' vendor*.js*
sed -i 's/display:"Last 2 days"/display:"Letzten 2 Tage"/g' vendor*.js*
sed -i 's/display:"Last 7 days"/display:"Letzten 7 Tage"/g' vendor*.js*
sed -i 's/display:"Last 30 days"/display:"Letzten 30 Tage"/g' vendor*.js*
sed -i 's/display:"Last 90 days"/display:"Letzten 90 Tage"/g' vendor*.js*
sed -i 's/display:"Last 6 months"/display:"Letzten 6 Monate"/g' vendor*.js*
sed -i 's/display:"Last 1 year"/display:"Letztes 1 Jahr"/g' vendor*.js*
sed -i 's/display:"Last 2 years"/display:"Letzten 2 Jahre"/g' vendor*.js*
sed -i 's/display:"Last 5 years"/display:"Letzten 5 Jahre"/g' vendor*.js*
sed -i 's/display:"Yesterday"/display:"Gestern"/g' vendor*.js*
sed -i 's/display:"Day before yesterday"/display:"Vorgestern"/g' vendor*.js*
sed -i 's/display:"This day last week"/display:"Heute vor einer Woche"/g' vendor*.js*
sed -i 's/display:"Previous week"/display:"Letzte Woche"/g' vendor*.js*
sed -i 's/display:"Previous month"/display:"Letzter Monat"/g' vendor*.js*
sed -i 's/display:"Previous year"/display:"Letztes Jahr"/g' vendor*.js*
sed -i 's/display:"Today"/display:"Heute"/g' vendor*.js*
sed -i 's/display:"Today so far"/display:"Heute bisher"/g' vendor*.js*
sed -i 's/display:"This week"/display:"Diese Woche"/g' vendor*.js*
sed -i 's/display:"This week so far"/display:"Diese Woche bisher"/g' vendor*.js*
sed -i 's/display:"This month"/display:"Dieser Monat"/g' vendor*.js*
sed -i 's/display:"This month so far"/display:"Dieser Monat bisher"/g' vendor*.js*
sed -i 's/display:"This year"/display:"Dieses Jahr"/g' vendor*.js*
sed -i 's/display:"This year so far"/display:"Dieses Jahr bisher"/g' vendor*.js*
sleep 5
sudo service grafana-server restart
echo "Browser Cache leeren! (STRG+F5)"
