import { join } from 'path';
import { readFileSync } from 'fs';
import express from 'express';
import serveStatic from 'serve-static';

import shopify from './shopify.js';
import webhooks from './webhooks.js';

import mysql from 'mysql2';


const PORT = parseInt(process.env.BACKEND_PORT || process.env.PORT, 10);

const STATIC_PATH =
	process.env.NODE_ENV === 'production'
		? `${process.cwd()}/frontend/dist`
		: `${process.cwd()}/frontend/`;

const app = express();

// Set up Shopify authentication and webhook handling
app.get(shopify.config.auth.path, shopify.auth.begin());
app.get(
	shopify.config.auth.callbackPath,
	shopify.auth.callback(),
	shopify.redirectToShopifyOrAppRoot()
);
app.post(
	shopify.config.webhooks.path,
	// @ts-ignore
	shopify.processWebhooks({ webhookHandlers: webhooks })
);

// All endpoints after this point will require an active session
app.use('/api/*', shopify.validateAuthenticatedSession());

app.use(express.json());


app.use(serveStatic(STATIC_PATH, { index: false }));

app.use('/*', shopify.ensureInstalledOnShop(), async (_req, res) => {
	return res.set('Content-Type', 'text/html').send(readFileSync(join(STATIC_PATH, 'index.html')));
});

app.listen(PORT);

// App on another port for connect and updating info in mysql
const MySQLapp = express();

MySQLapp.use(express.json());

const db = mysql.createConnection({
	host: process.env.DB_HOST,
	user: process.env.DB_USER,
	password: process.env.DB_PASSWORD,
	database: process.env.DB_NAME,
});

db.connect((err) => {
	if (err) {
		console.error('Error connecting to MySQL:', err);
	} else {
		console.log(`Connected to MySQL on port ${process.env.MYSQL_APP_PORT}`);
	}
}); 

MySQLapp.post('/addSavedCartJson', (req, res) => {
		const { user_id, save_cart_data_json } = req.body;
	  
		const sql = 'INSERT INTO save_cart_data (user_id, save_cart_data_json) VALUES (?, ?)';
	  
		const result = db.query(sql, [user_id, JSON.stringify(save_cart_data_json)], (err, result) => {
		  if (err) { 
			console.error('Error inserting data:', err);
			res.status(500).json({ error: 'Internal Server Error' });
		  } else {
			console.log('Data inserted successfully');
			res.status(200).send({ success: true, added: req.body});
		  }
		}); 
		return result
	  });

MySQLapp.listen(process.env.MYSQL_APP_PORT)  