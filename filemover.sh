
#!/bin/bas

#file_extension=".txt"

if ! ls "$source_dir"/*.$file_extension >/dev/null 2>&1; then
    echo "Предупреждение: Нет файлов с расширением .$file_extension в исходной директории."
    exit 1
fi

cp "$source_dir"/*.$file_extension "$target_dir"
echo "Файлы с расширением .$file_extension скопированы в целевую директорию."

