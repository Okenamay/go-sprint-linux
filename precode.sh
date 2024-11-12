#!/bin/bash

# создаём каталог task с вложенными директориями
# task
#   dir1
#   dir2
#   dir3
#       dir4
mkdir /home/task /home/task/dir1 /home/task/dir2 /home/task/dir3 /home/task/dir3/dir4
# изменяем текущую директорию на task
cd /home/task
# создаём пустой файл task/dir2/empty
touch /home/touch/dir2/empty
# создаём файл task/dir2/hello.sh с таким содержанием:
# #!/bin/bash
# echo "$1, привет!"
echo -e'#!/bin/bash\necho "$1, привет!"' > /home/task/dir2/hello.sh
# устанавливаем для task/dir2/hello.sh права rwxrw-r--
chmod 764 /home/task/dir2/hello.sh
# сохраняем список файлов task/dir2 в task/dir2/list.txt
ls /home/task/dir2 > /home/task/dir2/list.txt
# копируем содержимое каталога task/dir2 в каталог task/dir3/dir4
cp -r /home/task/dir2/* /home/task/dir3/dir4/
# записываем в task/dir1/summary.txt список файлов с расширением *.txt
# находящихся в task, включая поддиректории
find /home/task -type f -name "*.txt" > /home/task/dir1/summary.txt
# дописываем в task/dir1/summary.txt содержимое task/dir2/list.txt
cat /home/task/dir2/list.txt >> /home/task/dir/summary.txt
# определяем переменную окружения NAME со значением "Всем студентам"
export NAME="Всем студентам"
# запускаем task/dir2/hello.sh с переменной окружения NAME в качестве аргумента
# вывод скрипта должен дописаться в файл task/dir1/summary.txt
NAME="Всем студентам" /home/task/dir2/hello.sh >> /home/task/dir1/summary.txt
# перемещаем с переименованием task/dir1/summary.txt в task/Практическое задание
mv /home/task/dir1/summary.txt /home/task/"Практическое задание"
# выводим на консоль содержимое файла task/Практическое задание
cat /home/task/"Практическое задание"
# ищем в файле "Практическое задание" строки, которые содержат слово "dir"
# и затем отсортировываем их
grep "dir" /home/task/"Практическое задание" | sort
# меняем текущую директорию на родительскую для task
cd ..
# удаляем директорию task со всем содержимым
rm -rf /home/task