#!/bin/bash

while true
do
	clear
	echo "#########################################"
	echo "#                                       #"
	echo "#   Welcome to the Licence Selector!    #"
	echo "#                                       #"
	echo "#########################################"
	echo ""
	while true
	do
		echo ""
		read -p "他人修改源码后，是否可以闭源？[yes/no]： " OpenSource
		if [[ ${OpenSource} = 'yes' ]] || [[ ${OpenSource} = 'no' ]] || [[ ${OpenSource} = 'exit' ]]; then
			break
		else
			echo ""
			echo "输入错误，请重新输入此项。"
			sleep 3
			echo "-------------------------------------"
			continue
		fi
	done

	while [[ ${OpenSource} = 'no' ]]
	do
		echo ""
		read -p "新增代码是否采用同样的许可证？[yes/no]： " Licence
		if [[ ${Licence} = 'yes' ]] || [[ ${Licence} = 'no' ]] || [[ ${Licence} = 'exit' ]]; then
			break
		else
			echo ""
			echo "输入错误，请重新输入此项。"
			sleep 3
			echo "-------------------------------------"
			continue
		fi
	done

	while [[ ${Licence} = 'no' ]]
	do
		echo ""
		read -p "是否需要对源码的修改之处，提供说明文档？[yes/no]： " Doc
		if [[ ${Doc} = 'yes' ]] || [[ ${Doc} = 'no' ]] || [[ ${Doc} = 'exit' ]]; then
			break
		else
			echo ""
			echo "输入错误，请重新输入此项。"
			sleep 3
			echo "-------------------------------------"
			continue
		fi
	done

	while [[ ${OpenSource} = 'yes' ]]
	do
		echo ""
		read -p "每一个修改过的文件，是否都必须防止版权说明？[yes/no]： " Copyright
		if [[ ${Copyright} = 'yes' ]] || [[ ${Copyright} = 'no' ]] || [[ ${Copyright} = 'exit' ]]; then
			break
		else
			echo ""
			echo "输入错误，请重新输入此项。"
			sleep 3
			echo "-------------------------------------"
			continue
		fi
	done

	while [[ ${Copyright} = 'no' ]]
	do
		echo ""
		read -p "衍生软件的广告，是否可以用您的名字促销？[yes/no]： " Name
		if [[ ${Name} = 'yes' ]] || [[ ${Name} = 'no' ]] || [[ ${Name} = 'exit' ]]; then
			break
		else
			echo ""
			echo "输入错误，请重新输入此项。"
			sleep 3
			echo "-------------------------------------"
			continue
		fi
	done

	if [[ ${Doc} = 'no' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：LGPL许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${Doc} = 'yes' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：Mozilla许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${Licence} = 'yes' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：GPL许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${Name} = 'no' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：BSD许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${Name} = 'yes' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：MIT许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${Copyright} = 'yes' ]]; then
		echo ""
		echo ""
		echo "+---------------------------------------------------+"
		echo "   根据您的选择，我们为您推荐使用：Apache许可证."
		echo "+---------------------------------------------------+"
		while true
		do
			read -p "是否继续？[again/exit]： " Var
			if [[ ${Var} = 'again' ]] || [[ ${Var} = 'exit' ]]; then
				unset OpenSource
				unset Licence
				unset Doc
				unset Copyright
				unset Name
				break
			else
				echo ""
				echo "输入错误，请重新输入此项。"
				sleep 3
				echo "-------------------------------------"
				echo ""
				continue
			fi
		done
	fi

	if [[ ${OpenSource} = 'exit' ]] || [[ ${Licence} = 'exit' ]] || [[ ${Doc} = 'exit' ]] || [[ ${Copyright} = 'exit' ]] || [[ ${Name} = 'exit' ]] || [[ ${Var} = 'exit' ]]; then
		break
	fi
done
