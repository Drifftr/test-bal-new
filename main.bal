import ballerina/http;

configurable string appName = ?;
configurable int maxUsers = ?;
configurable boolean maintenanceMode = ?;

service / on new http:Listener(8080) {
    resource function get config() returns json {
        return {
            "appName": appName,
            "maxUsers": maxUsers,
            "maintenanceMode": maintenanceMode
        };
    }
}
