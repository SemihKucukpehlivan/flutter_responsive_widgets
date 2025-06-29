# Flutter Responsive Widget Examples

This is a sample Flutter application that demonstrates how to use **Flutter’s built-in (no external packages required)** responsive design widgets.  
The app provides practical examples for Flutter developers who want to learn how to adapt their apps to different screen sizes and device orientations (portrait/landscape).

---

## 🚀 Getting Started

Follow the steps below to run the app locally:

### 1. Clone the Repository

```bash
git clone https://github.com/SemihKucukpehlivan/flutter_responsive_widgets.git
cd flutter_responsive_widgets
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Run the App

After connecting an Android emulator, iOS simulator, or a physical device:

```bash
flutter run
```

Once compiled successfully, the app will show a **main screen with a list of buttons**, each navigating to a different responsive widget example.

---

## 📱 Widget Examples

In Flutter, **responsive widgets** allow your app to adapt to different screen sizes and orientations, ensuring consistent and usable layouts across devices — from small phones to large tablets and desktops.

This application includes examples of Flutter’s **built-in (package-free)** responsive widgets. Each example comes with a description and can be extended with your own screenshots after running the app.

---

### 1. MediaQuery

`MediaQuery` provides information about the device’s screen size, pixel density, text scale factor, safe areas, and orientation. It’s often used to make decisions in UI design, like hiding/showing elements or adjusting font sizes.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/75ef2ba1-9a93-4dfb-a1a7-437440d1505d" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/78cd6af5-8002-4031-b161-8b50e5d9b4f5" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 2. OrientationBuilder

`OrientationBuilder` allows you to create different layouts based on the current device orientation. It's particularly useful on tablets or large screens to enhance user experience.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/e7dd3782-c692-4f45-84ac-6096411bf754" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/cd797f3a-462e-40e8-8b5c-5780d51de523" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 3. LayoutBuilder

`LayoutBuilder` receives the parent constraints and builds its child based on the available max width/height. It’s great for creating responsive designs inside containers, cards, or specific layout areas.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/eb57fd6e-e941-4482-bd57-e872e9aaada7" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/51fc9854-1c0a-458e-9bcb-285d239fe322" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 4. Flexible & Expanded

`Flexible` and `Expanded` help manage how child widgets share space in `Row`, `Column`, or `Flex` widgets. While `Expanded` takes up the remaining space, `Flexible` provides a proportional distribution.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/b0bdcb3c-5452-4069-9537-1b15e4892f11" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/097020c1-35c7-45f6-a94a-75cfbd93db7d" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 5. FractionallySizedBox

`FractionallySizedBox` sizes its child as a fraction of its parent. Useful for flexible UIs where you want widgets to take up, for example, 80% of the screen width.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/0bb3ee97-5293-44ec-a7b1-584ca45f4e04" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/973bc63d-7c52-4dd2-a9ba-51a01361d022" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 6. FittedBox

`FittedBox` scales and positions its child to fit within the available space, avoiding overflow. Useful for responsive text and icons. `BoxFit` controls how it scales (contain, cover, etc.).

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/fcbffbfb-79df-49a9-9965-20996a54d312" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/ffd54f0b-710c-45bd-a857-b81c791f0f87" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 7. AspectRatio

`AspectRatio` keeps a child widget’s width-to-height ratio constant regardless of the screen size. Perfect for video players, cards, maps, and other visual content.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/e6d91f28-41b2-4ff9-ab77-eea5e1a099f1" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/18505271-107c-4221-80b0-ca8ec74240a3" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---

### 8. Wrap

`Wrap` arranges children in horizontal or vertical runs and wraps them to the next line or column when there's not enough space. Ideal for tags, chips, or buttons with dynamic sizes.

- **Portrait Screenshot:**

<img src="https://github.com/user-attachments/assets/2ecda0f6-700c-4340-a20f-a14a01587c75" alt="Portrait Screenshot" style="width:25%; height:auto;" />

- **Landscape Screenshot:**

<img src="https://github.com/user-attachments/assets/26f0e708-3aa8-4be1-babc-7bc9d0248ed0" alt="Landscape Screenshot" style="width:70%; height:auto;" />

---
