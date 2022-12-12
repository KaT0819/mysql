package main

import (
	"fmt"
	"os"

	_ "github.com/go-sql-driver/mysql"

	repo "script/repository"
)

func main() {
	// db, err := repo.Connection()
	db, err := repo.ConnectionLocal()

	if err != nil {
		fmt.Printf("Connection Error: %v", err)
		os.Exit(1)
	}
	defer db.Close()

	fmt.Printf("done\n")
}
