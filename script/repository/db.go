package repository

import (
	"database/sql"
)

var db *sql.DB

// ローカル用
func ConnectionLocal() (*sql.DB, error) {
	var err error
	db, err = sql.Open("mysql", "user:p@ssw0rd@(localhost:33060)/mydb")
	return db, err
}

// dev環境など
func Connection() (*sql.DB, error) {
	var err error
	db, err = sql.Open("mysql", "user:p@ssw0rd@(localhost:33060)/mydb")
	return db, err
}
