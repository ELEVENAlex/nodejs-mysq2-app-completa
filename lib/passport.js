const passport =require('passport')
//const { Strategy } = require('passport-local')
const localStrategy = require('passport-local').Strategy

const pool = require('../database')

passport.use('local.signup', new localStrategy({
    usernameField: 'username',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, username, password, done) => {
    // const {email, fullname} = req.body
    // const newUser = {
    //     username,
    //     password,
    //     email,
    //     fullname
    // }

    // await pool.query('INSERT INTO users SET ?', [newUser])
    console.log(req.body)
}))