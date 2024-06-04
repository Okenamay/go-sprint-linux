#!/bin/bash

# создаём каталог task с вложенными директориями
# task
#   dir1
#   dir2
#   dir3
#       dir4
mkdir ./task
mkdir ./task/dir1 ./task/dir2 ./task/dir3
mkdir ./task/dir3/dir4

# изменяем текущую директорию на task
cd task

# создаём пустой файл task/dir2/empty
touch ./dir2/empty

# создаём файл task/dir2/hello.sh с таким содержанием:
# #!/bin/bash
# echo "$1, привет!"
touch ./dir2/hello.sh
echo '#!/bin/bash' > ./dir2/hello.sh
echo '$1, привет!' >> ./dir2/hello.sh

# устанавливаем для task/dir2/hello.sh права rwxrw-r--
chmod 764 ./dir2/hello.sh

# сохраняем список файлов task/dir2 в task/dir2/list.txt
touch ./dir2/list.txt
ls ./dir2 > ./dir2/list.txt

# копируем содержимое каталога task/dir2 в каталог task/dir3/dir4
cp ./dir2/* ./dir3/dir4

# записываем в task/dir1/summary.txt список файлов с расширением *.txt
# находящихся в task, включая поддиректории

# дописываем в task/dir1/summary.txt содержимое task/dir2/list.txt

# определяем переменную окружения NAME со значением "Всем студентам"

# запускаем task/dir2/hello.sh с переменной окружения NAME в качестве аргумента
# вывод скрипта должен дописаться в файл task/dir1/summary.txt

# перемещаем с переименованием task/dir1/summary.txt в task/Практическое задание

# выводим на консоль содержимое файла task/Практическое задание
#cat ./Практическое задание

# ищем в файле "Практическое задание" строки, которые содержат слово "dir"
# и затем отсортировываем их

# меняем текущую директорию на родительскую для task
cd ..

# удаляем директорию task со всем содержимым
rm -r ./task
