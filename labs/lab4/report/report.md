---
## Front matter
title: "Доклад на тему 'Игра чистой кооперации'"
subtitle: "Дисциплина: 'Математическое моделирование"
author: "Абдуллина Ляйсан Раисовна, НПИбд-01-21"

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
figureTitle: "Скриншот"
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


# Введение

В современном мире принятие решений является одним из ключевых аспектов различных сфер деятельности, будь то экономика, политика, управление или социальные науки. Однако во многих случаях, для достижения оптимальных результатов необходимо не просто действовать в одиночку, а сотрудничать и согласовывать свои действия с другими участниками. В этом контексте теория игр и, в частности, игры чистой кооперации представляют собой важный инструмент анализа стратегий взаимодействия между рациональными участниками. Развитие этой теории связано с работами выдающегося ученого - Джон фон Нейман.

Анализ ситуаций чистой кооперации становится особенно актуальным в современном обществе, где глобализация, увеличение конкуренции и сложность проблем требуют новых подходов к принятию решений. Эта модель позволяет не только понять основные принципы взаимодействия, но и найти оптимальные стратегии сотрудничества.

Цель данного доклада состоит в рассмотрении концепции игры чистой кооперации в контексте теории игр, представлении ее математических моделей и анализе применения в различных сферах человеческой деятельности. В данном докладе будет освещено, как игра чистой кооперации моделирует ситуации взаимодействия и какие выводы можно сделать из ее анализа, а также будут рассмотрены области применения этой модели и ее значение для современного мира.


# 1 Глава. Теория игр и игры чистой кооперации

 
Теория игр — это математическая дисциплина, изучающая взаимодействия рациональных агентов в ситуациях принятия решений, где исход зависит не только от действий одного игрока, но и от действий других. Это важное направление в экономике и других социальных науках, изучающее стратегическое взаимодействие между рациональными агентами. Она исследует различные сценарии, начиная от соревнования до сотрудничества, предоставляя инструментарий для анализа и прогнозирования поведения участников в таких ситуациях. Основные элементы теории игр включают игроков, стратегии, выигрыши и правила игры. Теория игр развивается в двух направлениях: кооперативная теория игр, которая изучает ситуации, в которых игроки могут сотрудничать, и некооперативная теория игр, которая изучает ситуации, где игроки действуют независимо друг от друга. Одним из основоположником теории игр считается американский ученый Джон Нэш.

Джон Нэш (1928-2015) - американский математик, экономист и лауреат Нобелевской премии по экономике за 1994 год. Он стал известен благодаря своему вкладу в теорию игр, особенно благодаря разработке концепции равновесия Нэша, которая стала фундаментальным понятием в современной теории игр и микроэкономике. В своей работе, опубликованной в 1950 году, Нэш доказал существование равновесия в играх с конечным числом игроков и стратегий, что сформировало основу для его концепции равновесия.

Игры чистой кооперации являются особым случаем игр в теории игр, в которых участники стремятся к совместному достижению оптимального результата. В отличие от игр с нулевой суммой, где выигрыш одного игрока равен потере другого, в играх чистой кооперации предполагается, что выигрыш одного игрока не противоречит выигрышу другого. Это создает сценарий, в котором сотрудничество может принести наилучшие результаты для всех участников. В играх чистой кооперации обычно участвуют два игрока, каждый из которых может выбрать одну из двух стратегий: сотрудничество (C) или несотрудничество (F). Выигрыш зависит от выбора стратегий обоих игроков: если оба выбирают стратегию сотрудничества, они получают определенный выигрыш; если оба - стратегию несотрудничества, выигрыш минимален; при различных выборах стратегий - выигрыш отсутствует. 

Игры чистой кооперации находят широкое применение в различных областях человеческой деятельности, включая экономику, политику, управление, социальные и гуманитарные науки, а также науку и технологии. Эта модель анализа позволяет понимать стратегические взаимодействия и оптимизировать принятие решений в ситуациях с кооперацией и согласованным действием участников. Они позволяют анализировать ситуации с взаимодействием, где сотрудничество и согласованное поведение могут привести к наилучшим результатам для всех участников, и их изучение является важным для понимания стратегических взаимодействий в различных областях человеческой деятельности.


# Глава 2. Равновесие Нэша

Равновесие Нэша - это ключевой концепт в теории игр, который описывает ситуацию, при которой ни один игрок не имеет мотивации изменить свою стратегию, учитывая выборы других игроков. 

