import 'package:flutter/material.dart';
import 'package:plant_book/main.dart';
import 'package:plant_book/park_button.dart';

class Park extends StatefulWidget {
  @override
  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park> {
  final List<String> imgPasvikList = [
    "lib/assets/pasvik/6.jpg",
    "lib/assets/pasvik/1.jpg",
    "lib/assets/pasvik/2.jpg",
    "lib/assets/pasvik/3.jpg",
    "lib/assets/pasvik/4.jpg",
    "lib/assets/pasvik/5.jpg",
    "lib/assets/pasvik/7.JPG",
    "lib/assets/pasvik/8.jpg",
  ];

  final List<String> imgLapList = [
    "lib/assets/lap/1.jpg",
    "lib/assets/lap/2.jpg",
    "lib/assets/lap/3.jpg",
    "lib/assets/lap/4.jpg",
    "lib/assets/lap/5.jpg",
    "lib/assets/lap/6.jpg",
  ];

  final List<String> imgKanList = [
    "lib/assets/kan/1.jpg",
    "lib/assets/kan/2.jpg",
    "lib/assets/kan/3.jpg",
    "lib/assets/kan/4.jpeg",
    "lib/assets/kan/5.jpg",
    "lib/assets/kan/7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(233, 212, 0, 1)),
        centerTitle: true,
        backgroundColor: mainColor,
        toolbarHeight: 40,
        title: Text(
          "Заповедники и сады",
          style: TextStyle(color: Color.fromRGBO(233, 212, 0, 1)),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(62, 151, 139, 1),
              Color.fromRGBO(94, 145, 73, 1)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: ListView(
            children: [
              SizedBox(
                height: 8,
              ),
              ParkButton(
                  "Пасвик",
                  imgPasvikList
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item),
                            ),
                          ))
                      .toList(),
                  "Описание: \«Пасвик\» — самый молодой заповедник Мурманской области и"
                      " первый заповедник, созданный в новом Российском государстве.\n\nОн"
                      " был образован 16 июля 1992 года для сохранения и изучения северных "
                      "сосновых лесов, обширных водно-болотных угодий мирового значения, фауны "
                      "водоплавающих птиц, а также для ведения комплексного мониторинга северных "
                      "экосистем.\n\nТерритория заповедника — узкая полоса, вытянутая на 44 км вдоль"
                      "государственной границы России и Норвегии. «Пасвик» — единственный в России"
                      " заповедник, который полностью расположен в пограничной зоне.\n\nВ заповеднике"
                      " в долине реки Паз растут самые северные в Европе леса. Значительные площади "
                      "занимают озера и болота. Животный мир представляют 23 вида млекопитающих, "
                      "122 вида птиц (75 видов гнездящиеся), два вида земноводных и два вида рептилий."
                      " В водно-болотных угодьях заповедника гнездятся и отдыхают на пролете чайки, "
                      "лебедь-кликун, гоголь. Из млекопитающих характерны бурый медведь, лось, лисица."
                      "\nАдрес: Мурманская обл., Печенгский р-н, п. Раякоски.\n\nСайт: https://pasvik-reserve.ru/"
                      "\nКонтакты: +7 (815) 545-07-00"),
              SizedBox(
                height: 8,
              ),
              ParkButton(
                  "Лапландский",
                  imgLapList
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item),
                            ),
                          ))
                      .toList(),
                "Описание: охватывает побережье озера Имандра, горные массивы Мончетундра и "
                    "Чунатундра. Был основан в 1930 году с целью сохранения северного оленя, "
                    "а также естественной среды его обитания. Во флоре преобладают редкостойные "
                    "еловые и сосновые леса (ель, сосна и береза, с примесью рябины, серой ольхи"
                    " и осины). В борах много ягодных кустарничков — брусники, черники, вероники,"
                    " голубики. Животный мир богат, обычны куница, лось, дикий северный олень, "
                    "бурый медведь, американская норка, лисица, росомаха. Встречаются волк, ондатра, "
                    "выдра. В 1934 году был реакклиматизирован некогда истребленный бобр.\n\nГлавное "
                    "богатство – нетронутые леса, возраст деревьев достигает 400 – 600 лет. Для посещения "
                    "доступны различные маршруты, в том числе визит в сказочную Лапландию, в гости к "
                    "Деду Морозу.\n\nАдрес: Мурманская обл., Мончегорск, пер. Зелёный, 8\n\nСайт: "
                    "http://www.laplandzap.ru/\nКонтакты: +7 (921) 283-03-31 - мобильный телефон экскурсоводов"),
             SizedBox(
                height: 8,
              ),
              ParkButton(
                  "Кандалакшский",
                  imgKanList
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item),
                            ),
                          ))
                      .toList(),
                "Описание: территория Кандалакшского государственного природного "
                    "заповедника расположена в пяти административных районах Мурманской"
                    " области (Печенгский, Кольский, Ловозерский, Терский, Кандалакшский)"
                    " и в Лоухском районе республики Карелия и из 13 участков. Большинство"
                    " участков представляют собой морские архипелаги с прилегающей акваторией."
                    " Поэтому из 78608 га его площади 74,2 % приходится на морскую акваторию,"
                    " а массовыми обитателями являются морские колониальные птицы.\n\nК настоящему "
                    "времени на заповедной территории выявлено более 10 тысяч биологических видов,"
                    " в том числе примерно 1100 видов растений, более 5000 беспозвоночных, 397 видов "
                    "позвоночных животных. Среди них 229 особо охраняемых вида, включенных в "
                    "региональную Красную Книгу (42 % от всех краснокнижных видов Мурманской"
                    " области).\n\nАдрес: Мурманская область, г. Кандалакша, ул. Линейная, д."
                    " 35\n\nСайт: https://kandalaksha-reserve.ru/\nКонтакты: +7 (921) 043-09-30 - "
                    "оперативный дежурный",
              ),
              SizedBox(
                height: 8,
              ),
              // ParkButton(
              //     "Сад-институт",
              //     imgPasvikList
              //         .map((item) => Container(
              //               child: Center(
              //                 child: Image.asset(item),
              //               ),
              //             ))
              //         .toList()),
              SizedBox(
                height: 8,
              ),
            ],
          )),
    );
  }
}
