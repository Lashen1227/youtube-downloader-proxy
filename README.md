# 🎬 Ballerina YouTube Downloader Proxy

A simple Ballerina-based proxy API that fetches YouTube video download metadata using a third-party API like [RapidAPI's YouTube Media Downloader](https://rapidapi.com/Glavier/api/youtube138/playground/apiendpoint_4c5ad961-4fc2-4066-bd68-6ea5bb94408c).  
Built with [Ballerina](https://ballerina.io/) to demonstrate service composition, REST APIs, and environment configuration.

---

## 🚀 Features

- 🎯 RESTful API endpoint using Ballerina HTTP services
- 🔐 Uses environment configuration for API keys
- 🌐 Connects to 3rd-party APIs like RapidAPI
- 📦 Modular project structure
- ✅ Unit tests with `ballerina/test`
- 🔁 Easy to extend or customize

---

## 🔧 Configuration

Update your **`utils.bal`** file with actual RapidAPI credentials:

```ballerina
public final string API_URL = config:getAsString("API_URL", "https://youtube-media-downloader.p.rapidapi.com/v2/video/details");
public final string API_KEY = config:getAsString("API_KEY", "your-api-key-here");
public final string API_HOST = config:getAsString("API_HOST", "youtube-media-downloader.p.rapidapi.com");
````

---

## 🧪 Running the Project

### 1. Start the Ballerina service

```bash
bal run
```

### 2. Run Tests

```bash
bal test
```

---