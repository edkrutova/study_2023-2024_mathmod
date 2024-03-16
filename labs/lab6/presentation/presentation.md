---
## Front matter
lang: ru-RU
title: Лабораторная работа №6
subtitle: "Модель эпидемии"
author:
  - Крутова Е. Д.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 24 февраля 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english
mainfont: Arial 
monofont: Courier New 
fontsize: 12pt

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Цель работы

Изучить и построить модель эпидемии.

# Задание

Постройте графики изменения числа особей в каждой из трех групп I, R, S. Рассмотрите, как будет протекать эпидемия в случае:

1) если I(0) <= I*,

2) если I(0) > I*.

![Выбор варианта](image\Screenshot_3.png){#fig:001 width=40%}

# Выполнение работы

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове (N=12 600) в момент начала эпидемии (t=0) число заболевших людей (являющихся распространителями инфекции) I(0)=160, А число здоровых людей с иммунитетом к болезни R(0)=56. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени S(0)=N-I(0)- R(0).

# Случай I(0) <= I*

![Julia](image\lab06_1.png){#fig:002 width=30%}

![Modelica](image\m1.png){#fig:003 width=30%}

# Случай I(0) > I*

![Julia](image\lab06_2.png){#fig:004 width=30%}

![Modelica](image\m2.png){#fig:005 width=30%}

# Вывод

В ходе выполнения лабораторной работы была изучена модель эпидемии и построена модель на языках Julia и Open Modelica. В итоге проделанной работы мы построили графики зависимости численности особей трех групп S, I, R для случаев, когда больные изолированы и когда они могут заражать особей группы S.
