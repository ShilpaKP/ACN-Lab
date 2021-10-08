exam@debian:~$ mkdir sales
exam@debian:~$ cd sales
exam@debian:~/sales$ mkdir location1 location2 location3
exam@debian:~/sales$ ls
location1  location2  location3
location1  location2  location3
exam@debian:~/sales$ cd location1
exam@debian:~/sales/location1$ touch sales1.txt sales2.txt sales3.txt
exam@debian:~/sales/location1$ ls
sales1.txt  sales2.txt  sales3.txt
exam@debian:~/sales/location1$ cd ..
exam@debian:~/sales$ cd location2
exam@debian:~/sales/location2$ touch pur1.txt pur2.txt
exam@debian:~/sales/location2$ ls
pur1.txt  pur2.txt
exam@debian:~/sales/location2$ cd ..
exam@debian:~/sales$ cd location3
exam@debian:~/sales/location3$ touch stock1.txt stock2.txt
exam@debian:~/sales/location3$ cd ..
exam@debian:~/sales$ cd location2
exam@debian:~/sales/location2$ cat>pur1.txt
this is pur1
^Z
[1]+  Stopped                 cat > pur1.txt
exam@debian:~/sales/location2$ cat>pur2.txt
this is pur2
^Z
[2]+  Stopped                 cat > pur2.txt
exam@debian:~/sales/location2$ cat pur1.txt pur2.txt >> pur3.txt
exam@debian:~/sales/location2$ cat pur3.txt
this is pur1
this is pur2
exam@debian:~/sales/location2$ cp pur3.txt ~/sales/location3/stock3.txt
exam@debian:~/sales/location2$ cd ..
exam@debian:~/sales$ cd location3
exam@debian:~/sales/location3$ cat stock3.txt
this is pur1
this is pur2
exam@debian:~/sales/location3$ chmod g-wx stock3.txt
exam@debian:~/sales/location3$ cat>stock1.txt
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
^Z
[3]+  Stopped                 cat > stock1.txt
exam@debian:~/sales/location3$ head -10 stock1.txt
1
2
3
4
5
6
7
8
9
10
exam@debian:~/sales/location3$ cd ..
exam@debian:~/sales$ ls
location1  location2  location3
exam@debian:~/sales$ ls -l
total 12
drwxr-xr-x 2 exam exam 4096 Oct  8 14:07 location1
drwxr-xr-x 2 exam exam 4096 Oct  8 14:15 location2
drwxr-xr-x 2 exam exam 4096 Oct  8 14:17 location3
exam@debian:~/sales$ ls  -la |more
total 20
drwxr-xr-x  5 exam exam 4096 Oct  8 14:06 .
drwxr-xr-x 19 exam exam 4096 Oct  8 14:06 ..
drwxr-xr-x  2 exam exam 4096 Oct  8 14:07 location1
drwxr-xr-x  2 exam exam 4096 Oct  8 14:15 location2
drwxr-xr-x  2 exam exam 4096 Oct  8 14:17 location2


  shellprogram  

sphere()
{
    echo " enter the radius "
    read r
    ( ( b = 4 / 3 * $a ) )
    echo " volume of sphere: $b "
}
cube()
{
    echo " enter the side "
    read x
    (( y = $x * $x * $x ))
    echo " volume of cube: $y "
}
cylinder()
{
    echo " enter the radius and height "
    read r
    read h
    (( m = $r * $r * 314 * $h ))
    ( ( n = $m / 100 ) )
    echo " volume of cylinder: $n "
}
echo -e " enter your option: \n1.sphere \n 2.cube \n 3.cylinder "
read i
case $i in
1)sphere ;;
2)cube ;;
3)cylinder ;;
esac
    

    
    
    
    

