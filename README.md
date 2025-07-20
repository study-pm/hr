# Разработка программных модулей

- [Overview](#overview)
  - [About this file](#about-this-file)
  - [Project Structure](#project-structure)

## Overview

### About this file
The purpose of this file is to provide basic overview, setup, usage and other instructions as well as the general background information about the project.

### Project Structure
This section defines the general project's structure and provides a top-level file/directory layout. Some items may not be present in the actual project or listed here depending on the specific user's configuration and current project state.

```sh
📂 MySchool                  # Проектный (корневой) каталог
├──📁 .vs                    # Локальные настройки среды разработки
├──📁 bin                    # Скомпилированные бинарные данные
├──📁 Controls               # Пользовательские элементы
├──📂 Data                   # Работа с данными
│   ├──📁 Migrate            # Резервные копии объектов БД с данными
│   ├──📁 Models             # Модели данных
│   └──📁 Sources            # Источники данных
├──📁 Images                 # Растровые графические данные
├──📁 Models                 # Модели поведений
├──📁 obj                    # Промежуточные файлы компиляции
├──📁 packages               # Внешние библиотеки и зависимости
├──📁 Pages                  # Страницы
├──📁 Properties             # Метаданные сборки
├──📁 Res                    # Ресурсы
├──📁 Services               # Сервисы
├──📂 Static                 # Статическое содержимое
│   ├──📁 Fonts              # Шрифты
│   ├──📁 Icons              # Исходники векторных пиктограмм
│   ├──📁 Img                # Сервисные изображения (оформление UI)
│   ├──📁 Keys               # Ключи шифрования
│   └──📁 Pwd                # Пароли пользователей
├──📁 Test                   # Проект модульного тестирования MSTest
├──📁 Utilities              # Утилиты
├──📜 .gitignore             # Исключения системы контроля версий
├──📜 App.config             # Конфигурация приложения
├──📜 App.xaml               # Точка входа (разметка)
├──📜 App.xaml.cs            # Точка входа (отделенный код)
├──📜 HR.csproj              # Структура и конфигурация сборки
├──📜 HR.sln                 # Файл решения
├──📜 MainWindow.xaml        # Главное окно (разметка)
├──📜 MainWindow.xaml.cs     # Главное окно (отделенный код)
├──📜 packages.config        # Файл управления пакетами NuGet
└──📜 README.md              # Описание проекта и инструкции
```
