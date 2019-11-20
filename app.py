from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
# 数据库配置
app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql+pymysql://root:140472@localhost:3306/flask_sqlalchemy_demo?charset-utf8'
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = True

# 实例化
db = SQLAlchemy(app)

class Member(db.Model):
    id = db.Column(db.BIGINT,primary_key=True)
    name = db.Column(db.String(255))
    age = db.Column(db.Integer)
    num = db.Column(db.String)

    # 默认返回字段
    def __repr__(self):
        return self.name

@app.route('/')
def hello_world():
    return 'Hello World! This is FlaskSQLAlchemyDemo'

# 获取所有数据
@app.route('/getAllData')
def getAllData():
    members = Member.query.all()
    print(members)
    return 'Yes!'
# 使用 filter_by 过滤，获取某个字段值
@app.route('/getFilterData')
def getFilterData():
    member = Member.query.filter_by(name = "狗松一号").first()
    print(member.age)
    return "123"

if __name__ == '__main__':
    app.run()