Равновесие Нэша в игре чистой кооперации означает, что пара стратегий, выбранных игроками, является оптимальной для обоих участников, учитывая стратегию соперника. Другими словами, в равновесии Нэша ни один игрок не имеет мотивации изменить свою стратегию, учитывая стратегию соперника. Примером равновесия Нэша в игре чистой кооперации является ситуация, когда оба игрока выбирают стратегию сотрудничества. В этом случае ни один из них не имеет мотивации переключиться на стратегию несотрудничества, так как это приведет к уменьшению выигрыша обоих.

Еще один пример равновесия Нэша - это ситуация, когда оба игрока выбирают стратегию несотрудничества. В этом случае ни один из них не имеет мотивации изменить свою стратегию, так как переход к стратегии сотрудничества приведет к уменьшению их выигрыша. Для более глубокого понимания игры чистой кооперации необходимо провести анализ равновесия Нэша. Это состояние, при котором ни один игрок не имеет стимула изменить свою стратегию, учитывая стратегии остальных игроков. Понимание равновесия Нэша позволяет определить, какие стратегии будут выбраны игроками в их совокупной рациональности.

Для проведения анализа равновесия Нэша в игре чистой кооперации используются различные методы. Один из них - математическое моделирование. С помощью математических моделей, таких как теория игр, уравнения оптимизации и др., можно определить точки равновесия и предсказать стратегии игроков. Эмпирические исследования также играют важную роль в анализе равновесия Нэша, позволяя проверять теоретические предположения на практике и адаптировать модели к реальным ситуациям.

При анализе равновесия Нэша в игре чистой кооперации необходимо учитывать предположения о рациональности игроков. Предполагается, что игроки принимают решения, максимизируя свои выигрыши, и оценивают вероятности возможных исходов. Также важно учитывать информационные ограничения игроков, поскольку они могут не иметь полной информации о стратегиях и выигрышах других игроков.

## 2.1 Значение равновесия Нэша в игре чистой кооперации

Равновесие Нэша играет ключевую роль в анализе стратегических взаимодействий в играх чистой кооперации. Понимание равновесия Нэша позволяет предсказывать поведение участников и определять оптимальные стратегии для достижения наилучших результатов.

Как правило, игроки в игре чистой кооперации стремятся к равновесию Нэша, так как это состояние обеспечивает оптимальный исход для всех участников. В равновесии Нэша каждый игрок принимает решение, учитывая действия других игроков, и не имеет стимула изменить свою стратегию. Это позволяет участникам действовать с уверенностью, что их выбор является наилучшим в данной ситуации.

Таким образом, равновесие Нэша играет важную роль в анализе и прогнозировании игр чистой кооперации, помогая игрокам принимать рациональные решения и достигать оптимальных результатов Равновесие Нэша находит широкое применение в различных областях, включая экономику, политику, управление и социальные науки. Оно помогает анализировать стратегические взаимодействия между фирмами на рынке, предсказывать результаты выборов и принимать решения в условиях неопределенности.


# Глава 3. Математические модели игры чистой кооперации 

Математические модели игры чистой кооперации представляют собой формализацию стратегических взаимодействий между рациональными агентами. В этой главе мы рассмотрим основные математические модели, используемые для анализа игр чистой кооперации, и приведем примеры их применения.

Рассмотрим классический пример модели игр чистой кооперации. Имеется два игрока. У каждого две стратегии — C и F. Если оба игрока выбирают стратегию C, то они получают выигрыш (a, a), где при a = 1 игра является игрой чистой кооперации, а при a > 1 — особенной разновидностью такой игры. Если оба игрока выбирают стратегию F, то они получают (1, 1). Если стратегии игроков различны, то они не получают ничего. Равновесиями Нэша в данной игре являются пары (C, C) и (F, F).

## 3.1 Модель "Координированного равновесия"

Модель "Координированного равновесия" (Coordination Equilibrium) является одной из важных концепций в теории игр. Она предполагает, что игроки стремятся выбирать одинаковые стратегии, чтобы достичь наилучшего исхода для всех участников. 

Предположим, у каждого игрока есть множество стратегий $S$, из которого они могут выбирать. Модель координированного равновесия утверждает, что игра имеет координированное равновесие, если существует определенная стратегия $s^*$ в множестве $S$, которую выбирают все игроки. Иными словами, каждый игрок выбирает одну и ту же стратегию $s^*$. В таком случае говорят, что игра находится в состоянии координированного равновесия.

Это равновесие означает, что ни один игрок не имеет стимула изменить свою стратегию, учитывая выбор других игроков. Поскольку все игроки выбирают одну и ту же стратегию, никто из них не видит выгоды в изменении своего решения. Таким образом, координированное равновесие является стабильным состоянием игры, где каждый игрок действует оптимально, учитывая выбор остальных участников. Важно отметить, что координированное равновесие может иметь несколько вариантов стратегий, которые игроки могут выбирать. Однако ключевым аспектом этого равновесия является согласованность в выборе стратегий между всеми игроками. Когда все участники игры выбирают одну и ту же стратегию, это создает условия для наилучшего исхода для всех.

