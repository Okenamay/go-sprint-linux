#!/bin/bash

# создаём каталог task с вложенными директориями
# task
mkdir task
#  dir1
cd task && mkdir dir1
#   dir2
mkdir dir2
#   dir3
mkdir dir3
#       dir4
cd dir3 && mkdir dir4

# изменяем текущую директорию на task
cd .. && touch test.txt

# создаём пустой файл task/dir2/empty
cd dir2 && touch empty

# создаём файл task/dir2/hello.sh с таким содержанием:
# #!/bin/bash
# echo "$1, привет!"
touch hello.sh && echo '#!/bin/bash
echo "$1, привет!"'> hello.sh

# устанавливаем для task/dir2/hello.sh права rwxrw-r--
chmod 765 hello.sh

# сохраняем список файлов task/dir2 в task/dir2/list.txt
touch list.txt && ls > list.txt

# копируем содержимое каталога task/dir2 в каталог task/dir3/dir4
cp -r ../dir2 ../dir3/dir4

# записываем в task/dir1/summary.txt список файлов с расширением *.txt
# находящихся в task, включая поддиректории
cd ../dir1 && touch summary.txt && find ../../ -type f -name "*.txt" > summary.txt

# дописываем в task/dir1/summary.txt содержимое task/dir2/list.txt
cat ../dir2/list.txt >> summary.txt

# определяем переменную окружения NAME со значением "Всем студентам"
export NAME="Всем студентам"

# запускаем task/dir2/hello.sh с переменной окружения NAME в качестве аргумента
# вывод скрипта должен дописаться в файл task/dir1/summary.txt
../dir2/hello.sh "$NAME" >>summary.txt

# перемещаем с переименованием task/dir1/summary.txt в task/Практическое задание
mv summary.txt "../Практическое задание"

# выводим на консоль содержимое файла task/Практическое задание
cat "../Практическое задание"

# ищем в файле "Практическое задание" строки, которые содержат слово "dir"
# и затем отсортировываем их
grep "dir" "../Практическое задание" | sort

# меняем текущую директорию на родительскую для task
cd ../../

# удаляем директорию task со всем содержимым
rm -r task

