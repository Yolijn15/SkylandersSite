<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- CSS only -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/nfc.css">

    <title>Skylanders</title>
    <link rel="shortcut icon" type="image/png" href="images/favicon.png"/>

  </head>

  <?php include "include/include.php" ?>
  <body>
    <form method="post" action="nfc.php">
      <input type="submit" value="Click here to scan your Skylander!">
    </form>

    <h3 class="seeAction">See me in action!</h3>
  
  <?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "skylander";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // SELECT * FROM `skylanders` JOIN `nfc` ON `skylanders`.`nfcTag` = `nfc`.`nfcTag` ORDER BY nfc.nfcTag DESC LIMIT 1

  $sql = "SELECT * FROM `skylanders` JOIN `nfc` ON `skylanders`.`nfcTag` = `nfc`.`nfcTag` ORDER BY nfc.nfcId DESC LIMIT 1";
  $result = $conn->query($sql);
  
/*
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo $row['skylanderName']; ?> 
      <img class="skylanderImg" src="images/<?php echo $row["skylanderImage"]; ?>" alt=""></a>
      <video id="video" width="400px" autoplay muted controls>
      <source src="videos/<?php echo $row['skylanderTrailer']; ?>" type="video/mp4"> </video> 
      <?php
    }
  } else {
    echo "";
  }*/

  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {?>
      <img class="skylanderImg" src="images/<?php echo $row["skylanderImage"]; ?>" alt=""></a>
      <video id="video" width="400px" autoplay muted controls>
      <source src="videos/<?php echo $row['skylanderTrailer']; ?>" type="video/mp4"> </video>
      <h3 class="skylanderName"> <?php echo $row['skylanderName']; ?> </h3>
      <?php
    }
  } else {
    echo "";
  }
  $conn->close();
  ?>
  <?php include "include/includefooter.php" ?>
  </body>
</html>