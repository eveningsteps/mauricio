# Mauricio

Как работает расписание кота:
В schedule указано раз в сколько происходит то или иное событие связанное с котом. Это число умножается на ленивость кота и к нему добавляется +- 0.5 ленивости кота. Итоговое значение это раз в сколько будет срабатывать это события.

События:
tire снизить энергию кота на 1. Если энергия 0, то кот засыпает на следующем событии tire. Энергию также тратят реакции на пользователей (10 реакций -- одна энергия). Максимум энергии -- вес кота. В спящем состоянии tire наоборот восстанавливает энергию (0.35 от максимума за такт).
hungry сожрать что-нибудь из кормушки. Это повышает satiety. Если кормушка пустая, то сытость снижается на 1.
pine заскучать. Если он мало глажен (меньше 4 раз), то начинает докапываться до чата. Если глажен, то сбегает. Сбежавший кот шляется пока ему снова не станет скучно
metabolic - изменить вес кота. Если кот перекормлен -- вес увеличивается. Если кот голоден -- вес уменьшается. Если у кота ответсвтенные хозяева, то он сохраняет вес
