var UserCreate = React.createClass({
  render: function () {
    return (
      <div>
        <h1>Create a Board</h1>
        <form action='' method="POST">
          <label htmlFor="board">Board Name:</label>
          <input type="text" name="board"/><br/>
          <input type="submit"/>
        </form>
      </div>
      );
  }
});

var ready = function () {
  ReactDOM.render(
    <UserCreate />,
    document.getElementById('users')
  );
};

$(document).ready(ready);
