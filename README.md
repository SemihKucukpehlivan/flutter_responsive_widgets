Flutter Responsive Widget Örnekleri
Bu depo, Flutter'ın yerleşik (ekstra paket gerektirmeyen) duyarlı tasarım widget'larının nasıl kullanıldığını gösteren bir örnek uygulamadır. Uygulama, farklı ekran boyutlarına ve cihaz yönlendirmelerine (dikey/yatay) nasıl adapte olunacağını öğrenmek isteyen Flutter geliştiricileri için pratik örnekler sunar.

Uygulamayı Kullanmaya Başlama
Uygulamayı yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin:

1. Depoyu Klonlama
Git konsolunuzu veya terminalinizi açın ve depoyu klonlamak için aşağıdaki komutu çalıştırın:

git clone https://github.com/KULLANICI_ADINIZ/flutter_responsive_widgets.git

Ardından, projenin dizinine geçin:

cd flutter_responsive_widgets

2. Flutter Bağımlılıklarını Yükleme
Projeye gerekli tüm Flutter bağımlılıklarını indirmek için aşağıdaki komutu çalıştırın:

flutter pub get

3. Uygulamayı Çalıştırma
Bir Android emülatörü, iOS simülatörü veya fiziksel bir cihaz bağladıktan sonra uygulamayı başlatmak için aşağıdaki komutu kullanın:

flutter run

Uygulama başarıyla derlendikten ve çalıştırıldıktan sonra, farklı duyarlı widget örneklerine yönlendiren bir buton listesi içeren ana ekranı göreceksiniz.

Widget Örnekleri
Bu bölümde, uygulamada gösterilen her bir duyarlı widget hakkında kısa bir bilgi ve bu widget'ın dikey ve yatay modlardaki ekran görüntüleri için yerler bulacaksınız. Uygulamayı çalıştırdıktan sonra bu yerlere kendi ekran görüntülerinizi ekleyebilirsiniz.

1. MediaQuery
MediaQuery widget'ı, uygulamanın çalıştığı cihaz hakkında ekran boyutu (genişlik, yükseklik), piksel yoğunluğu, metin ölçek faktörü ve ekran yönlendirmesi gibi bilgileri sağlar. Bu bilgiler, widget'ların boyutlarını veya konumlarını dinamik olarak ayarlamak için kullanılabilir.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


2. OrientationBuilder
OrientationBuilder, cihazın dikey veya yatay konumuna (ekran yönlendirmesine) göre farklı kullanıcı arayüzleri oluşturmanızı sağlar. Bu, uygulamanızın cihazın tutuş şekline göre farklı düzenler sunması gerektiğinde kullanışlıdır.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


3. LayoutBuilder
LayoutBuilder, ebeveyninin kendisine sunduğu kısıtlamalara (mevcut alan) göre alt widget'ları dinamik olarak düzenler. MediaQuery'den farklı olarak, tüm ekran değil, belirli bir alan içindeki duyarlı değişiklikler için idealdir.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


4. Flexible & Expanded
Flexible ve Expanded widget'ları, bir Row, Column veya Flex içinde çocuk widget'ların kalan alanı nasıl paylaştığını kontrol eder. Expanded tüm kalan alanı doldururken, Flexible daha genel bir esneklik sağlar ve flex özelliği ile oran belirlemenize olanak tanır.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


5. FractionallySizedBox
FractionallySizedBox, alt widget'ının boyutunu ebeveyninin alanının belirli bir yüzdesi olarak ayarlar. Genişlik ve yükseklik için ayrı ayrı yüzdelik oranlar belirleyebilirsiniz.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


6. FittedBox
FittedBox, çocuğunu (genellikle metin veya görsel gibi) kendisine ayrılan alana taşma olmadan sığdırır. BoxFit özelliği ile içeriğin en boy oranını koruyarak mı yoksa esneterek mi sığacağını kontrol edebilirsiniz.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


7. AspectRatio
AspectRatio widget'ı, alt widget'ının belirli bir genişlik/yükseklik oranını korumasını sağlar. Bu, görseller, videolar veya kartlar gibi öğelerin boyutları değişse bile daima doğru oranda kalması gerektiğinde çok kullanışlıdır.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


8. Wrap
Wrap widget'ı, çocuklarını bir satırda düzenler ve eğer yeterli alan yoksa otomatik olarak bir sonraki satıra (veya direction özelliği ile bir sonraki sütuna) kaydırır. Etiketler, çipler veya dinamik olarak eklenen diğer küçük öğeler için idealdir.

Dikey Ekran Görüntüsü:


Yatay Ekran Görüntüsü:


Bu README.md dosyası taslağını GitHub deponuza yükleyebilir ve KULLANICI_ADINIZ kısmını kendi GitHub kullanıcı adınızla değiştirmeyi unutmayın. Uygulamayı çalıştırdıktan sonra her bir bölümdeki ekran görüntüsü yerleşimlerine ( ![Dikey Ekran Görüntüsü - Widget Adı]() ) tıklayarak veya sürükleyerek ilgili ekran görüntülerini ekleyebilirsiniz.

Başka bir şeye ihtiyacınız olursa çekinmeyin!
