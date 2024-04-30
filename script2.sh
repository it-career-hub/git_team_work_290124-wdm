#!/bin/bash
if [ ! -d ".git" ]; then
	echo "Текущая директория не является репозиторием Git."
	exit 1
fi