## 3.2 Модель "Разделения выигрыша"

Модель "Разделения выигрыша" (Sharing Equilibrium) представляет собой важное понятие в теории игр, которое предполагает справедливое распределение выигрыша между участниками игры в зависимости от выбранных ими стратегий. Давайте более подробно разберем это понятие.

Предположим, у каждого игрока есть своя стратегия $s_i$, которую он выбирает в игре, а $s_{-i}$ - это стратегии всех остальных игроков, кроме игрока $i$. Выигрыш игрока $i$ в игре зависит от выбранных стратегий всех игроков и обозначается как $u_i(s_i, s_{-i})$.

Теперь предположим, что для каждого игрока $i$ существует такая стратегия  $s_i^*$ , что при выборе этой стратегии и стратегий остальных игроков $s_{-i}^*$, выигрыш игрока $i$  будет больше или равен выигрышу, который он бы получил при выборе любой другой стратегии $s_i$, при условии тех же стратегий $s_{-i}^*$. Формально это можно записать следующим образом:

$u_i(s_i^*, s_{-i}^*) \geq u_i(s_i, s_{-i}^*)$

для всех $i$ и всех $s_i$, где $s_i^*$ - оптимальная стратегия для игрока $i$ при данных стратегиях остальных игроков $s_{-i}^*$.

Иными словами, равновесие разделения выигрыша наступает, когда каждый игрок выбирает такую стратегию, что при данных стратегиях остальных игроков он получает максимально возможный выигрыш. Ни один игрок не имеет стимула изменить свою стратегию, так как любое отклонение приведет к уменьшению его выигрыша.

Равновесие разделения выигрыша может иметь различные формы в зависимости от конкретной игровой ситуации и предпочтений игроков. Например, в некоторых случаях игроки могут согласиться делить выигрыш поровну между собой, если это приводит к максимизации их общего выигрыша. В других ситуациях они могут договориться о другом способе распределения выигрыша, который считается более справедливым или выгодным для всех участников.

Значение равновесия разделения выигрыша заключается в том, что оно обеспечивает стабильность и согласованность в игровой ситуации. Если участники игры приходят к соглашению относительно того, как распределить выигрыш, они могут избежать конфликтов и даже увеличить свои выигрыши по сравнению с альтернативными стратегиями. Равновесие разделения выигрыша позволяет игрокам действовать в своих личных интересах, сохраняя при этом устойчивость взаимоотношений между ними.

Эта модель играет важную роль в контексте социальных и экономических взаимодействий, где справедливое распределение выигрыша может стать основой для долгосрочного сотрудничества и устойчивых отношений между участниками. Кроме того, она часто используется в различных игровых ситуациях, где участники сталкиваются с необходимостью делить ресурсы или принимать совместные решения. Использование модели "Разделения выигрыша" позволяет учесть интересы всех сторон и добиться справедливости в распределении выигрыша. Это способствует созданию устойчивых и эффективных стратегий в различных областях, от бизнеса и экономики до политики и социальных наук. 

## 3.3 Модель "Угрозы и обещания"

Модель "Угрозы и обещания" (Threats and Promises) предполагает, что игроки могут использовать стратегии угроз и обещаний в процессе принятия решений в игровых ситуациях. В этой модели каждый игрок имеет возможность предложить другому игроку определенную стратегию, которая стимулирует его к определенному действию. 

Предположим, что у игрока $i$ есть множество стратегий $S_i$, из которого он может выбрать свою стратегию $s_i $. Если игрок $i$ выбирает стратегию $s_i$, то он может предложить другому игроку $j$ выбрать стратегию $s_j$ из множества $S_j$. 

Равновесие угроз и обещаний, или пара стратегий $(s_i, s_j)$, наступает в том случае, когда каждый игрок выбирает свою стратегию в соответствии с предложенной стратегией другого игрока, и ни один из них не имеет стимула изменить свой выбор. Другими словами, каждый игрок принимает во внимание угрозы и обещания других игроков при выборе своей стратегии, и результатом является совокупное равновесие, при котором ни один игрок не видит выгоды в изменении своего действия.

Эта модель играет важную роль в анализе стратегических взаимодействий, где игроки могут использовать угрозы и обещания для манипулирования поведением других участников игры. Она может применяться в различных контекстах, таких как переговоры, конфликты, стратегическое планирование и даже повседневное взаимодействие между людьми.

