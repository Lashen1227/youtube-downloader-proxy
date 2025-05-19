import ballerina/http;
import ballerina/lang.runtime;
import ballerina/log;
import ballerina/config;

import ./controller as controller;

service /youtube on new http:Listener(8080) {
    *controller:YouTubeController;
}
