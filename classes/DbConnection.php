<?php

class DbConnection {
    private static $dbInstance;
    private $db;
    private $dbLogin = 'root';
    private $dbPassword = '1111';

    public static function getDatabaseInstance() {
        if(is_null(DbConnection::$dbInstance)) {
            self::$dbInstance = new DbConnection();
        }

        return self::$dbInstance;
    }

    private function __construct() {
        try {
            $this->db = new PDO(
                'mysql:host=localhost;dbname=event',
                $this->dbLogin,
                $this->dbPassword);
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Database connection failed: " . $e->getMessage();
        }
    }

    public function getDatabaseAccess() {
        return $this->db;
    }
}