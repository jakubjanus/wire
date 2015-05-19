var Model = function(){
  belongsTo: function(className){
    var tableName = className.tableName;
    "SELECT " + tableName + ".* FROM " + tableName + " WHERE " + tableName + ".id = " + this.readAttribute(tableName + "_id");
  }
}

module.exports = Model;


var Owner = Wire.Model.extends({
  tableName: 'owners',
  dogs: function(){
    this.hasMany(Dog);
  }
})

var Dog = Wire.Model.extends({
  tableName: 'dogs',
  owner: function(){
    this.belongsTo(Owner);
  }
});

var reksio = Dog.find(1).attr('name');
