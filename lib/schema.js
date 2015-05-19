var copper = require("./copper");
var pg = require("pg");
var _ = require("underscore");

// moduł tworzenia schematu bazy danych
// Jakub Janus 2015-03-26
var Schema = function(wire){
  var schema = {};
  var Schema = function(){};
  schema.Schema = Schema;
  Schema.prototype.createTable = function(table_name, columns, callback) {
    console.log("createTable");
    var query_builder = new copper.CreateTable(table_name);

    _.each(columns, function(column){
      var column_name = column[0];
      var column_type = column[1];
      var column_options = column[2];

      query_builder.addColumn(column_name, column_type, column_options);
    });

    console.log("connect");
    console.log(query_builder.toSql());
    wire.client.query(query_builder.toSql(), function(err, result){
      if(err){
        console.log(err);
      }
      else{
        console.log("run callback");
        callback.call(this, result);
      }
      wire.client.end();
    });
  };

  Schema.prototype.dropTable = function(table_name, callback) {
    console.log('drop table');
    var dropTableQuery = new copper.DropTable(table_name);

    console.log("connect to drop a table");
    console.log("query to perform: " + dropTableQuery.toSql());

    wire.client.query(dropTableQuery.toSql(), function(err, result){
      if(err){
        console.log(err);
        console.log("cant dropTable");
      }
      else{
        console.log("table dropped");
        callback.call(this, result);
      }
      wire.client.end();
    });

  };

  return schema;
};




module.exports = Schema;

new Schema.CreateTable('users').execute(
  { columns: [{name: 'users', type: 'string'}, {name: 'age', type: 'integer'}] },
  function(success, err){
    if(success){
      console.log('success');
    }else{
      // error handling
    }
  }
);


// var Schema = function(client){
//   var schema = {};

//   var Schema.SUPPURTED_TYPES =

//   // ======================
//   //        Functions
//   // ======================
//   // TODO: return promise object
//   Schema.createTable = function(table_name, attrs, callback){
//     var sql = copper.createTable(table_name, attrs).sql;
//     client.query(sql, function(err, result){
//       if(err){
//         // TODO wrap error
//         callback.call(this, null, err);
//       }
//       else{
//         callback.call(this, null, {success: true});
//       };
//     });
//   };

//   return schema;
// }

// module.exports = Schema;
