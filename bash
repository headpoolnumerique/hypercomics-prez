arr=("Akira.jpg" "Alex-Barbier.jpg" "Alexis-beauclair-illustration-itsnicethat-3.webp"  "alexis-beauclair.jpg" "alexis-beauclair5.png" "Alexis.jpg" "anna-haifisch_Artist3.jpg" "anna-haifisch1.jpg" "annahaifisch.jpg" "Anouck-Ricard.jpg" "Anouk-Ricard.jpg" "Baladi.jpg" "bande_Originale_Sarah_Andre_3.jpg" "Blain.jpg" "Blanquet.jpg" "Blutch.jpg" "Brecht-Evens.jpg" "Bretecher.jpg" "calvinEtHoobes.png" "Calvo.jpg" "cern.jpg" "Chauchat.jpg" "chris_ware.gif" "Chris-Ware.webp" "clem.png" "Clement-Paurd.jpg" "Clement-Vuillier.jpg" "Crumb.png" "Debeurme.jpg" "Debeurme2.jpg" "Dominique-Goblet.jpg" "etienneMineur.png" "Fanny-Mikaelis.jpg" "Fantasma.jpg" "Fred.jpg" "Frederic-coche-20-Brunnhilde-22-A.webp" "Frederic-Coche1.jpg" "Frederic-Coche2.jpg" "hawkeye.png" "ju.png" "Leon-Maret.jpg" "Leon-Maret.webp" "logo-head.png" "Margaux-Meissonier.png" "Marion-Fayolle_allumeuse-homme-en-pieces-magnani.webp" "Marion-Fayolle_lamaisonnue-extraits6.webp" "Marion-Fayolle.jpg" "matsumoto.jpg" "Melek-Zertal.png" "MiroslavSEKULIC22-019-scaled.jpg" "MiroslavSEKULIC22-025-scaled.jpg" "Misuki.jpg" "Nicolas-Nade.jpg" "nightwing.jpeg" "panchaud-la-couleur-des-choses-2.webp" "Rupper-et-Mulot.jpg" "Sammy-Stein.jpg" "saturnine_Baladi_3.jpg" "sc145744.jpg" "schrauwenArseneschrauwen11200x675.jpg" "Schrawen.webp" "Sfar.jpg" "simonhanselmann.jpg" "Soglow.jpg" "Sophie-Guerrive.jpg" "Tezuka.jpg" "Thielman-Jim-Woodring-1.webp" "Tom-Gauld_MOONCOP_26.webp" "Tom-Gauld.jpg" "Torihama.jpg" "Tove-Janson.jpg" "Tsuge.jpg" "Virot.png" "Vives.jpg" "watchmen.jpg" "Winschluss.jpg" "Winsor-Mckay.jpg" "yannis.png" "Yokoyama.jpg")
for index in "${!arr[@]}"; 
do echo "---\ntitle: ${arr[$index]}\nurl: ${arr[$index]}\norder: $index\n---" > ${arr[$index]}.md;  done 