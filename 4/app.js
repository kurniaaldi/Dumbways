const express = require("express");
const app = express();
const mysql = require("mysql");
const bodyParser = require('body-parser')
const methodOverride = require("method-override");

app.set("view engine", "ejs");
app.use(express.urlencoded({ extended: true }))
app.use(methodOverride('X-HTTP-Method-Override'))
app.use(methodOverride('_method'));
app.use(bodyParser.json());       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
    extended: true
}));

var conDB = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'me_dumb'
})

app.get('/', (req, res) => res.send('berhasil bro'));

app.get('/join', (req, res) => {
    var sql = "SELECT news.id AS id, news.titles AS title,news.images AS image, news.descriptions AS description, news.create_time AS time, users.name AS user FROM news JOIN users ON news.user_id = users.id";
    var sql2 = "SELECT * FROM users"
    conDB.query(sql, function (err, result, fields) {
        if (err) throw err;
        res.send(result)
        console.log(result)
        //  res.json({ result })
        //res.render("home", { result: result })
    });

});


app.get('/users', (req, res) => {
    var sql = "SELECT news.id AS id, news.titles AS title,news.images AS image, news.descriptions AS description, news.create_time AS time, users.name AS user FROM news JOIN users ON news.user_id = users.id";
    conDB.query(sql, function (err, result, fields) {
        if (err) throw err;

        console.log(result)

        res.render("home", { result: result })
    });

});

app.get('/users/detailNews/:id', (req, res) => {
    var id = req.params.id
    var sql = "SELECT * FROM news WHERE id=?"
    conDB.query(sql, [id], function (err, result) {
        if (err) throw err;

        console.log(result)
        console.log(id)
        res.render("detailNews", { result: result })
    });
    //res.send(id)
});


app.delete('/users/:id', (req, res) => {
    // var id = req.params.id
    conDB.query("DELETE FROM news WHERE id = ?", [req.params.id], function (err, result, fields) {
        if (err) throw err;
        console.log("kenapa di hapus bro!!")
        // res.send(result)

    });
    res.redirect("/users")
});


app.get('/users/:id/update', (req, res) => {
    var id = req.params.id
    let sql = "SELECT * FROM news WHERE id=?";
    conDB.query(sql, [id], function (err, result) {
        if (err) throw err;

        console.log(result)
        console.log(id)
        res.render("editCollection", { result: result })
    });
    //res.send(id)
});

app.put('/users/:id', (req, res) => {
    var id = req.params.id
    let title = req.body.title,
        images = req.body.img,
        description = req.body.desc,
        author = req.body.author,
        time = new Date()
    var sql = "UPDATE news SET titles=?, images=?, descriptions = ?,create_time=?,user_id=? WHERE id=?";
    conDB.query(sql, [title, images, description, time, author, id], function (err, result, field) {
        if (err) {
            console.log(err)
        } else {
            // successfully inserted into db
            console.log("udah di ubah bro!!")
            // res.send(result)
        }
    });
    res.redirect("/users")
});



app.get('/users/addNews', (req, res) => {
    let sql = "SELECT * FROM users";
    conDB.query(sql, function (err, result, fields) {
        if (err) throw err;

        console.log(result)

        res.render("addCollection", { result: result })
    });

});
app.post('/users/addNews', (req, res) => {
    let title = req.body.title,
        images = req.body.img,
        description = req.body.desc,
        author = req.body.author,
        time = new Date()
    var sql = "INSERT INTO news (titles,images, descriptions,create_time, user_id) VALUES (?,?,?,?,?)"
    conDB.query(sql, [title, images, description, time, author], function (err, result, field) {
        if (err) {
            console.log(err)
        } else {
            // successfully inserted into db
            console.log("udah di input bro!!")
            res.redirect("/users")

        }
    });
});


app.get('/users/addUser', (req, res) => {
    let sql = "SELECT * FROM users";
    conDB.query(sql, function (err, result, fields) {
        if (err) throw err;

        console.log(result)

        res.render("addUser", { result: result })
    });

});

app.post('/users/addUser', (req, res) => {
    var name = req.body.name,
        email = req.body.email;
    let sql = "INSERT INTO users (name, email) VALUES (?,?)"
    conDB.query(sql, [name, email], function (err, result, field) {
        if (err) {
            console.log(err)
        } else {
            // successfully inserted into db
            console.log("udah di input bro!!")
            res.redirect("/users")
        }
    });
});

app.get('/users/kelolaUser', (req, res) => {
    let sql = "SELECT * FROM users";
    conDB.query(sql, function (err, result, fields) {
        if (err) throw err;

        console.log(result)

        res.render("kelolaUser", { result: result })
    });

});

app.delete('/users/kelolaUser/:id', (req, res) => {
    // var id = req.params.id
    conDB.query("DELETE FROM users WHERE id = ?", [req.params.id], function (err, result, fields) {
        if (err) throw err;
        console.log("kenapa di hapus bro!!")
        // res.send(result)

    });
    res.redirect("/users/kelolaUser")
});

app.get('/users/kelolaUser/:id/update', (req, res) => {
    var id = req.params.id
    let sql = "SELECT * FROM users WHERE id=?";
    conDB.query(sql, [id], function (err, result, fields) {
        if (err) throw err;

        console.log(result)

        res.render("editUser", { result: result })
    });

});


app.put('/users/kelolaUser/:id/update', (req, res) => {
    var id = req.params.id,
        name = req.body.name,
        email = req.body.email;
    var sql = "UPDATE users SET name=?, email=? WHERE id=?"
    conDB.query(sql, [name, email, id], function (err, result, fields) {
        if (err) throw err;
        console.log("kenapa di hapus bro!!")
        // res.send(result)

    });
    res.redirect("/users/kelolaUser")
});

app.listen(3000, () => console.log('ok udah masuk bro!!'))