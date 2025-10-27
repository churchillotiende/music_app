from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

DATABASE_URL ='mysql+pymsql://admin:test1234@localhost:3306/fluttermusicapp'
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit = False,autoFlush = False,)
db = SessionLocal()