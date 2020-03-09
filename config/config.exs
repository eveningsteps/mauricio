import Config

config :mauricio,
  max_karma: 10,
  default_name: "Мяурицио",
  text: %{
    attracted: "Мурмурмур",
    banished: """
    <i><%= cat.name %> даёт дёру от <%= who.fname <> " " <> who.sname %></i>
    """,
    start: """
    <i>У вас завелся котик. Сейчас он тихо сидит в уголке.
    Как его зовут?</i>
    """,
    name_cat: """
    <i>Котeйке нравится имя <%= cat.name %></i>
    """,
    noname_cat: """
    <i>Котик решил, что будет зваться <%= cat.name %></i>
    """,
    already_cat: "<i>У вас уже есть котик!</i>",
    away_pet: """
    <i><%= who.fname <> " " <> who.sname %> хочет погладить котяру, но обнаруживает, что того нет дома.</i>
    """,
    awake_pet: """
    <i><%= who.fname <> " " <> who.sname %> погладил котяру.</i>
    """,
    bad_pet: [
      """
      <i><%= cat.name %> недоволен и цапает <%= who.fname <> " " <> who.sname %> за палец.</i>
      ШШШШ.
      """,
      "<i><%= cat.name %> яростно дерется лапой</i>",
      """
      <i>Когда <%= who.fname <> " " <> who.sname %> пытается погладить котяру, тот прогибает спину и не дает прикоснуться</i>
      """,
      """
      <i><%= cat.name %> изо всех сил отпинывается от рук <%= who.fname <> " " <> who.sname %> задними лапами</i>
      """
    ],
    joyful_pet: """
    <i><%= who.fname <> " " <> who.sname %> погладил котика</i>
    Мурррррррр.
    """,
    sad_pet: "Мямямяууууу...",
    sleep_pet: """
    <i><%= who.fname <> " " <> who.sname %> погладил спящего котика.</i>
    """,
    hug_away: """
    <i><%= who.fname <> " " <> who.sname %> хочет обнять котика, но его нет дома.</i>
    """,
    hug: """
    <i><%= who.fname <> " " <> who.sname %> обнимает <%= state %> котика.
    <%= cat.name %> <%= cat_action %>. Навскидку котейка весит </i><b> <%= cat.weight %> </b><i>кило и, кажется, <%= cat_dynamic %></i>
    """,
    become_lazy: """
    Вы чувствуете как кот стал ещё ленивее
    """,
    over_lazy: """
    Ленивей этому коту уже не стать
    """,
    become_annoying: """
    Вы чувствуете как кот стал ещё надоедливей
    """,
    over_annoying: """
    Надоедливей этому коту уже не стать
    """,
    mew: [
      "МЯУ!",
      "Мяу!",
      "Мяяяяу",
      "Мияу",
      "Мау!",
      "МААААУ!",
      "Меяу",
      "Мурр! Мафф!",
      "Ня",
      "Няяяяяя",
      "Няняияу",
      "Мямяу!",
      "Мррр!"
    ],
    aggressive: [
      "ШШШшШшШ!!!",
      "ШшШшШшШшшшшш!",
      "МмшшшШШШШ!",
      "Шшшшшшшшшшшшш....",
      """
      <i><%= cat.name %> утробно рычит на <%= who.fname <> " " <> who.sname %></i>
      """,
      "ХСССССССС!!!",
      "У-у-у-рррррр! ШШ!",
      "<i><%= cat.name %> дерется и норовит укусить!</i>",
      "<i><%= cat.name %> рычит и убегает под диван</i>"
    ],
    sleep: [
      "Хрррр-Хрррр",
      "Хр-Хр-Хр",
      "ХРРРРРРРРРР!",
      "Хрррхррвап...",
      "ХррХррр",
    ],
    wake_up: "Мияявввв...",
    satiety: %{
      0 => [
        "ОМНОМНОМНОМНОМНОМНОМ!!!",
        "<i><%= cat.name %> заточил всю еду в мгновение ока</i>",
        "<i><%= cat.name %> слопал еду и даже кормушку слегка погрыз!</i>",
      ],
      1 => [
        "<i>Громко мурча и чавкая <%= cat.name %> уплетает свою еду, а потом вылизывает кормушку</i>",
        "НЯМ-НЯМ-НЯМ!"
      ],
      2 => [
        "<i><%= cat.name %> навернул от души!</i>",
        "Хрум-хрум-хрум"
      ],
      3 => [
        "<i><%= cat.name %> покушал и очень этим доволен</i>",
        "<i><%= cat.name %> трескает с большим удовольствием</i>"
      ],
      4 => "Чавк-чавк-чавк!",
      5 => "<i><i><%= cat.name %> хорошо перекусил</i>",
      6 => "<i><%= cat.name %> поел </i>",
      7 => "<i><%= cat.name %> все еще делает вид, что ему вкусно</i>",
      8 => "<i><%= cat.name %> без особого энтузиазма съедает свой корм</i>",
      9 => "<i>В котика едва лезет!</i>",
      10 => [
        "<i><%= cat.name %> долго принюхивается и зарывает кормушку</i>",
        """
        <i><%= cat.name %> не притрагивается к еде и смотрит на <%= if not is_atom(who) do who.fname <> " " <> who.sname else "кормушку" end %> тяжелым взглядом полным бесконечного презрения</i>
        """,
      ],
      vomit: """
      <i>Котяра съел слишком много и его стошнило. В этом явно виноват <%= if not is_atom(who) do who.fname <> " " <> who.sname else "только он сам" end %></i>
      """
    },
    stop: "<i>Котяра выпрыгнул с балкона и убежал.</i>",
    food_to_feeder: """
    <i><%= who.fname <> " " <> who.sname %> добавил</i> <b><%= new_food %></b> <i>в кормушку.</i>
    """,
    feeder_overflow: """
    <i>Так как кормушка была переполнена из неё вывалился недоеденный корм, а именно</i> <b><%= old_food %></b>
    """,
    wakeup: "Мияввв...",
    fall_asleep: [
      "<i><%= cat.name %> сладко уснул на диване, выставив теплое пузико напоказ.</i>",
      "<i><%= cat.name %> заснул и теперь дёргает лапками и ушами. Кажется, ему что-то снится.</i>",
      "<i><%= cat.name %> свернулся клубочком и закрыл нос пушистым хвостом.</i>",
      "<i><%= cat.name %> распластался в пятне солнечного света и сладко посапывает во сне.</i>",
      "<i>От громкого храпа котика дрожат оконные рамы!</i>",
      """
      <i><%= cat.name %> устроился прямо на лучших штанах <%= who.fname <> " " <> who.sname %> хозяина и равномерно покрыл их своей шерстью.</i>
      """,
      """
      <i><%= cat.name %> спит на коленях <%= who.fname <> " " <> who.sname %> и пускает слюни</i>
      """,
      """
      <i><%= cat.name %> уснул в позе "Будда Конасана"</i>
      """,
      "<i><%= cat.name %> ложится спать</i>"
    ],
    going_out: "<i>Котяре наскучило сидеть дома. <%= cat.name %> вышел на улицу прогуляться</i>",
    want_care: [
      """
      <i><%= cat.name %> трется о ногу <%= who.fname <> " " <> who.sname %> и мурчит.</i>
      """,
      """
      <i><%= cat.name %> настойчиво следует за <%= who.fname <> " " <> who.sname %></i>
      """,
      "<i><%= cat.name %> громко мяукает в другой комнате</i>",
      """
      <i><%= cat.name %> принес <%= who.fname <> " " <> who.sname %> мышь к ногам...игрушечную, к счастью</i>
      """,
      """
      <i><%= cat.name %> кружит вокруг <%= who.fname <> " " <> who.sname %></i>
      """,
      "<i><%= cat.name %> зазывно мяучит</i>"
    ],
    sad: "Мямямяууууу...",
    cat_is_back: "<%= cat.name %> вернулся домой",
    feeder_consume: """
    <i><%= cat.name %> съедает из кормушки</i> <b><%= food %></b>
    """,
    help: """
    Это котик в телеграме! Кормите, гладьте и обнимайте его! Окутайте его любовь и он ответит вам взаимностью.
    Поначалу он будет вас игнорировать. Чтобы это исправить поманите его фразой "кскскс" :о)
    """
  },
  triggers: %{
    attract: ["кс", "кис"],
    banish: ["брысь"],
    eat: ["жр", "съе", "куш"],
    mew: ["ня", "мя", "мур"],
    cat: ["кис", "кот", "кош", "кыс"],
    dog: ["пес", "пёс", "соб", "щен", "барб"]
  },
  schedule: %{
    tire: 3,
    hungry: 7,
    metabolic: 11,
    pine: 5
  }

import_config "#{Mix.env}.exs"
import_config "secret.exs"
