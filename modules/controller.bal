import ballerina/http;
import ballerina/log;
import ./service as service;

service class YouTubeController {

    resource function get download(http:Caller caller, http:Request req) returns error? {
        string videoUrl = req.getQueryParamValue("videoUrl") ?: "";

        if videoUrl == "" {
            check caller->respond({ error: "Missing 'videoUrl' query parameter" });
            return;
        }

        json|error result = service:getVideoDownloadInfo(videoUrl);
        if result is json {
            check caller->respond(result);
        } else {
            log:printError("Failed to fetch video info", 'error = result);
            check caller->respond({ error: "Failed to retrieve video data" });
        }
    }
}
