//
//  SerialDataManager.swift
//  CreationLibrary
//
//  Created by Artur Anissimov on 16.11.2021.
//

import Foundation

class SerialDataManager {
    
    let serials = [
        // MARK: - Fantastic Serials
        Serial(name: "Локи",
               image: "Loki",
               category: .fantastic,
               year: 2021,
               description: "Грядущая большая новинка расскажет о Локи, одном из основных персонажах вселенной Марвел. События сериала переносят зрителей в четвертую фазу известной киновселенной. История развивается после финала фильам 'Мстителей: Финал'. Главный герой Локи берет в свои руки Тессеракт, артефакт, с которым тот отправляется в путешествие по разным эпохам и временам в надежде изменить историю человечества и повлиять на собственное будущее. Главный персонаж истории останется антигероем, но при всем при этом его значимость в общем ходе истории крайне велика. Влияние на прошлое способно изменить ход будущего."),
        
        Serial(name: "Рик и Морти",
               image: "RickAndMorty",
               category: .fantastic,
               year: 2013,
               description: "В этой анимационной фантастической комедии два основных персонажа. Первый — самый обычный, ничем не выделяющийся мальчик Морти. Второй — его сумасшедший дед-алкоголик по имени Рик. Однако, кроме того, что Рик любит выпить, он является очень талантливым изобретателем. Из-за проделок деда герои картины все время попадают в различные невероятные, и, порой, весьма опасные положения. И для того, чтобы выйти из них, приходится прикладывать массу стараний и умений. Зрителям обязательно доставит огромное удовольствие наблюдать и смеяться над теми ситуациями, в которые регулярно попадают персонажи."),
        
        Serial(name: "Ванда/Вижн",
               image: "WandaVision",
               category: .fantastic,
               year: 2021,
               description: "Неожиданная смесь классического ситкома и супергеройского боевика грядет. Проект выполнен в стилистике фильмов пятидесятых годов. Главными персонажами выступают два супергероя, которые спокойной и мирной жизнью проживают в небольшом пригороде. Им нравится та гармония,которая царит в их жизни. Однажды действующие лица начинают подозревать, что наш мир какой-то странный и неоднозначный. Сама реальность выглядит одним большим обманом. Но что же на самом деле происходит? События сериала разворачиваются после окончания проекта «Мстители: Финал». Главными персонажами выступают Ванда Максимофф и Вижен."),
        
        Serial(name: "Флэш",
               image: "TheFlash",
               category: .fantastic,
               year: 2014,
               description: "Главного героя зовут Барри Аллен. Барри с детства мечтал быть супергероем, но он вырос, а его мечта, так и не осуществилась. Герой работает простым судмедэкспертом в департаменте полиции и ничего не предвещало изменений в его жизни. Однажды с Барри происходит несчастный случай, который дает ему ту супер геройскую силу , о которой он так мечтал с юных лет. Теперь Барри супергерой и имеет возможность передвигаться с невероятной скоростью. Свои нечеловеческие способности герой решает посвятить спасению человечества. В каждом новом эпизоде мы будем наблюдать за тем, как отважный парень спасает жизни граждан, которые попали в беду."),
        
        Serial(name: "Манифест",
               image: "Manifest",
               category: .fantastic,
               year: 2018,
               description: "Мистическая и окутанная тайнами история произошла с пассажирами и экипажем рейса Монтего 828. Люди, находившиеся в небе несколько часов, попали будто бы во временную петлю, которая заставила их провести пять лет в полете. Однако для главных действующих лиц этот перелет казался мигом. Главные персонажи, которые находились на борту самолета, после приземления обнаруживают, что мир изменился до неузнаваемости. Первое, что они хотят узнать - что стало с их родным и близкими. На удивление многих, жизнь настолько круто перевернулась, что все те, кого они когда-то любили, уже начали новую жизнь без надежды на то, что когда-то встретят близких, полетевших злополучным рейсом."),
        
        // MARK: - Horror Serials
        Serial(name: "Ходячие мертвецы",
               image: "TheWalkingDead",
               category: .horror,
               year: 2010,
               description: "Рик Грайм служил в местной полиции, когда получил тяжелое ранение и попал в больницу в бессознательном состоянии. Главный герой приходит в себя после нескольких дней отключки. Вокруг никого. Он один в тихой палате. Приходится освободиться от оков капельниц и других поддерживающих жизнь аппаратов. Ранение все еще дает о себе знать, но главный герой делает первые шаги после пробуждения. Улицы его родного города, как и больница, оказываются пусты. Однако в переулках появляются странные образы, которые чем-то напоминают людей, но выглядят ужасно: облезлая кожа, гниющее тело и безжалостное желание убить первого встречного. Рик понимает, что в мире произошло что-то ужасное. Однако он по прежнему верит в то, что сможет отыскать своих близких. Увы, дома их не оказывается, но немногочисленные выжившие в городе подсказали Рику, где следует начать поиски. Рик начинает свой путь по миру, который принадлежит теперь не людям, а ходячим мертвецам."),
        
        Serial(name: "Американская история ужасов",
               image: "AmericanHorrorStory",
               category: .horror,
               year: 2011,
               description: "На грани развода оказывается семья, главой которой является врач-терапевт. Причиной тому явилась измена супруга со студенткой-практиканткой. Жена доктора ставит перед ним условие: либо переезд в другой город, либо развод. Не уделяя должного внимания выбору нового жилья, семья переезжает в старый дом в Лос-Анджелесе. Герои даже не подразумевают, что их дом наполнен мистикой, странными существами и привидениями. Здесь постоянно происходят какие-то необъяснимые вещи, а горничная имеет два облика: доктору она кажется обворожительной молодой девушкой, которая пытается привлечь его внимание, а его жене – пожилой женщиной. Загадочные объекты не только населяют их дом, но и окружают семью в пределах их жилья. Например, пациент доктора оказывается маньяком, да и соседский мальчишка какой-то подозрительный…"),
        
        Serial(name: "Люцифер",
               image: "Lucifer",
               category: .horror,
               year: 2015,
               description: "Первый сезон популярного сериала 'Люцифер' уже перед вами. В центре внимания истории оказывается рассказ о жизни и работе Люцифера Морнингстара. Король ада уже устал от своей привычной работы. Ему надоело восседать на троне, поэтому тот отправился в большой круиз на Землю, дабы узнать, как именно живут люди. Люцифер в Лос-Анджелесе ради баловства открывает ночной клуб. Казалось бы, жизнь идет на поправку. Люциферу очень весело. До тех пор, пока на пороге его заведения не находят труп. Делом занимается юная девушка-детектив, которая сразу же западает в душу королю ада. Да и к тому же, почему-то на нее не работают чары Люцифера, что заставляет главного героя еще лучше узнать девушку."),
        
        Serial(name: "Наследие",
               image: "Legacies",
               category: .horror,
               year: 2018,
               description: "Сериал 'Наследие' - это история о существах, обитавших в школе для молодых и одарённых сверхъестественных существ. В центре внимания истории оказывается дочка Клауса Майклсона, известного зрителям по проекту 'Древние'. Хоуп - героиня интересная и во многом похожая на своего отца. Аларика Зальцман, Джози и Лиззи, как и многие другие подростки, близки к переходу во взрослую жизнь. Правда, так как они являются представителями сверхъестественного мира, персонажи к своему совершеннолетию должны научиться контролировать свои худшие стороны. Рано или поздно им удастся стать выдающимися ведьмами, вампирами, оборотнями и прочими существами, владеющими невероятной силой. Правда, выбор останется за главными персонажами, быть их хорошими или стать злодеями!"),
        
        Serial(name: "Тысяча клыков",
               image: "ThousandFangs",
               category: .horror,
               year: 2021,
               description: "Криминальный мир никогда не дремлет. Самые опасные представители преступных группировок стараются активно скрываться от правосудия. Так,например, главный злодей сериала кажется по-настоящему сильным и непреодолимым противником. Загадочная мощь нагнетает, ведь даже бойцы элитного подразделения не могут быть на все сто процентов уверены в том, что справятся с противником. Отряд элитных бойцов отправляется в самое сердце джунглей, находящихся в бассейне реки Амазонки. Именно здесь персонажи постараются поймать и отправить за решетку опасного преступника, который всё это время скрывался от правосудия."),
        
        // MARK: - Mystic Serials
        Serial(name: "Дракула",
               image: "Dracula",
               category: .mystic,
               year: 2020,
               description: "Две тысячи двадцатый год станет годом премьеры нового сериала на вампирскую тематику. Авторы сценария этого проекта предлагают нам переосмысление популярной классики. В этот раз мы отправляется в тысяча восемьсот девяносто седьмой год. Трансильвания - место, где развернутся основные события этой картины. В центре внимания сюжета оказывается легендарный вампир Дракула, который планирует обратить огромный европейский город в логово себе подобных. Лондон - удивительное место, где умудряются сочетаться бедность и роскошь. Здесь начнётся нешуточная борьба человечества с представителями вампирского вида."),
        
        Serial(name: "Мемуарист",
               image: "Memorist",
               category: .mystic,
               year: 2020,
               description: "Сюжет повествует зрителям о Дон Бэке, молодом человеке, который проводит расследования, используя свои невероятные сверхъестественные навыки. Главный герой однажды потеряет память во время расследования череды таинственных преступлений. Также главным действующим лицом окажется профайлер Хан Со Ми. Им ещё предстоит поработать вместе. После потери памяти Дон Бэк вынужден собирать по кусочкам свое прошлое. Он не скрывает от окружающих своих способности, ведь именно благодаря им удаётся успешно бороться с преступностью и злом во всем мире. Что же будет дальше? Сможет ли при помощи Хан Со Ми раскрыть ту самую череду убийств, которая стала причиной потери памяти главным героем?"),
        
        Serial(name: "Проклятый",
               image: "TheCursed",
               category: .mystic,
               year: 2020,
               description: "Главный персонаж работает репортёром. Им Чжин Хи занимается разоблачением одной из самых крупных государственных айти компаний. Вскоре Чжин ожидает встреча с Со, которая обладает выдающимися способностями, недоступными простому человеку. Вместе главные персонажи сражаются за общее счастье. Они стремятся к справедливости и равенству. Им Чжин Хи - девушка, который всегда стремится раскрывать правду и обличать пороки общества. Главная героиня неслучайно заинтересовалась в работе над делом организации 'Форест'. Ей противостоит Чжон Хён, мужчина, который не просто занимается управлением фирмой, но и является приверженцем экзорцизма. По сути, вся организация, а в частности представители управляющего состава, так или иначе связаны с чем-то сверхъестественным. Даже Чжин Кён, будучи главой филиала, связывается с потусторонними духами. Но зачем это все людям из 'Фореста'?"),
        
        Serial(name: "Джуда",
               image: "Juda",
               category: .mystic,
               year: 2017,
               description: "Главный герой этого сериала - мужчина по имени Джуда. Он всегда занимался мелким мошенничеством, поэтому никогда старался не светиться в приличных заведениях. Главный герой решил взять в долг деньги у французских криминальных группировок, чтобы потом с вырученной суммой отправиться в Румынию, дабы провести там время за азартными играми. План бы удался, если не встреча со странной женщиной, которая оказывает на главного персонажа серьезное внимание. После начинается настоящее безумие, которое объяснить очень и очень непросто. За мошенником начинают охотиться полицейские и мафиози, у которых тот занял огромную сумму. Однако вскоре становится понятно, что главный герой не так-то прост, как может показаться на первый взгляд. Он умеет видеть будущее, умеет предсказывать ходы тех, кто за ним гоняется. Да и к тому же связывается с местными румынскими вампирами, которые берут того с собой в Израиль. Там Джуда сталкивается с еще большими заботами. Его приятели оказываются жертвами злобных кредиторов. Они попадают в различные ситуации, полные преследований и угроз жизни. Сюжет не отпускает ни на секунду. История развивается стремительно! Главные действующие лица оказываются в эпицентре какого-то заговора!"),
        
        Serial(name: "Городские страшилки",
               image: "Goedam",
               category: .mystic,
               year: 2020,
               description: "Главный герой Гу Чуань стал жертвой аварии. Молодой человек даже не рассчитывал, что выживет. Ему было пересажено искусственное сердце. Несчастный не смог ужиться с мыслью о том, что он теперь не такой как все. Да и ему кажется, будто бы ненастоящий орган ограничивает его в эмоциях. Главный герой потерял страсть к жизни. Десять лет прошло с того момента, когда он принял своё ненормальное 'я'. Немало времени минуло, что позволило молодому человеку найти зацепки в вопросе смысла жизни в этом мире. Его встреча с Цзян Сяонин стала по-настоящему решающей. Оптимистичная и энергичная девушка несмотря на печальное детство смогла стать счастливой. Её столкновение с главным героем даёт шанс обоим героям на счастливое будущее.")
        
    ]
    
}