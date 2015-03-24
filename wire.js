pg = require('pg');

var Wire = function(){
  return Wire.initialize.apply(null, arguments);
};

// wire = require('wire')({database: "database name", password: "12345", address: "localhost", user: "db_user"})
Wire.initialize = function(options){
  var wire = {
    VERSION: "0.0.1"
  }

  // ======================
  //        Modules
  // ======================
  wire.Model = require("./lib/model")(wire);
  wire.Copper = require("./lib/copper"); // query builder
  wire.Schema = require("./lib/schema")(wire);

  // wire.Model = function(){
  //   return WireModel.apply(this, wire.client);
  // };
  // wire.Copper = function(){
  //   return Copper.apply(this);
  // };
  // wire.Schema = function(){
  //   return Schema.apply(this, wire.client);
  // };


  // ======================
  //        Functions
  // ======================
  var connect = function(success_callback, error_callback){
    var conString = options;
    var client = new pg.Client(conString);
    wire.client = client;

    client.connect(function(pg_err){
      if(pg_err){
        console.log(pg_err);
        error_callback.call(this);
      }
      else{
        success_callback.call(this);
      }
    });
  };

  wire.connect = connect;


  return wire;
};


module.exports = Wire;
