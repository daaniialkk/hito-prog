<?php
    class Usuario{
        private $nombre;
        private $apellidos;
        private $password;
        private $email;
        private $connection;
        public function __construct(){
            require_once('class_conexion.php');
            $this -> connection = new ConexionMySQL(); 
            
        }
         //set usuario:
        public function insert($nombre, $apellidos, $password, $email){
            $this -> nombre = $nombre;
            $this -> apellidos = $apellidos;
            $this -> password = $password;
            $this -> email = $email;
            $sql = "INSERT INTO usuarios (nombre, apellidos, password, email) VALUES ('$nombre', '$apellidos', '$password', '$email')";
            $registros= $this->connection->executeQuery($sql);
            return $registros;
        }
        //get
        public function getUserByPassword($nombre, $password){
            $this -> nombre = $nombre;
            $this -> password = $password;
            $sql= "SELECT * FROM usuarios WHERE TRIM(nombre) = '".trim($nombre)."' AND password ='".trim($password)."'";
            $registros= $this->connection->executeQuery($sql);
            return $registros;
        }
        //get
        public function getUserByEmail($email){
            $this -> email = $email;
            $sql= "SELECT * FROM usuarios WHERE TRIM(email) = '".trim($email)."'";
            $registros= $this->connection->executeQuery($sql);
            return $registros;
        }
    }