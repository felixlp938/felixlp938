print("Dieses Game ist ein Glücksspiel  -  Gebe eine Zahl zwischen 1 und 5 ein, und gucke ob sie richtig ist  -:-  Gecodet von Felix [github.com/felixlp938]")

eing = input("Gebe hier die Zahl ein:")

from random import *
rand = randint(1, 5)

print ("Zufallszahl:", rand)

if str(eing) == str(rand):
    print("Du hast gewonnen")
else: 
    print("Du hast leider verloren oder eine falsche Zahl eingegeben :(")

input("Drücke Enter zum beenden")
