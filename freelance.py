from flask import Flask ,request,jsonify
from flask_sqlalchemy import SQLAlchemy

app=Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///freelance.db'
db=SQLAlchemy(app)

class client(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    username=db.Column(db.String(80))
    email=db.Column(db.String(120))
    password=db.Column(db.String(80))

class freelancer(db.Model):
    idf=db.Column(db.Integer,primary_key=True)
    usernamef=db.Column(db.String(80))
    emailf=db.Column(db.String(120))
    passwordf=db.Column(db.String(80))

@app.route('/')


@app.route('/login',methods=["POST"])


def login():
    d={}
    if request.method=="POST":
        uname = request.form["uname"]
        passw = request.form["passw"]
        
        clientlogin=user.query.filter_by(username=uname,password=passw).first()
    
        if clientlogin is not None:
            #account found
            d["status"]='Login sucessfully'
            return jsonify(d)
        else:
            #account not exist
            d["status"]='Username or password is incorrect'
            return jsonify(d)

    return ''


@app.route('/register',methods=["GET","POST"])


def register():
    d={}
    if request.method =="POST":
        uname = request.form['uname']
        mail = request.form['mail']
        passw = request.form['passw']
        username = user.query.filter_by(username=uname).first()
        if username is None:
            clientregister = user(username = uname, email = mail, password = passw)
            db.session.add(register)
            db.session.commit()
            d["status"] = 'user is registered succesfulyy'
            return jsonify(d)
        else:
            # already exist
            d["status"] = 'username already exists'
            return jsonify(d)
    return ''

@app.route('/loginf',methods=["POST"])

def loginf():
    d={}
    if request.method=="POST":
        unamef = request.form["uname"]
        passwf = request.form["passw"]
        
        freelancerlogin=user.query.filter_by(usernamef=unamef,passwordf=passwf).first()
    
        if freelancerlogin is not None:
            #account found
            d["status"]='Login sucessfully'
            return jsonify(d)
        else:
            #account not exist
            d["status"]='Username or password is incorrect'
            return jsonify(d)

    return ''


@app.route('/registerf',methods=["GET","POST"])


def registerf():
    d={}
    if request.method =="POST":
        unamef = request.form['uname']
        mailf = request.form['mail']
        passwf = request.form['passw']
        usernamef = user.query.filter_by(username=uname).first()
        if username is None:
            freelancerregister = user(usernamef = unamef, emailf = mailf, passwordf = passwf)
            db.session.add(register)
            db.session.commit()
            d["status"] = 'user is registered succesfulyy'
            return jsonify(d)
        else:
            # already exist
            d["status"] = 'username already exists'
            return jsonify(d)
    return ''

if __name__=="__main__":
    db.create_all()
    app.run(debug=True)