Использование модели "Угрозы и обещания" позволяет учесть стратегии, направленные на влияние на поведение других игроков, и анализировать их влияние на итоговый исход игры. Это может помочь в предсказании возможных сценариев и разработке эффективных стратегий в различных областях, от бизнеса и политики до межличностных отношений.Математические методы анализа таких игр включают теорию вероятностей, линейное программирование, теорию оптимального управления и др. Эти методы позволяют определить оптимальные стратегии для игроков и предсказать исход игры в различных сценариях.


# Глава 4 Практические примеры и применение 

## 4.1 Обзор областей, в которых применяется модель игры чистой кооперации. 

Модель игры чистой кооперации находит широкое применение в различных областях человеческой деятельности, охватывая экономику, политику, управление, социальные и гуманитарные науки, а также науку и технологии.

В экономике и бизнесе модель игры чистой кооперации используется для анализа стратегий конкуренции и сотрудничества между фирмами, планирования производства и определения оптимальных стратегий взаимодействия на рынке. Например, фирмы могут сотрудничать для совместной разработки новых технологий или продуктов, что позволяет им сократить затраты на исследования и разработку и увеличить свою конкурентоспособность.

В политике и международных отношениях модель игры чистой кооперации применяется для анализа стратегий взаимодействия между государствами, предсказания результатов между народных конфликтов и принятия решений о международных соглашениях и договорах. Например, сотрудничество между различными странами может быть направлено на решение глобальных проблем, таких как изменение климата или борьба с терроризмом, через подписание международных соглашений и совместные инициативы.

В управлении и организационном поведении модель игры чистой кооперации используется для анализа стратегий управления конфликтами, принятия решений о структуре организации и мотивации сотрудников. Например, сотрудничество между различными отделами и подразделениями внутри организации может быть направлено на выполнение общих задач и достижение стратегических целей компании.

В социальных и гуманитарных науках модель игры чистой кооперации используется для анализа стратегий взаимодействия в социальных группах, понимания динамики социальных конфликтов и принятия решений о социальных программах и инициативах. Например, сотрудничество между различными организациями и общественными группами может быть направлено на решение социальных проблем, таких как борьба с бедностью или поддержка бездомных.

В науке и технологиях модель игры чистой кооперации используется для анализа стратегий сотрудничества между учеными и исследовательскими группами, разработки совместных проектов и планирования научных экспериментов. Например, сотрудничество между учеными из разных стран может способствовать разработке новых технологий или научных открытий, ускоряя научный прогресс.

Эти примеры демонстрируют, что модель игры чистой кооперации имеет широкий спектр применения и играет важную роль в различных областях человеческой деятельности. Она помогает анализировать стратегические взаимодействия между участниками и принимать решения, направленные на достижение оптимальных результатов.


# Заключение

В данном докладе мы рассмотрели модель игры чистой кооперации, предложенную Джоном фон Нейманом, и её применение в различных областях человеческой деятельности. Модель игры чистой кооперации является важным инструментом анализа стратегических взаимодействий между участниками, позволяя предсказывать поведение игроков и определять оптимальные стратегии для достижения наилучших результатов.

Мы рассмотрели основные теоретические аспекты модели игры чистой кооперации, включая понятие чистого стратегического равновесия Нэша и его применение в анализе игровых ситуаций. Далее были рассмотрены примеры реальных ситуаций, где модель игры чистой кооперации находит применение, такие как экономика и бизнес, политика и международные отношения, управление и организационное поведение, социальные и гуманитарные науки, наука и технологии.

Важно отметить, что модель игры чистой кооперации является лишь одним из инструментов анализа стратегических взаимодействий и не всегда может точно предсказать поведение участников в реальных ситуациях. Однако, её применение позволяет более глубоко понять механизмы взаимодействия и принятия решений в различных областях человеческой деятельности.

В заключение, модель игры чистой кооперации остается актуальным и полезным инструментом для анализа стратегических взаимодействий и принятия решений, и её применение может способствовать более эффективному управлению ресурсами, разрешению конфликтов и достижению общих целей и задач.


# Список литературы

1. Купер, Р. Координационные игры / Р. Купер. – Кембридж : Кембриджский университет, 1998. – 300 с. – ISBN 0-521-57896-5.

2. Гиббонс, Р. Теория игр для прикладных экономистов / Р. Гиббонс. – Принстон, Нью-Джерси : Принстонский университет, 1992. – 400 с. – ISBN 0-691-00395-5.

3. Шеллинг, Т. Стратегия конфликта / Т. Шеллинг. – Кембридж, Массачусетс : Издательство Гарвардского университета, 1960. – 250 с. – ISBN 0-674-84031-3.

4. David Kellogg Lewis: Convention: A Philosophical Study, Oxford: Blackwell, 1969 (ISBN 0-631-23257-5).

