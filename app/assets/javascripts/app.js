//
var Constants = {
  CHANGE_EVENT:  'change',
  ADD_COMMENT: 'comments.add'
};

var Store = new _.extend({}, EventEmitter.prototype, {
  _comments: [],

  addComment: function(comment){
    this._comments[comment.id] = comment;
  },

  comments: function(){
    return this._comments
  },


  // Boilerplate

  addChangeListener: function(callback){
    this.on(Constants.CHANGE_EVENT, callback); // this.on provided by EventEmitter
  },

  removeChangeListener: function(callback){
    this.removeListener(Constants.CHANGE_EVENT, callback); // this.removeListener provided by EventEmitter
  },

  emitChange: function(){
    this.emit(Constants.CHANGE_EVENT);
  }
});

var AppDispatcher = new Flux.Dispatcher();

AppDispatcher.register(function(payload){
  var action = payload.actionType;
  switch(action) {
    case Constants.ADD_COMMENT:
      Store.addComment(payload.comment);
      break;
    default:
      // Do nothing
  }
});