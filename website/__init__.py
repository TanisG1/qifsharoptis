from flask import Flask
from flask_sqlalchemy import SQLAlchemy 
from os import path
from socket import socket

db = SQLAlchemy()
DB_Name = "Elidek.db"

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'pinw bossiskank mes sto bossiland'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///{elidek}'
    db.init_app(app)

    from .views import views
    from .auth import auth

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')

    

    create_database(app)

    return app


def create_database(app):
    if not path.exists('website/' + DB_Name):
        db.create_all(app=app)
        print('Created Database!')
