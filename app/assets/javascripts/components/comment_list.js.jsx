var CommentList = React.createClass({
  propTypes: {
    comments: React.PropTypes.string // This should be an object, I think
  },

  componentDidMount: function(){
    Store.addChangeListener(this._onChange)
  },

  componentWillMount: function(){
    Store.removeChangeListener(this._onChange)
  },

  render: function(){
    return (
      <div>
        {Store.comments().map(function(comment){
          return(
            <Comment key={comment.id} {... comment}/>
          )
      })}
      </div>
    );
  },

  _onChange: function(){
    // Re-renders the component
    this.forceUpdate();
  }

});