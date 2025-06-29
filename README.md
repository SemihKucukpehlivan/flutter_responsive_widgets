# Flutter Responsive Widget Örnekleri

Bu depo, **Flutter**'ın yerleşik (ekstra paket gerektirmeyen) duyarlı tasarım widget'larının nasıl kullanıldığını gösteren bir örnek uygulamadır.  
Uygulama, farklı ekran boyutlarına ve cihaz yönlendirmelerine (dikey/yatay) nasıl adapte olunacağını öğrenmek isteyen Flutter geliştiricileri için pratik örnekler sunar.

---

## 🚀 Uygulamayı Kullanmaya Başlama

Uygulamayı yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin:

### 1. Depoyu Klonlama

```bash
git clone https://github.com/SemihKucukpehlivan/flutter_responsive_widgets.git
cd flutter_responsive_widgets
```

### 2. Flutter Bağımlılıklarını Yükleme

```bash
flutter pub get
```

### 3. Uygulamayı Çalıştırma

Bir Android emülatörü, iOS simülatörü veya fiziksel bir cihaz bağladıktan sonra:

```bash
flutter run
```

Uygulama başarıyla derlendikten sonra, farklı duyarlı widget örneklerine yönlendiren bir **buton listesi içeren ana ekran** karşınıza gelecektir.

---

## 📱 Widget Örnekleri

Flutter'da **responsive (duyarlı) widget'lar**, uygulamanın farklı cihaz boyutlarına ve yönlendirmelerine (portrait/landscape) uyumlu hale gelmesini sağlar. Bu widget'lar, kullanıcı arayüzünün küçük ekranlı telefonlardan büyük ekranlı tablet ve masaüstü cihazlara kadar tutarlı ve kullanılabilir kalmasını mümkün kılar.

Bu uygulamada, Flutter'ın **yerleşik (paketsiz)** responsive widget'larına dair örnek ekranlar ve uygulamalar bulunmaktadır. Her bir widget'ın açıklaması ve örnek kullanım senaryosu aşağıda verilmiştir. Uygulamayı çalıştırdıktan sonra, ilgili bölümlere kendi ekran görüntülerinizi ekleyerek belgeleri zenginleştirebilirsiniz.


Her bir widget için kısa açıklamalar ve ekran görüntüleri yer almaktadır. Uygulamayı çalıştırdıktan sonra ekran görüntülerinizi ilgili bölümlere ekleyebilirsiniz.



<img src="https://github.com/user-attachments/assets/30b1c9c2-3eb1-4136-8949-a289fcf8f6f6" alt="Screenshot_1751228222" style="width:25%; height:auto;" />



### 1. MediaQuery

`MediaQuery`, cihazın ekranı hakkında bilgi almanızı sağlayan bir yapıdır. Ekran genişliği, yüksekliği, çözünürlüğü, metin ölçek oranı, safe area bilgisi ve yönlendirme gibi değerleri içerir. Bu bilgiler, duyarlı arayüzler geliştirirken karar verme mekanizmaları için sıklıkla kullanılır. Örneğin, küçük ekranlarda bir widget'ı gizlemek ya da yazı boyutunu büyütmek için `MediaQuery` verileri kullanılabilir.


`MediaQuery` widget'ı, ekran boyutu, piksel yoğunluğu, metin ölçek faktörü ve yönlendirme gibi bilgileri sağlar.  
Bu verilerle dinamik tasarımlar oluşturabilirsiniz.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/75ef2ba1-9a93-4dfb-a1a7-437440d1505d" alt="Dikey Ekran Görüntüsü" style="width:25%; height:auto;" />



- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/78cd6af5-8002-4031-b161-8b50e5d9b4f5" alt="Yatay Ekran Görüntüsü" style="width:70%; height:auto;" />


---

### 2. OrientationBuilder

`OrientationBuilder`, cihazın dikey (portrait) ya da yatay (landscape) modda olup olmadığını tespit eder ve buna göre farklı arayüzler çizmenizi sağlar. Tabletlerde veya geniş ekranlarda farklı bir layout göstermek, kullanıcı deneyimini iyileştirmek için oldukça yararlıdır.


`OrientationBuilder`, cihazın ekran yönüne göre farklı arayüzler oluşturmanıza olanak tanır.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/e7dd3782-c692-4f45-84ac-6096411bf754" alt="Screenshot_1751228649" style="width:25%; height:auto;" />


- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/cd797f3a-462e-40e8-8b5c-5780d51de523" alt="Screenshot_1751228671" style="width:70%; height:auto;" />

---

### 3. LayoutBuilder

