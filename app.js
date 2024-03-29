const express = require("express");
const bodyParser = require("body-parser");

const cors = require("cors");
const session=require("express-session");

const  personal= require("./routes/personal");
const  strategy= require("./routes/strategy");
const addTravel = require("./routes/add_travel");

var app = express();
app.listen(3001);
console.log("服务器创建成功，端口号3001");
// app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json({limit:'50mb'}));
app.use(bodyParser.urlencoded({limit:'50mb',extended:true}));
app.use(express.static(__dirname + "/public"));
// app.use(express.static(__dirname + "/dist"));
app.use(cors({
    origin:'*',
    credentials:true
}))
app.use(session({
    secret:"128位随机字符",
    resave:false,
    saveUninitialized:true
  }))

app.use('/personal',personal);
app.use("/strategy",strategy);
app.use("/add_travel",addTravel);
