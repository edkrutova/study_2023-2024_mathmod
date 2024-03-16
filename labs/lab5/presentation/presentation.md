---
## Front matter
lang: ru-RU
title: Доклад на тему "Игра полковника Блотто"
author:
  - Крутова Екатерина Дмитриевна
lector: 
  - Кулябов Дмитрий Сергеевич, д.ф.-м.н., профессор, профессор кафедры теории вероятности и киберезопасности

institute:
  - Российский университет дружбы народов им. Патриса Лулумбы, Москва, Россия
date: 21 марта 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english


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

# Содержание

1. Введение
2. Теория игр и игры чистой кооперации
3. Равновесие Нэша
4. Математические модели игры чистой кооперации
5. Практические примеры и применение
6. Заключение
7. Список литературы

# Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Крутова Екатерина Дмитриевна
  * студентка 3-го курса НПИбд-01-21
  * Российский университет дружбы народов им. Патриса Лулумбы
  * [1032216536@pfur.ru](mailto:1032216536@pfur.ru)
  * <https://edkrutova.github.io/ru/>

:::
::: {.column width="30%"}

![](./image/photo.jpg)

:::
::::::::::::::

# Введение

Цель данного доклада - рассмотреть математическое моделирование игры "Полковник Блотто" и его применение в анализе стратегий игроков. В ходе работы будет проведен обзор основных концепций игры, математическая формализация задачи, рассмотрены возможные приложения результатов анализа в реальных ситуациях.

# Описание модели

- Создать шаблон презентации в Markdown
- Описать алгоритм создания выходных форматов презентаций

# Оборона города

Условие:

- 2 игрока: A и B

- Игрок A обладает 4 единиц ресурса, игрок B имеет 3 единиц

- 2 поля

- Тай-брейкер: если 2 игрока поставили одинаковое число ресурса на поле, то никто ничего не получает.

- Если у полковника Блотто на позиции полков больше, чем у противника, то его выигрыш на этой позиции равен числу полков противника плюс один (за захват позиции). Если у B полков больше, то A теряет все свои полки и 1 за позицию.

Решение:

![Матрица игры](image/1.png){#fig:001 width=70%}

# Примеры применения 

- Военное планирование

- Разработка стратегий управления портфелем в инвестиционной сфере

- Разработка маркетинговых стратегий и прогнозирование реакции конкурентов на различные маркетинговые действия

- Политика

# Заключение

В дальнейших исследованиях темы игры "Полковник Блотто" можно расширить, изучив более сложные варианты игры, учитывая дополнительные факторы и усложняя моделирование. Также возможно применение более продвинутых математических методов для анализа игры и прогнозирования исходов, и поиск однозначного математического решения.

# Список литературы

1. Borel, Émile. "The Theory of Play and Integral Equations with Skew Symmetric Kernels." Econometrica 21.1, 1953. JSTOR Journals. The Econometric Society. [Электронный ресурс] URL: <http://www.jstor.org/stable/1906946> (дата обращения: 13.03.2024)

2. A. Ahmadinejad, S. Dehghani, M. Hajiaghay, B. Lucier, H. Mahini, and S. Seddighin, “From Duels to Battlefields: Computing Equilibria of Blotto and Other Games”, AAAI, vol. 30, no. 1, Feb. 2016.

3. Laslier, J.-F.; Picard, N. (2002). "Distributive politics and electoral competition". Journal of Economic Theory. 103: 106–130.

4. Merolla, Jennifer, Michael Munger, and Michael Tofias. "Lotto, Blotto, or Frontrunner: An Analysis of Spending Patterns by the National Party Committees in the 2000 Presidential Election". Midwest Political Science Association. Palmer House, Chicago, IL. 6 Apr. 2003. [Электронный ресурс] URL: <https://web.archive.org/web/20080407161417/http://www.socsci.duke.edu/ssri/federalism/papers/tofiasmunger.pdf> (дата обращения: 13.03.2024)

5. Szentes, B.; Rosenthal, R. (2003). "Three-object, Two-Bidder Simultaneous Auctions: Chopsticks and Tetrahedra". Games and Economic Behavior. 44: 114–133