`LayoutBuilder`, widget'ın kullanılabilir maksimum genişlik ve yüksekliği gibi kısıtlamaları alarak, bu verilere göre içeriğini oluşturur. Bu, belirli bir alan içinde duyarlılık oluşturmak istediğinizde — örneğin bir kartın ya da konteynerin içinde — oldukça etkilidir. Ebeveynin verdiği alan değiştikçe farklı içerikler sunmak mümkündür.


`LayoutBuilder`, yalnızca ebeveyninden aldığı alan kadar bilgiyi değerlendirerek içerik düzenler.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/eb57fd6e-e941-4482-bd57-e872e9aaada7" alt="Screenshot_1751228710" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/51fc9854-1c0a-458e-9bcb-285d239fe322" alt="Screenshot_1751228699" style="width:70%; height:auto;" />

---

### 4. Flexible & Expanded

`Flexible` ve `Expanded`, özellikle `Row` ve `Column` gibi çoklu widget'ların yan yana veya alt alta sıralandığı yapılarda önemlidir. `Expanded`, kalan tüm alanı alır ve kapsar. `Flexible` ise belirli bir oranda genişleyerek daha kontrollü bir dağılım sunar. Özellikle dinamik içeriklerde alan paylaşımını optimize ederken kullanılır.


`Flexible` ve `Expanded`, Row, Column veya Flex içerisinde çocuk widget'ların yerleşimini kontrol eder.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/b0bdcb3c-5452-4069-9537-1b15e4892f11" alt="Screenshot_1751228725" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/097020c1-35c7-45f6-a94a-75cfbd93db7d" alt="Screenshot_1751228748" style="width:70%; height:auto;" />

---

### 5. FractionallySizedBox

`FractionallySizedBox`, çocuk widget'ının ebeveynin genişliği ve yüksekliğine göre yüzdelik bir oranda boyutlandırılmasını sağlar. Örneğin, bir kutuyu ekranın %80 genişliğinde göstermek gibi. Bu, sabit boyutlar yerine esnek ve uyumlu tasarımlar oluşturmak için idealdir.


`FractionallySizedBox`, alt widget’ını ebeveynin yüzdelik oranına göre boyutlandırır.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/0bb3ee97-5293-44ec-a7b1-584ca45f4e04" alt="Screenshot_1751228772" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/973bc63d-7c52-4dd2-a9ba-51a01361d022" alt="Screenshot_1751228791" style="width:70%; height:auto;" />

---

### 6. FittedBox

`FittedBox`, çocuk widget'ını kendisine verilen alana taşma olmadan sığdırır. Özellikle uzun metinler veya büyük ikonlar için ideal olup, içeriğin taşmasını engeller. `BoxFit` özelliği sayesinde, içeriğin esnetilme ya da kırpılma biçimi üzerinde kontrol sağlanabilir.


`FittedBox`, içeriğini taşmadan, belirli alana sığdırır. `BoxFit` özelliği ile davranışı kontrol edilebilir.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/fcbffbfb-79df-49a9-9965-20996a54d312" alt="Screenshot_1751228830" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/ffd54f0b-710c-45bd-a857-b81c791f0f87" alt="Screenshot_1751228815" style="width:70%; height:auto;" />

---

### 7. AspectRatio

`AspectRatio`, bir widget'ın genişlik-yükseklik oranını sabit tutarak yerleşmesini sağlar. Bu, genellikle video oynatıcılar, görsel kutuları, kartlar veya harita bölümleri gibi oran duyarlılığı olan öğelerde kullanılır. Ekran boyutu değişse bile oran sabit kalır.


`AspectRatio`, alt widget’ın en-boy oranını sabit tutar. Kart, video gibi içerikler için idealdir.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/e6d91f28-41b2-4ff9-ab77-eea5e1a099f1" alt="Screenshot_1751228850" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/18505271-107c-4221-80b0-ca8ec74240a3" alt="Screenshot_1751228874" style="width:70%; height:auto;" />

---

### 8. Wrap

`Wrap`, satır veya sütun bazlı olarak widget'ların taşmasını engelleyerek bir alt satıra/sütuna geçmesini sağlar. Özellikle etiketler (tags), chip bileşenleri, buton grupları gibi dinamik, yerleşimi önceden bilinmeyen bileşenler için uygundur.


`Wrap` widget'ı, çocuklarını satır/sütunlarda sıralar ve sığmazsa bir alt satıra/sütuna geçer.

- **Dikey Ekran Görüntüsü:**

<img src="https://github.com/user-attachments/assets/2ecda0f6-700c-4340-a20f-a14a01587c75" alt="Screenshot_1751228894" style="width:25%; height:auto;" />

- **Yatay Ekran Görüntüsü:**
<img src="https://github.com/user-attachments/assets/26f0e708-3aa8-4be1-babc-7bc9d0248ed0" alt="Screenshot_1751228913" style="width:70%; height:auto;" />


---

