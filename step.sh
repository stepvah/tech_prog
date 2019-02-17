#1/bin/bash

dir_main="$1"
dir_arch="$2"
shift
shift

if [ -e "$dir_main"  ]
then
rm -rf "$dir_main"
fi

var=`pwd`


mkdir $dir_main
direct=$@


let num=0


for i in $direct
do
      let num=num+1
      for name in `find   -name  "*.$i"`
      do
           if [ -f "$name" ]
           then
               cp "${name%.*}.${name##*.}" ${dir_main%.*}/"$num"."$i"
               let num=num+1
           fi
      done
done


tar -cf "$dir_arch".tar "$dir_main" >/dev/null 2>&1
rm -R "$dir_main" >/dev/null 2>&1
