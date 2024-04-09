bring ex;
bring cloud;
bring http;

let api = new cloud.Api(
    cors: true
);

let react = new ex.ReactApp(
  projectPath: "../client",
);

react.addEnvironment("apiUrl", api.url);
react.addEnvironment("title", "Learn React with Wing");

api.get("/title", inflight () => {
    return {
        status: 200,
        body: "Hello from the API, and stuff"
    };
});