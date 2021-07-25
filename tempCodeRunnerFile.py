
            d["status"]='Login sucessfully'
            return jsonify(d)
        else:
            #account not exist
            d["status"]='Username or password is incorrect'
            return jsonify(d)
@app.route('/register',methods=["GET","POST"])
def register():
    d={}