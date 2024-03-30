---
## Front matter
lang: ru-RU
title: Лабораторная работа №8
subtitle: "Модель конкуренции двух фирм"
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

Изучить и построить модель конкуренции двух фирм.

# Задание

Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1 и 2.

Случай 1:

$\ \frac{dM_1}{d \theta } = M_1- \frac{b}{c_1}M_1M_2 - \frac{a_1}{c_1}M_1^2$

$\ \frac{dM_2}{d \theta } =\frac{c_2}{c_1}M_2 - \frac{b}{c_1}M_1M_2- \frac{a_2}{c_1}M_2^2$

Случай 2:

$\ \frac{dM_1}{d \theta } = M_1- \frac{b}{c_1}M_1M_2 - \frac{a_1}{c_1}M_1^2$

$\ \frac{dM_2}{d \theta } =\frac{c_2}{c_1}M_2 - (\frac{b}{c_1}+0.00073)M_1M_2- \frac{a_2}{c_1}M_2^2$

![Выбор варианта](image\Screenshot_3.png){#fig:001 width=40%}

# Случай 1: 

![Julia](image\lab08_1.png){#fig:002 width=30%}

![Modelica](image\1.png){#fig:003 width=30%}

# Случай 2: 

![Julia](image\lab08_2.png){#fig:004 width=30%}

![Modelica](image\2.png){#fig:005 width=30%}

# Вывод

В ходе выполнения лабораторной работы была изучена модель конкуренции двух фирм и были построены графики изменения оборотных средств фирмы 1 и фирмы 2 для двух случаев на языках Julia и Modelica.
