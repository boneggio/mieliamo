-- MieliAmo: quantità contate a VASETTI. Ogni vasetto = tipo di miele + peso in grammi + prezzo (impostazioni 'mieli' e 'formati').
-- pezzi = JSON dei vasetti richiesti [{id, miele, g, p, n}]; vasetti = quanti vasetti in tutto; grammi = peso totale.
CREATE TABLE orders (id TEXT PRIMARY KEY, data TEXT NOT NULL, nome TEXT, cognome TEXT, telefono TEXT, vasetti INTEGER DEFAULT 0, grammi INTEGER DEFAULT 0, euro REAL DEFAULT 0, note TEXT, pagato INTEGER DEFAULT 0, consegnato INTEGER DEFAULT 0, data_pag TEXT DEFAULT '', metodo TEXT DEFAULT '', per_il TEXT DEFAULT '', stato TEXT DEFAULT 'ok', consegnati INTEGER DEFAULT 0, eliminato TEXT DEFAULT '', mano INTEGER DEFAULT 0, pezzi TEXT DEFAULT '', regalato INTEGER DEFAULT 0);
-- carichi: n vasetti del formato fmt (copia di miele e grammi, così restano leggibili anche se il formato cambia)
CREATE TABLE loads (id TEXT PRIMARY KEY, data TEXT NOT NULL, fmt TEXT NOT NULL, miele TEXT, g INTEGER DEFAULT 0, n INTEGER NOT NULL, utente TEXT, note TEXT, ins TEXT);
CREATE TABLE costs (id TEXT PRIMARY KEY, data TEXT NOT NULL, descr TEXT, euro REAL NOT NULL, utente TEXT, ins TEXT, qta REAL DEFAULT 0, unita TEXT DEFAULT '');
CREATE TABLE users (tk TEXT PRIMARY KEY, nome TEXT NOT NULL, ruolo TEXT NOT NULL, creato TEXT);
CREATE TABLE settings (k TEXT PRIMARY KEY, v TEXT);
CREATE TABLE idem (rid TEXT PRIMARY KEY, res TEXT, ts INTEGER);
CREATE TABLE payments (id TEXT PRIMARY KEY, order_id TEXT NOT NULL, data TEXT NOT NULL, euro REAL NOT NULL, metodo TEXT, utente TEXT, ins TEXT, vasetti INTEGER DEFAULT 0);
CREATE TABLE sessions (h TEXT PRIMARY KEY, creato TEXT, exp INTEGER);
