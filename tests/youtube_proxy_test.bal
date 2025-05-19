import ballerina/test;
import ballerina/http;

@test:Config {}
public function testVideoDownload() returns error? {
    http:Client ytProxyClient = check new ("http://localhost:8080");

    // Send GET request to /youtube/download endpoint
    http:Response response = check ytProxyClient->get("/youtube/download?videoUrl=https://www.youtube.com/watch?v=dQw4w9WgXcQ");

    // Validate the response
    test:assertEquals(response.statusCode, 200, msg = "Expected 200 OK response");
}
