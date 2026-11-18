# MieliAmo

Richieste del miele dei nostri alveari – https://mieliamo.boneggio.it (sito riservato: si apre con il link)

- `index.html` – pagina pubblica per richiedere il miele: i vasetti (tipo di miele, peso e prezzo) impostati dal report
- `area.html?k=…` – pagina personale: carico dei vasetti pronti e, per l'utente intermedio, ordini, miele dato a mano, costi e grafico
- `report.html` – report del gestore (password + verifica in due passaggi): tipi di miele, vasetti e prezzi, carichi, ordini, costi, utenti
- `ordini.js` – scheda ordine (vasetti consegnati e pagamenti, anche parziali), vasetti disponibili, miele dato a mano
- `grafico.js` – grafico vendite / costi, anche per annata
- `tendine.js` – sezioni a tendina
- `functions/api.js` – motore (Cloudflare Pages Function), dati nel database Cloudflare D1 (`schema.sql`)
