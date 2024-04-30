#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Проверка существования исходной директории

# Проверка существования целевой директории

# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию

echo "Введите расширение файлов, которые нужно скопировать (например: txt, rtf, sh):"
read file_extension

echo "Введите путь к директории, куда скопировать файлы:"
read target_directory

files=$(find . -type f -name "*.$file_extension")

if [ -z "$files" ]; then
    echo "Файлов с расширением .$file_extension не найдено."
else
    echo "Найденные файлы с расширением .$file_extension:"
    echo "$files"

    echo "Копирование файлов в $target_directory..."
    cp $files "$target_directory" && echo "Копирование завершено."
fi
