from sqlalchemy import create_engine
from .db_config import load_db_config


def get_engine():
    cfg = load_db_config()

    engine = create_engine(
        f"postgresql+psycopg2://{cfg['user']}:{cfg['password']}"
        f"@{cfg['host']}:{cfg['port']}/{cfg['dbname']}"
    )

    return engine
