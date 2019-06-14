const express=require("express");
const router=express.Router();
const pool=require("../pool");
const bodyParser = require("body-parser");
//测试: http://localhost:3001/personal/ackphone
router.get('/ackphone',(req,res)=>{
    var phone = req.query.phone;
    var sql=`SELECT uid FROM user 
    WHERE phone=?`;
    pool.query(sql,phone,(err,result)=>{
        if(err) throw (err);
        if(result.length>0){
            res.send({
                code:1,
                msg:"手机号已被占用！"
            });
        }
    })
})
//修改密码
router.post('/modifyPwd',bodyParser.json(),(req,res)=>{
    var _uid = req.body.uid,
        _upwd = req.body.upwd;
    var sql=`UPDATE user SET upwd=?
    WHERE uid=?`;
    pool.query(sql,[_upwd,_uid],(err,result)=>{
        if(err) throw (err);
        if(result.affectedRows>0){
            res.send({
                code:1,
                msg:"密码修改成功,请重新登录！"
            });
        }else{
            res.send({
                code:-1,
                msg:"修改失败！"
            })
        }
    })
})
 
module.exports=router;