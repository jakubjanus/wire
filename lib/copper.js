var _ = require("underscore");

var Copper = function(){
  var copper = {};

  var QUERY_TYPES = ["create table", "select", "update", "delete"];
  
  // ======================
  //        Query Types
  // ======================
  var CreateTable = (function(){
      function CreateTable(table_name){
        this.table_name = table_name;
        this.columns_sql = [];
      };

      CreateTable.prototype.addColumn = function(column_name, column_typ, options){
        column_sql = column_name + " " + column_typ +  " " + processOptions(options);
        this.columns_sql.push(column_sql);

        return this;
      };

      CreateTable.prototype.addColumns = function(attrs){
        var that = this;
        _.map(attrs, function(attr){
          that.addColumn(attr.name, attr.type, attr.options);
        });

        return this;
      };

      CreateTable.prototype.toSql = function(){
        if(_.isEmpty(this.columns_sql)){
          // TODO raise some error
        }
        else{
          var query = "CREATE TABLE " + this.table_name + " (";
          var last_column = this.columns_sql.pop();
          _.map(this.columns_sql, function(column_sql){
            query += column_sql + ",";
          });
          return query += last_column + ");";
        }
      };

      var processOptions = function(options){
        return "";
      };
  
      return CreateTable;
    })();

    

  var DropTable = (function(){
      function DropTable(table_name){
        this.table_name = table_name;
      };

      DropTable.prototype.toSql = function(){
        return "DROP TABLE " + this.table_name + ";";
      };

    return DropTable;
  })();


  copper.CreateTable = CreateTable;
  copper.DropTable = DropTable;

  return copper;
}();

module.exports = Copper;