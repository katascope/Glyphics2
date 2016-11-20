//See: https://www.npmjs.com/package/dispatch
fs = require('fs')
dispatch = require('dispatch');
path = require('path');
var http = require('http');

var digestData = JSON.parse(fs.readFileSync('digest\\digest.json','utf8'));
var codes = digestData.codes;

var server = http.createServer(
    dispatch({
        '/': function(req, res, next){
            res.end(
                    "<a href=\"/Digest/static.html\">Visual Digest</a> | " +
                    "<a href=\"/Documentation/HTML/index.html\">Documentation</a> | " +

                    "<a href=\"/api/digest/\">/api/digest</a> | " +
                    "<a href=\"/api/names/\">/api/names</a> | " +
                    "<a href=\"/api/views/\">/api/views</a> | " +
                    "<a href=\"/api/rects/\">/api/rects</a>" +
                    
                    "<br>");
        },
        '/view': function (req, res, next) {
            var searchName = req.url.split('view')[1];
            /*
            var basePath = "./";
            var filePath = basePath + request.url;
            */
            var contentType = 'text/html';
            /*var extname = path.extname('filePath');
            //get right Content-Type
            switch (extname) {
                case '.js':
                    contentType = 'text/javascript';
                    break;
                case '.css':
                    contentType = 'text/css';
                    break;
            }*/

            /*
            //default to index.html
            if (filePath == basePath + "/") {
                filePath = filePath + "index.html";
            }*/

            //Write the file to response
            fs.readFile("deserializer.html", function (error, content) {
                if (error) {
                    res.writeHead(500);
                    res.end();
                } else {
                    res.writeHead(200, { 'Content-Type': contentType });
                    res.end(content, 'utf-8');
                }
            });
         },
        '/api/rects/(\\w+)': function(req, res, next){
            console.log('Rects ' + req.url);
		        var searchName = req.url.split('/api/rects/')[1];
		        for (var i = 0; i < codes.length; i++){
		            if (codes[i].name == searchName){
			              res.end(codes[i].SerializedRects);
		            }
		        }
	      },
        '/api/digest/(\\w+)': function(req, res, next){
            console.log('"Digest/<name> ' + req.url);
		        var searchName = req.url.split('/api/digest/')[1];
		        for (var i = 0; i < codes.length; i++){
		            if (codes[i].name == searchName){
			              res.end(JSON.stringify(codes[i]));
		            }
		        }
	      },
        '/api/names(/*)': function(req, res, next){
            console.log('names ' + req.url);
            var names = [];
	        for (var i = 0; i < codes.length; i++){
                names.push(codes[i].name);
	        }
            res.end(JSON.stringify(names));
	      },
        '/api/views(/*)': function (req, res, next) {
            console.log('names ' + req.url);
            var views = "<title>Views</title>";
            var names = [];
            for (var i = 0; i < codes.length; i++) {
                views += "<a href=\"/view?serialized=" + codes[i].SerializedRects + "\">" + codes[i].name + "</a><br>";
                //  names.push(codes[i].name);
            }
            res.end(views);
        },
        '/api/digest(/*)': function (req, res, next) {
            console.log('digest ' + req.url);
		        res.end(JSON.stringify(digestData));
        },
        '.*': function (req, res, next) {
            console.log('all ' + req.url);
            //res.end('wtfeverything');
            var searchName = req.url.split('view')[1];
            
            var basePath = "./";
            var filePath = basePath + req.url;
            
            var contentType = 'text/html';
            var extname = path.extname('filePath');
            //get right Content-Type
            switch (extname) {
                case '.js':
                    contentType = 'text/javascript';
                    break;
                case '.css':
                    contentType = 'text/css';
                    break;
            }
            
            //default to index.html
            if (filePath == basePath + "/") {
                filePath = filePath + "index.html";
            }

            //Write the file to response
            fs.readFile(filePath, function (error, content) {
                if (error) {
                    res.writeHead(500);
                    res.end("Could not read");
                } else {
                    res.writeHead(200, { 'Content-Type': contentType });
                    res.end(content, 'utf-8');
                }
            });
        }
    })
);

server.listen(8080);