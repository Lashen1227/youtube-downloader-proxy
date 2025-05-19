import ballerina/http;
import ./utils as utils;

http:Client ytClient = check new (utils:API_URL) {
    headers: {
        "X-RapidAPI-Key": utils:API_KEY,
        "X-RapidAPI-Host": utils:API_HOST,
        "Content-Type": "application/json"
    }
};

public function getVideoDownloadInfo(string videoUrl) returns json|error {
    json payload = { "videoUrl": videoUrl };
    json|error resp = ytClient->post("", payload);
    return resp;
}
