import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Canakkale extends StatefulWidget {
  const Canakkale({Key? key}) : super(key: key);

  @override
  State<Canakkale> createState() => _CanakkaleState();
}

class _CanakkaleState extends State<Canakkale> {
  int _selectedIndex = 0; // Track the selected index of segmented button

  @override
  Widget build(BuildContext context) {
    String historyDescription = """
Roma Dönemi

Çanakkale Bölgesi Bergama Kralı III. Attalos’un krallığını M.Ö.133 yılında bir vasiyetname ile Roma İmparatorluğu’na bırakması üzerine Roma eyalet sistemi içerisine alınmış ve Asia eyaletine bağlanmıştır.

Roma İmparatorluğunun 395 yılında ikiye ayrılmasından sonra Çanakkale bölgesi Doğu Roma İmparatorluğu’nun hakimiyeti altında yönetilmiştir. İmparator Justinian, Sestos’da boğazın geçişini kontrol altında tutmak için bir kale inşa ettirmiştir.

Çanakkale’de Türk Hakimiyeti

Bölgede Türklerin görünmesi Doğu Roma imparatorluğu dönemine rastlamaktadır. 14. yüzyıl başlarında Anadolu Selçuklu Devleti yıkılınca Ege kıyılarına kadar uzanmışlar ve Çanakkale yöresine de yerleşmeye başlamışlardır. Türklerin bölgede askeri güç olarak tekrar görülmesi 1095’de Çaka beyin Nara Burnu önlerine kadar ilerlemesi ile başlamıştır. 1097’de haçlıların İznik’i alması ile Anadolu içlerine çekilen Anadolu Selçukluları, haçlıların çekilmesinden sonra üst üste akınlar düzenleyerek kaybettikleri yerleri geri alarak, Çanakkale yöresine kadar ilerlemişlerdir. Beylikler döneminde de Karesi Beyliği sınırlarını Çanakkale’ye doğru genişletmiştir.

Osmanlı İmparatorluğu Dönemi

Çanakkale boğazında Türk hakimiyeti Osmanlılar zamanında oluşmuştur. 1345’te Karesi Beyliği topraklarının büyük bölümünü Osmanlılar kendi topraklarına kattılarsa da Çanakkale Boğazı üzerindeki hakimiyeti 1354 yılında Süleyman Paşanın Gelibolu Kalesi’ni fethi ile gerçekleşmiştir. Ardından da 1356’da Gelibolu’dan sonra Tekirdağ’a kadar Rumeli kıyıları fethedilmiştir. I.Murad döneminde Anadolu kıyılarının tamamı Osmanlı hakimiyetine geçmiş, fakat Boğaz’ın tamamen kontrolü Fatih Sultan Mehmed’in İstanbul’u fethinden sonra, Boğaz’ın en dar yerine 1462’de inşa ettirdiği kalelerden sonra gerçekleşmiştir. Boğaz bundan sonra, hem İstanbul’un savunmasını üstlenmiş hem de Karadeniz –Akdeniz geçişi ile ilgili hakimiyet planlarının kilidini teşkil ederek sürekli askeri önemini korumuştur.
""";
    String legendsDescription = ''' "Seyit Onbaşı'nın Topunu Taşıması"

Seyit Onbaşı, Çanakkale Savaşı'nın en bilinen kahramanlarından biridir. Efsaneye göre, Nusrat Tabyası'nda topçu olarak görev yapan Seyit Onbaşı bir gün düşman gemilerinden birinin Nusrat Tabyası'nı vurmaya başladığını fark eder. Tabyanın topçuları, düşmana ateş açabilmek için ellerinden geleni yaparlar ama mermiler tükenince, tabyanın en büyük topu olan 275 kiloluk mermiyi fırlatmak için kullanılacak kaldıraç kırılır.

Durum umutsuzdur, ancak Seyit Onbaşı, tek başına bu ağır top mermisini taşıma kararı alır. Elindeki demir bir çubukla mermiyi taşımaya başlar. Bu olağanüstü güç gösterisi, diğer askerlerin de yardımıyla başarılı olur ve mermi yeniden topa yerleştirilir. Ardından atış yapılır ve düşman gemisi vurulur.

Seyit Onbaşı'nın bu olağanüstü güç ve cesareti, Çanakkale Savaşı'nın simgelerinden biri haline gelir. Bu efsane, Türk askerinin inanılmaz azmini ve vatan sevgisini gösterir. Seyit Onbaşı'nın topu taşıma hikayesi, Türk milletinin zafer için verdiği mücadeleyi ve fedakarlığını sembolize eder ve Çanakkale Savaşı'nın kahramanlık dolu ruhunu yansıtır. ''';

    return Scaffold(
      body: Stack(
        children: [
          // Image container
          Positioned.fill(
            child: Image.asset(
              "assets/images/canakkale.jpg",
              opacity:  AlwaysStoppedAnimation(.9),
              fit: BoxFit.cover,
            ),
          ),
          // Segmented control
          Positioned(
            left: 16,
            right: 16,
            top: 126,
            child: SizedBox(
              child: CupertinoSegmentedControl<int>(
                children: {
                  0: Text('Tarihçe'),
                  1: Text('Efsaneler'),
                  // Add more options as needed
                },
                onValueChanged: (int newValue) {
                  setState(() {
                    _selectedIndex = newValue;
                  });
                },
                selectedColor: Color(0xFF2b2831),
                unselectedColor: Colors.white70,
                borderColor: Colors.white70,
                pressedColor: Color(0xFF2b2831).withOpacity(0.5),
                groupValue: _selectedIndex,
              ),
            ),
          ),
          // Container with text
          Positioned(
            left: 30,
            right: 30,
            top: 180,
            bottom: 70,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF2b2831).withOpacity(0.9),
              ),
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _selectedIndex == 0 ? 'Tarihçe' : 'Efsaneler',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      _selectedIndex == 0 ? historyDescription : legendsDescription,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 132,
              right: 90,
              top: 0,
              bottom:700,
              child: SafeArea(
                child: Text(
                  "Çanakkale Ş.",
                  style: TextStyle(color: Colors.white,fontSize: 24,shadows: [
                    Shadow(blurRadius: 2,color: Colors.black54,offset: Offset(2,2))
                  ]),
                ),
              )
          ),
          Positioned(
            left: 140,
            right: 130,
            top: 60,
            bottom:670,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  GestureDetector(
                    onTap: () {showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text("Can Uzun"),SizedBox(width: 40,),Row(
                                        children: [Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),],
                                      ),
                                    ]
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                subtitle: Text("Çanakkale geçilmez!!!"),
                              ),
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text("Angela Tool"),SizedBox(width: 40,),Row(
                                        children: [Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),
                                          Icon(Icons.star, color: Colors.yellow),],
                                      ),
                                    ]
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                subtitle: Text("You should experience this atmosphere"),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                    },
                    child: Icon(
                      Icons.star,
                      color: i < 5 ? Colors.yellow : Colors.grey,
                    ),
                  ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
