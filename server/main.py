from fastapi import FastAPI,Request
from pydantic import BaseModel
from sqlachemy import create_engine
from sqlachemy.orm import sessionmaker
from sqlachemy.ext.declarative import declarative_base

URL_DATABASE =""
engine = create_engine(URL_DATABASE)
SessionLocal = sessionmaker(autocomplete= False,autoflush=False,bind=engine)

Base = declarative_base()

app = FastAPI()

class UserCreate(BaseModel):
    name:str
    email:str
    password:str

@app.post('/signup')
def signup_user(user:UserCreate):
    print(user.name)
    print(user.email)
    print(user.password)
    pass