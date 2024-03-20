---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
subtitle: "Модель эффективности рекламы"
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

Изучить и построить модель эффективности рекламы.

# Задание

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1. $\ \frac{dn}{dt}=(0.13 + 0.000013*n(t))*(N - n(t))$

2. $\ \frac{dn}{dt}=(0.000031 + 0.31*n(t))*(N - n(t))$

3. $\ \frac{dn}{dt}=(0.13*t + 0.31*cos(t)*n(t))*(N - n(t))$

При этом объем аудитории N=1140, в начальный момент о товаре знает 10 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

![Выбор варианта](image\Screenshot_3.png){#fig:001 width=40%}

# Случай 1: $\ \frac{dn}{dt}=(0.13 + 0.000013*n(t))*(N - n(t))$

![Julia](image\lab07_1.png){#fig:002 width=30%}

![Modelica](image\1.png){#fig:003 width=30%}

# Случай 2: $\ \frac{dn}{dt}=(0.000031 + 0.31*n(t))*(N - n(t))$

![Julia](image\lab07_2.png){#fig:004 width=30%}

![Modelica](image\2.png){#fig:005 width=30%}

# Случай 3: $\ \frac{dn}{dt}=(0.13*t + 0.31*cos(t)*n(t))*(N - n(t))$

![Julia](image\lab07_3.png){#fig:006 width=30%}

![Modelica](image\3.png){#fig:007 width=30%}

# Вывод

В ходе выполнения лабораторной работы была изучена модель эффективности рекламы и были построены графики распространения рекламы для трех случаев на языках Julia и OpenModelica.
