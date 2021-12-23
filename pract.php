<?php
const SERVER = 'localhost';
const DB = 'praktika';
const LOGIN = 'root';
const PASS = 'root';

$connect = mysqli_connect(SERVER,LOGIN,PASS,DB) or die ("Ошибка подключения к базе данных");
mysqli_query($connect, 'SET NAME utf8');

$sql="INSERT INTO `user`(nikname,login,password,age,gender,e_mail,phone_number) VALUES('Archer','Archer','Archer','19','M','archer@gmail.com','89991112233')";

$res=mysqli_query($connect,$sql);

$sqlI="SELECT *FROM user";
$resI = mysqli_query($connect,$sql);

while ($row = mysqli_fetch_assoc($resI)){
    echo '<h3>Данные пользователей</h3>'.$row['nikname'].'; '.$row['login'].'; '.$row['password'].'; '.$row['age'].'; '.$row['gender'].'; '.$row['e_mail'].'; '.$row['phone_number'].';';
}
