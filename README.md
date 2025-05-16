# 🧠 News Sentiment Analysis - iOS App (Swift + Core ML)

This is an iOS app that performs **sentiment analysis on financial news**. Users can enter a news headline in a `TextField`, press **return**, and instantly see whether the news is **positive**, **negative**, or **neutral**, highlighted with a respective color.

---

## 📱 Features

- 🔍 Real-time sentiment prediction on financial news headlines  
- ✅ Uses a Core ML model trained with Create ML  
- 🎨 Displays sentiment with colors:
  - 🟢 Positive → Green
  - 🔴 Negative → Red
  - 🔵 Neutral → Blue
- 💬 Simple UI using SwiftUI
- 🔁 Handles return key to submit text



## 📷 Screenshot
<div style="display:flex; gap:10px;" >
  <img src= "https://github.com/user-attachments/assets/f5d27995-b0d0-4d6c-8041-3a6b143cc40e" alt="img1" width="200px"/>
  <img src= "https://github.com/user-attachments/assets/91e87ebc-0c50-4e08-b3fc-189457061ef9" alt="img1" width="200px"/>
  <img src= "https://github.com/user-attachments/assets/9a197837-4753-4eaf-b3e8-189d9b04dfa2" alt="img1" width="200px"/>
</div>

---

## 📊 Model Training

- **Dataset**: Used a Kaggle dataset containing labeled financial news headlines.
- **Tool**: Trained using **Create ML** (Text Classifier).
- **Model Output**: `.mlmodel` file integrated into Xcode.

---

## 🛠 Tech Stack

- Swift 5.9+
- SwiftUI
- Core ML
- Create ML (for training model)
- Xcode 16+
- iOS 16+

---
