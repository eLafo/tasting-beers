var Comment = React.createClass({

  // This is not required. Just a common practice in react community. Useful for other developers
  propTypes: {
    author: React.PropTypes.string,
    body: React.PropTypes.string
  },

  // You always need a render function
  render: function() {

    return (
      <div>
        <div>Author: {this.props.author}</div>
        <div>Body: {this.props.body}</div>
      </div>
    );
  }
});