#! /bin/bash

#古诗分类

mkdir ./5lv ./5jue ./7lv ./7jue
for a in `seq 20`
do
	i=$(printf "%02d\n" ${a})
	#echo "${i}"
	chars=$(cat 0${i}.txt | sed -n '1p' | wc -m)
	line=$(awk 'NR>7{print "8"}' 0${i}.txt)

	if [[ ${chars} == 7 ]] && [[ ${line} == 8 ]];then
		line_five=8
	else
		line_five=4
	fi

	if [[ ${chars} == 9 ]] && [[ ${line} == 8 ]];then
		line_seven=8
	else
		line_seven=4
	fi

	if [[ ${line_five} == 4 ]] && [[ ${chars} == 7 ]]; then
		echo "0${i}.txt --> 五言绝句"
		cp ./0${i}.txt ./5jue/
	fi

	if [[ ${line_five} == 8 ]] && [[ ${chars} == 7 ]]; then
		echo "0${i}.txt --> 五言律诗"
		cp ./0${i}.txt ./5lv/
	fi

	if [[ ${line_seven} == 4 ]] && [[ ${chars} == 9 ]]; then
		echo "0${i}.txt --> 七言绝句"
		cp ./0${i}.txt ./7jue/
	fi

	if [[ ${line_seven} == 8 ]] && [[ ${chars} == 9 ]]; then
		echo "0${i}.txt --> 七言律诗"
		cp ./0${i}.txt ./7lv/
	fi
done


#awk '{ print NR ":" length($0) }' demo.txt
