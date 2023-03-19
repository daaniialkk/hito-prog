<?php 
    if(isset($_POST['acction'])) {
        $valor = $_POST['acction']; 
        echo "El valor de acction es: " . $valor;
    
        require('class_usuarios.php');
        $usuario = new Usuario();
        $nombre = $_POST['name'];
        $apellidos = $_POST['apellidos'];
        $password = $_POST['password'];
        $email = $_POST['email'];
        
        $resultado = $usuario->insert($nombre, $apellidos, $password, $email);
                
        if ($resultado == 'OK'){
            header("Location:../login.html");
        }else{
            echo 'Algo a fallado';
        }
    } else {
        echo "Algo ha ido mal.";
    }