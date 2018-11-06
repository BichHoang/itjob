import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class Example extends Component {
    render() {
        return (
            <div classNameName="container">
                <div className="navbar">
                    <a className="navbar-brand">Title</a>
                    <ul className="nav navbar-nav">
                        <li className="active">
                            <a>fdgfhgfj</a>
                        </li>
                        <li>
                            <a>Link</a>
                        </li>
                    </ul>
                </div>
            </div>
        );
    }
}

if (document.getElementById('example')) {
    ReactDOM.render(<Example />, document.getElementById('example'));
}
