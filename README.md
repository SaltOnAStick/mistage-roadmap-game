# mistage-roadmap-game
# Roadmap Game

**Table of Contents**

- [mistage-roadmap-game](#mistage-roadmap-game)
    + [Демо вебсайта проекта](#toc2)
  * [Описание проекта](#toc3)
    + [План вебсайта](#toc4)
      - [План вебстраниц](#toc5)
      - [План контента вебсайта](#toc6)
      - [План разделов по веб-страницам](#toc7)
  * [Docker](#tocD1)
  * [Запуск проекта](#toc8)
    + [Тестирование](#toc9)
    + [Установка и запуск вебсевера:](#toc10)
      - [setup.sh](#setupsh)
      - [start.sh](#startsh)
    + [Readme.txt](#readmetxt)
  * [Скрипты установки и запуска проекта](#toc11)
    + [setup.sh](#setupsh-1)
    + [start.sh](#startsh-1)
  * [Скрипты для Windows](#toc12)
    + [winsetup.cmd](#winsetupcmd)
    + [jsdoc-run.cmd](#jsdoc-runcmd)
    + [open.site.cmd](#opensitecmd)
    + [open.docs.cmd](#opendocscmd)

------------


<a name="toc2"></a>
### Демо вебсайта проекта
Открыть демо вебсайта проекта можно по этой ссылке:
[https://mistagedev.github.io/](https://mistagedev.github.io/ "https://mistagedev.github.io/")

------------
<a name="toc3"></a>
## Описание проекта
Описание проекта вебсайта «Игра в жанре Выживание-Песочница» можно представить следующим образом:

 > Проект «Игра в жанре Выживание-Песочница» - это веб-ресурс, на котором подготовлен материал для создания своей игры.

> Материал структурирован в виде Дорожной карты. Кроме того, на веб-ресурсе продемонстрирован личный выбор автора статей, например: выбор инструментария, игрового движка, жанров, технологий, сюжета.

> Вебсайт должен помочь начинающим разработчикам игр пройтись по Дорожной карте и разобраться в том, какую игру они хотят сделать и какие программу и теорию следует для этого использовать. Вебсайт должен помочь начинающим разработчикам игр пройтись по Дорожной карте и разобраться в том, какую игру они хотят сделать и какие программу и теорию следует для этого использовать.

### UML (use-case diagram)

По установке и возможном использовании проекта сделана use-case диаграмма:

![Image alt](https://github.com/SaltOnAStick/mistage-roadmap-game/raw/main/uml.png)

------------

<a name="toc4"></a>
### План вебсайта
Вебсайт проекта представляет поэтапный план разработки игр.
<a name="toc5"></a>
#### План вебстраниц
Нам вебсайте представлены веб-страницы со следующими тематическими заголовками, соответствующие материалу повествования: 

1.	Главная страница – «Roadmap по созданию игры»;
2.	Страница 1 – «Введение»;
3.	Страница 2 – «Жанры»;
4.	Страница 3 – «Движки»;
5.	Страница 4 – «Планирование»;
6.	Страница 5 – «Реализация»;

<a name="toc6"></a>
#### План контента вебсайта
На вебсайте можно ознакомиться со следующим подготовленным материалом:

1.	Этапы разработки видеоигры;
2.	Почему же сейчас тема игр наиболее актуальная;
3.	В какой профессиональной деятельности используются видеоигры;
4.	Материал для мотивации к разработке видеоигр;
5.	Какие существуют варианты реализации игр, кроме как разработка на движке и языках программирования;
6.	Нуждается ли общество в видеоиграх; 
7.	История и описание жанров;
8.	Чем же отличаются элементарные жанры от гибридных;
9.	Игры каких жанров наиболее популярны;
10.	Как работать с чужим опытом при создании своей игры;
11.	Как выработать концепцию своей игры;
12.	Можно ли написать видеоигру в Excel;
13.	Почему же чаще обращаются к готовым движкам;
14.	Какие движки лидируют на рынке;
15.	Какие технологии для создания игры использую я;
16.	Какие используются технологии для режима строительства в видеоиграх;
17.	Что такое воксели;
18.	Реализация некубической визуализации вокселей;
19.	Какой инструментарий полезен разработчику компьютерных игр;
20.	И многое другое.

<a name="toc7"></a>
#### План разделов по веб-страницам

На вебсайте проекта можно узнать следующий материал, соответствующий тематике заголовка веб-страницы:

1.	Главная страница – «Roadmap по созданию игры»:
	1.	Этапы разработки видеоигры;
2.	Страница 1 – «Введение»:
	1.	Почему тема разработки игр сейчас наиболее актуальная?
	2.	Новое время- новые возможности
		1.	На чём разрабатывать
		2.	Как разрабатывать
		3.	Кому разрабатывать
	3.	Разработка игр- от интересного к полезному
		1.	Симуляторы
		2.	Технологии дополненной и виртуальной реальности
		3.	Школы и Видеоигры
	4.	Подведём итоги
3.	Страница 2 – «Жанры»:
	1.	Почему так важно об этом подумать?
	2.	Простейшие игровые жанры
	3.	Аркада
	4.	Платформер
	5.	Элементарные жанры
	6.	Шутер
	7.	Симулятор
	8.	Песочница
	9.	Дополнительная классификация
		1.	Игры с заложенной большой вариативностью решений
		2.	Игры командообразующие
		3.	Игры психологические
	10.	Короли жанров
		1.	Open RPG
		2.	Хоррор
		3.	Стратегия
		4.	Выживание
	11.	В заключение
4.	Страница 3 – «Движки»:
	1.	На чём пишут игры?
	2.	Почему же чаще обращаются к готовым движкам?
	3.	Классификации игровых движков
	4.	Unreal Engine и Unity
	5.	Сравнение движков
	6.	В заключение
5.	Страница 4 – «Планирование»:
	1.	К чему же мы пришли?
	2.	Какой выбрать жанр?
		1.	Песочница.
		2.	Путешествие.
		3.	RPG.
		4.	Выживание.
		5.	Симулятор.
		6.	Квесты.
	3.	Выработка концепции
	4.	В заключение
6.	Страница 5 – «Реализация»:
	1.	Последняя незатронутая тема
	2.	Sandbox
		1.	Mesh
		2.	Voxel
	3.	Зачем делать игру на основе вокселей
	4.	Два представителя визуализации вокселей
	5.	Детали и алгоритмы
	6.	Инструменты
	7.	Сложности при работе с вокселями
	8.	Пару слов про движок
		1.	Готовые библиотки, поддерживающие воксели
	9.	Конец RoadMap

------------
<a name="tocD1"></a>
## Docker
Если вы готовы запустить проект в Docker, то рекомендуется использовать *Dockerfile* из директории *"dockersetup"*-
тогда **не придётся скачивать  весь репозиторий** (только *Dockerfile*), т.к. он будет скачан автоматически.

Пример команд запуска контейнера:

```bash
docker build -t dockerwebmistage .
docker run --rm -it -p8080:8080 dockerwebmistage
```

-------------
<a name="toc8"></a>
## Запуск проекта

<a name="toc9"></a>
### Тестирование
Протестировано на Windows 10 и Ubuntu 20.04  (cocalc.com и replit.com).

------------

<a name="toc10"></a>
### Установка и запуск вебсевера:
#### setup.sh
Для автоматической установки используется файл [*setup.sh* ](#script-setup.sh), который определяет ОС, создаёт документацию (jsdoc) и запускает файл [*start.sh*](#script-start.sh).
#### start.sh
Файл [*start.sh*](#script-start.sh) запускает вебсервер на NodeJS для сайта проекта, запускает вебсервер сгенерированной документации и обновляет созданную ранее документацию.

------------


### Readme.txt
Описание этапов установки и запуска из файла *readme.txt*:
    At first, start setup.sh to setup project.
    Please, run start.sh if project is ready.
    
    
    ### Main plan (WIN and SH installation): ###
    # Installation: #
     1) $ bash setup.sh
     2) Script can select current OS (sh/cmd)
     3) You can access current OS (y/n) or select better files (sh/cmd)
        Default answer is [y]
     4) Script can run project by start.sh after installation(y/n)
        Default answer is [n]
     5) Script will install jsdoc from project.json (npm install)
     6) Script will create JSDOCs (but you can update it after installation too)
     7) Instalation completed!
     *8) Starting start.sh if it was selected
    # Run project: #
     1) $ bash start.sh
     2) You can select, what script will run (webserver/docwebserver/docupdate/close)
        Default answer is [close]
    MistAgeRoadmap Webserver (webserver):
     3) You can write port
        Default answer is [8080]
     *4) CTRL+C to close webserver 
    JSDOCs Webserver (docwebserver):
     3) You can write port
        Default answer is [8081]
     *4) CTRL+C to close webserver 
    Update JSDOCs (docupdate):
     3) Update JSDOcs
    ###                                      ###
    ########################
    
    ########################
    ### *Windows plan (WIN- Manual installation,     ### 
    ### but you can run only Main plan by Git Bash): ###
    # Installation: #
     0) Install NodeJS with npm 
     1) run winsetup.cmd
     2) run jsdoc-run.cmd (but you can update it after installation too)
    # All parts to run project: #
     JSDOC) run jsdoc-run.cmd
     JSDOCs Webserver) run open.docs.cmd
    	Default port: 8081
     MistAgeRoadmap Webserver) run open.site.cmd
    	Default port: 8080
    ###                                              ###
    ###########################

------------
<a name="toc11"></a>
## Скрипты установки и запуска проекта
<a name="script-setup.sh"></a>
### setup.sh
Скрипт подготовки вебсервера и документации из *setup.sh*:

```bash
#!/bin/bash
#Run setup.sh, if you want to setup project!
#Run start.sh, if project is ready!

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
		current_os="linux-gnu"
		sh_or_cmd="sh"
		other_start="cmd"
		# 
elif [[ "$OSTYPE" == "darwin"* ]]; then
		current_os="darwin"
		sh_or_cmd="sh"
		other_start="cmd"
		# Mac OSX
elif [[ "$OSTYPE" == "cygwin" ]]; then
		current_os="cygwin"
		sh_or_cmd="cmd"
		other_start="sh"
		# POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
		current_os="msys"
		sh_or_cmd="cmd"
		other_start="sh"
		# Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
		current_os="win32"
		sh_or_cmd="cmd"
		other_start="sh"
		# 
elif [[ "$OSTYPE" == "freebsd"* ]]; then
		current_os="freebsd"
		sh_or_cmd="sh"
		other_start="cmd"
		#
else
		current_os="unknown"
		sh_or_cmd="sh"
		other_start="cmd"
		# Unknown.
fi

echo "### Hello World! ###"
echo "### I'm MistAgeAssistant! ###"
echo "### I want to help you install webserver and create documentation. ###"
echo "# Current OS is $current_os #"
echo "# I think, that I will use *.$sh_or_cmd files for installation #"
echo "# Do you agree? #"
echo "# P.s. else I will use *.$other_start files... #"
echo "# Please, write answer... (y/n/sh/cmd) [y] #"

read input_value

if [ "$input_value" == "n" ]
then
		sh_or_cmd="$other_start"
elif [ "$input_value" == "sh" ]
then
		sh_or_cmd="sh"
elif [ "$input_value" == "cmd" ]
then
		sh_or_cmd="cmd"
fi
		
echo "# Good!  I will use *.$sh_or_cmd files #"

os_conf_file="osconf.txt"
rm -f -- $os_conf_file
echo "$sh_or_cmd" >> "$os_conf_file"

echo "# Use next command to run project: #"
echo "# $ bash start.sh #"
echo "# I can run it after installation! #"
echo "# Do you agree? #"
echo "# Please, write answer... (y/n) [n] #"

read input_v

if [ "$sh_or_cmd" == "cmd" ]
then
		cmd "/C winsetup.cmd"
		cmd "/C jsdoc-run.cmd"
		read input_s
else
		npm install
		node_modules/.bin/jsdoc ./src -r -d docs
fi
echo ""
echo "# Instalation completed! #"


if [ "$input_v" == "y" ]
then
		echo "### Good! Run start.sh...! ###"
		bash start.sh
else
		echo "### Good! Buy! ###"
fi
```
------------

<a name="script-start.sh"></a>
### start.sh
Скрипт запуска вебсервера и обновления документации из *start.sh*:

```bash
#!/bin/bash
#Run setup.sh, if you want to setup project!
#Run start.sh, if project is ready!

echo "### Hello World! ###"
echo "### I'm MistAgeAssistant! ###"
echo "### Hmm. You installed project yet! ###"

os_conf_file="osconf.txt"
sh_or_cmd="$(cat $os_conf_file)"
echo "### You selected *.$sh_or_cmd files. ###"
echo "### What do you want run? ###"
echo "(webserver/docwebserver/docupdate/close)"
echo "P.s. Default is [close]"
echo "Write word:"

read input_value
#webserver
#docwebserver
#docupdate
#close
#[close]
if [ "$sh_or_cmd" == "cmd" ]
then
if [ "$input_value" == "webserver" ]
then
echo "Run webserver for MistAgeRoadmap...!"
echo "localhost:8080"
cmd "/C open.site.cmd"	
elif [ "$input_value" == "docwebserver" ]
then
echo "Run webserver for JSDOCs...!"
echo "localhost:8081"
cmd "/C open.docs.cmd"	
elif [ "$input_value" == "docupdate" ]
then
echo "Update docs...!"
cmd "/C jsdoc-run.cmd"	
fi
else
if [ "$input_value" == "webserver" ]
then
echo "Run webserver for MistAgeRoadmap...!"
echo "Which port I can use?"
echo "P.s. Default is [8080]"
echo "Write port:..."
current_port=8080
read -p "Type a number or a string: " input_port
if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
current_port=$input_port
fi
echo "localhost:$current_port"
cd src
"../node_modules/.bin/static-server" -p $current_port
cd ".."
elif [ "$input_value" == "docwebserver" ]
then
echo "Run webserver for JSDOCs...!"
echo "Which port I can use?"
echo "P.s. Default is [8081]"
echo "Write port:..."
current_port=8081
read -p "Type a number or a string: " input_port
if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
current_port=$input_port
fi
echo "localhost:$current_port"
cd docs
"../node_modules/.bin/static-server" -p $current_port
cd ".."
elif [ "$input_value" == "docupdate" ]
then
node_modules/.bin/jsdoc ./src -r -d docs
fi
fi
echo "### Good! Buy! ###"
```

------------
<a name="toc12"></a>
## Скрипты для Windows
Эти скрипты запускает *setup.sh* на Windows, но также их можно запускать последовательно, как это описано в файле *readme.txt*.

### winsetup.cmd
Скрипт подготовки NodeJS из *winsetup.cmd*:

```bash
REM npm install
call "C:\Program Files\nodejs\npm.cmd" install
```
------------


### jsdoc-run.cmd
Скрипт создания/обновления документации *jsdoc-run.cmd*:

```bash
REM At first, start setup.sh to setup project.
REM please, run start.sh if project is ready.
REM this script will create JSDOCs
set PATH=%PATH%;C:\Program Files\nodejs;
call "./node_modules/.bin/jsdoc.cmd" ./src -r -d docs
pause
```
------------


### open.site.cmd
Скрипт запуска вебсервера NodeJS для вебсайта проекта из *open.site.cmd* (на порту 8080):

```bash
REM At first, start setup.sh to setup project.
REM please, run start.sh if project is ready.
REM this script will run webserver for MistAgeRoadmap on localhost:8080
cd src
set PATH=%PATH%;C:\Program Files\nodejs;
call "..\node_modules\.bin\static-server.cmd" -p 8080 
cd ..
```
------------


### open.docs.cmd
Скрипт запуска вебсервера NodeJS для документации из *open.docs.cmd* (на порту 8080).

```bash
REM At first, start setup.sh to setup project.
REM please, run start.sh if project is ready.
REM this script will run webserver for JSDOCs on localhost:8081
cd docs
set PATH=%PATH%;C:\Program Files\nodejs;
call "..\node_modules\.bin\static-server.cmd" -p 8081
cd ..
```
------------

## End
