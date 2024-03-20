---
## Front matter
title: "Лабораторная работа №7"
subtitle: "Эффективность рекламы"
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

Изучить и построить модель эффективности рекламы.

# Задание

В соответствии с формулой  (Sn mod N)+1, где Sn — номер студбилета, N — количество заданий, я взяла вариант 37 (рис. [-@fig:001]).

![Выбор варианта](image/Screenshot_3.png){#fig:001 width=70%}

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1. $\ \frac{dn}{dt}=(0.13 + 0.000013*n(t))*(N - n(t))$

2. $\ \frac{dn}{dt}=(0.000031 + 0.31*n(t))*(N - n(t))$

3. $\ \frac{dn}{dt}=(0.13*t + 0.31*cos(t)*n(t))*(N - n(t))$

При этом объем аудитории N=1140, в начальный момент о товаре знает 10 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Теоретическое введение

Организуется рекламная кампания нового товара или услуги. Необходимо, чтобы прибыль будущих продаж с избытком покрывала издержки на рекламу. Вначале расходы могут превышать прибыль, поскольку лишь малая часть потенциальных покупателей будет информирована о новинке. Затем, при увеличении числа продаж, возрастает и прибыль, и, наконец, наступит момент, когда рынок насытиться, и рекламировать товар станет бесполезным.

Предположим, что торговыми учреждениями реализуется некоторая продукция, о которой в момент времени t из числа потенциальных покупателей N знает лишь n
покупателей. Для ускорения сбыта продукции запускается реклама по радио, телевидению и других средств массовой информации. После запуска рекламной кампании информация о продукции начнет распространяться среди потенциальных покупателей путем общения друг с другом. Таким образом, после запуска рекламных объявлений скорость изменения числа знающих о продукции людей пропорциональна как числу знающих о товаре покупателей, так и числу покупателей о нем не знающих

Математическая модель распространения рекламы описывается уравнением:

$\ \frac{dn}{dt}=(\alpha_1(t) + \alpha_2(t)*n(t))*(N - n(t))$

# Выполнение лабораторной работы

## Выполнение с помощью Julia

### Случай 1: $\ \frac{dn}{dt}=(0.13 + 0.000013*n(t))*(N - n(t))$

```
using Plots
using DifferentialEquations

N = 1140
n0 = 10

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.13 + 0.000013*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 30.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (1) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)

savefig(plt, "lab07_1.png")
```

### Случай 2: $\ \frac{dn}{dt}=(0.000031 + 0.31*n(t))*(N - n(t))$

```
using Plots
using DifferentialEquations

N = 1140
n0 = 10

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.000031 + 0.31*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 0.1)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

max_dn = 0;
max_dn_t = 0;
max_dn_n = 0;
for (i, t) in enumerate(T)
    if sol(t, Val{1})[1] > max_dn
        global max_dn = sol(t, Val{1})[1]
        global max_dn_t = t
        global max_dn_n = n[i]
    end
end

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (2) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)
plot!(
  plt,
  [max_dn_t],
  [max_dn_n],
  seriestype = :scatter,
  color = :red)

savefig(plt, "lab07_2.png")
```

### Случай 3: $\ \frac{dn}{dt}=(0.13*t + 0.31*cos(t)*n(t))*(N - n(t))$

```
using Plots
using DifferentialEquations

N = 1140
n0 = 10

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.13*t + 0.31*cos(t)*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 0.1)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (3) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)

savefig(plt, "lab07_3.png")
```

Полученные графики (рис. [-@fig:002] - [-@fig:004]).

![Случай 1](image/lab07_1.png){#fig:002 width=70%}

![Случай 2](image/lab07_2.png){#fig:003 width=70%}

![Случай 2](image/lab07_3.png){#fig:004 width=70%}

## Выполнение с помощью Open Modelica

### Случай 1: $\ \frac{dn}{dt}=(0.13 + 0.000013*n(t))*(N - n(t))$

```
model lab07_1
Real N = 1140;
Real n;
initial equation
n = 10;
equation
der(n) = (0.13 + 0.000013*n)*(N-n);
end lab07_1;
```

### Случай 2: $\ \frac{dn}{dt}=(0.000031 + 0.31*n(t))*(N - n(t))$

```
model lab07_2
Real N = 1140;
Real n;
initial equation
n = 10;
equation
der(n) = (0.000031 + 0.31*n)*(N-n);
end lab07_2;
```

### Случай 3: $\ \frac{dn}{dt}=(0.13*t + 0.31*cos(t)*n(t))*(N - n(t))$

```
model lab07_3
Real N = 1140;
Real n;
initial equation
n = 10;
equation
der(n) = (0.13*n + 0.31*cos(time)*n)*(N-n);
end lab07_3;
```

Полученные графики (рис. [-@fig:005] - [-@fig:007]).

![Случай 1](image/1.png){#fig:005 width=70%}

![Случай 2](image/2.png){#fig:006 width=70%}

![Случай 2](image/3.png){#fig:007 width=70%}

# Выводы

В ходе выполнения лабораторной работы была изучена модель эффективности рекламы и были построены графики распространения рекламы для трех случаев на языках Julia и OpenModelica.

# Список литературы

[1] Документация по Julia: https://docs.julialang.org/en/v1/

[2] Документация по OpenModelica: https://openmodelica.org/

[3] Решение дифференциальных уравнений: https://www.wolframalpha.com/

[4] Мальтузианская модель роста: https://www.stolaf.edu//people/mckelvey/envision.dir/malthus.html