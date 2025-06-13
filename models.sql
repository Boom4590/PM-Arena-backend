-- Users
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  pubg_id INTEGER UNIQUE,
  nickname TEXT,
  phone TEXT UNIQUE,
  password TEXT,
  balance INTEGER
);

-- Tournaments
CREATE TABLE IF NOT EXISTS tournaments (
  id SERIAL PRIMARY KEY,
  mode TEXT,
  
  entry_fee INTEGER,
  prize_pool INTEGER,
  start_time TIMESTAMP,
  room_id TEXT,
  room_password TEXT
);

-- Participants
CREATE TABLE IF NOT EXISTS participants (
  seat SERIAL PRIMARY KEY,
  tournament_id INTEGER REFERENCES tournaments(id),
  pubg_id INTEGER UNIQUE REFERENCES users(pubg_id) 
);

-- Blocked Users
CREATE TABLE IF NOT EXISTS blocked_users (
  id SERIAL PRIMARY KEY,
  pubg_id TEXT,
  phone TEXT
);
