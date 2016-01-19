var CommentList = React.createClass({
  propTypes: {
    comments: React.PropTypes.string // This should be an object, I think
  },

  render: function(){
    return (
      <div>
        {JSON.parse(this.props.comments).map(function(comment){
          return(
            <Comment key={comment.id} {... comment}/>
          )
      })}
      </div>
    );
  }
});