
import ballerina/config;

public final string API_URL = config:getAsString("API_URL", "https://youtube-media-downloader.p.rapidapi.com/v2/video/details");
public final string API_KEY = config:getAsString("API_KEY", "your-api-key-here");
public final string API_HOST = config:getAsString("API_HOST", "youtube-media-downloader.p.rapidapi.com");
