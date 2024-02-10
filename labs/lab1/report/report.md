---
## Front matter
title: "Лабораторная работа №1"
subtitle: "Работа с git и язык Markdown"
author: "Крутова Екатерина Дмитриевна, НПИбд-01-21"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Подготовить рабочее пространство для лабораторной работы, Изучить систему контроля версий Git и язык разметки Markdown.

# Задание

Создать репозиторий курса, настроить каталог курса, сделать отчёт в формате Markdown, сохранить изменения на Github.

# Теоретическое введение

## Git

Git — система управления версиями с распределенной архитектурой. В отличие от некогда популярных систем вроде CVS и Subversion (SVN), где полная история версий проекта доступна лишь в одном месте, в Git каждая рабочая копия кода сама по себе является репозиторием. Это позволяет всем разработчикам хранить историю изменений в полном объеме.

Разработка в Git ориентирована на обеспечение высокой производительности, безопасности и гибкости распределенной системы.


## Markdown

Markdown — облегчённый язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций.

# Выполнение лабораторной работы

1. Установка необходимого ПО (рис. [-@fig:001] - [-@fig:003]).

![Установка pandoc](image\Screenshot_1.png){#fig:001 width=70%}

![Установка make](image\Screenshot_2.png){#fig:002 width=70%}

![Установка LaTeX](image\Screenshot_3.png){#fig:003 width=70%}

2. Создание репозитория курса на основе шаблона (рис. [-@fig:004] - [-@fig:006])

![Создание репозитория](image\Screenshot_4.png){#fig:004 width=70%}

Созданный репозиторий (рис. [-@fig:005])

![Репозиторий](image\Screenshot_5.png){#fig:005 width=70%}

![Содержимое репозитория](image\Screenshot_6.png){#fig:006 width=70%}

3. Настройка каталога курса и отправка файлов на сервер (рис. [-@fig:007] - [-@fig:009])

![Удаление лишнего файла](image\Screenshot_7.png){#fig:007 width=70%}

![Создание необходимых каталогов](image\Screenshot_8.png){#fig:008 width=70%}

![Отправка файлов на сервер](image\Screenshot_9.png){#fig:009 width=70%}

4. Создание отчета в 3 форматах (рис. [-@fig:010] - [-@fig:011])

![Конвертация файлов](image\Screenshot_11.png){#fig:010 width=70%}

![Появившиеся файлы](image\Screenshot_12.png){#fig:011 width=70%}

# Выводы

Мы смогли настроить рабочее пространство для лабораторной работы. Изучили систему контроля версий Git и язык разметки Markdown, атакже выполнили поставленне задачи.
