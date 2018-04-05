echo "Projet fait par Khelif"
mkdir -p -- ./"$1"
echo > ./"$1"/LICENSE
echo > ./"$1"/Makefile

cat <<EOF >./"$1"/main.cpp
#include <iostream>
using namespace std;

int main() 
{
    cout << "bonjour!";
    return 0;
}
EOF
;;
-C)

cat <<EOF >./"$1"/main.c

#include <stdio.h>
int main()
{
   // printf() displays the string inside quotation
   printf("bonjour!");
   return 0;
}
EOF
;;
-CPP|-C++)

cat <<EOF >./"$1"/main.py
# This program prints Hello, world!
print('bonjour!')
EOF
;;
-PY)

case "$2" in

-help)

echo "This program prints Hello, world!"
echo "Name : Afficher le nom de l’application et une petite description"
echo "Syntax : Afficher la syntaxe d’utilisation de la commande initdev"
echo "args : Lister les arguments et donner une description de chaque argument"
echo "author : Afficher le nom et l’email de l’auteur de l’application"

esac