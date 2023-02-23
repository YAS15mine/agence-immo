

<?php
// // check if the form has been submitted
// if(isset($_POST['submit'])) {
//     // get the uploaded files
//     $primaryImage = $_FILES['fileInput']['name'];
//     $secondaryImages = array($_FILES['fileInput1']['name'], $_FILES['fileInput2']['name'], $_FILES['fileInput3']['name'], $_FILES['fileInput4']['name']);
  
//     // process the uploaded files and insert them into the database
//     // ...
  
//   }
//   // check if the form has been submitted
//   if(isset($_POST['submit'])) {
//     // get the uploaded files
//     $primaryImage = $_FILES['fileInput']['name'];
//     $secondaryImages = array($_FILES['fileInput1']['name'], $_FILES['fileInput2']['name'], $_FILES['fileInput3']['name'], $_FILES['fileInput4']['name']);
  
//     // MySQL database configuration
//     $host = 'localhost';
//     $dbname = 'mydatabase';
//     $user = 'myuser';
//     $password = 'mypassword';
  
//     // Establish database connection using PDO
//     try {
//         $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
//         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     } catch(PDOException $e) {
//         echo "Connection failed: " . $e->getMessage();
//     }
  
//     // insert the primary image into the database as a BLOB
//     $stmt = $pdo->prepare('INSERT INTO images (type, data, is_primary) VALUES (:type, :data, 1)');
//     $stmt->bindParam(':type', $_FILES['fileInput']['type'], PDO::PARAM_STR);
//     $stmt->bindParam(':data', file_get_contents($_FILES['fileInput']['tmp_name']), PDO::PARAM_LOB);
//     $stmt->execute();
//     $primaryId = $pdo->lastInsertId();
  
//     // insert the secondary images into the database as BLOBs
//     foreach ($secondaryImages as $image) {
//       if ($image != '') {
//         $stmt = $pdo->prepare('INSERT INTO images (type, data, is_primary) VALUES (:type, :data, 0)');
//         $stmt->bindParam(':type', $_FILES[$image]['type'], PDO::PARAM_STR);
//         $stmt->bindParam(':data', file_get_contents($_FILES[$image]['tmp_name']), PDO::PARAM_LOB);
//         $stmt->execute();
//       }
//     }
//   }
// establish database connection using PDO
$dbhost = 'your_host';
$dbname = 'your_database_name';
$dbuser = 'your_username';
$dbpass = 'your_password';
$db = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);

// set PDO error mode to exception
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// check if the form has been submitted
if(isset($_POST['addBtn'])) {
  // get the uploaded files
  $primaryImage = $_FILES['primary_image']['name'];
  $secondaryImages = array($_FILES['secondary_image']['name']);

  // get the form input values
  $title = $_POST['title'];
  $price = $_POST['price'];
  $address = $_POST['address'];
  $superficie = $_POST['superficie'];
  $type = $_POST['type'];
  $description = $_POST['description'];

  try {
    // prepare the SQL query
    $stmt = $db->prepare("INSERT INTO annonces (primary_image, secondary_images, title, price, address, superficie, type, description) VALUES (:primary_image, :secondary_images, :title, :price, :address, :superficie, :type, :description)");

    // bind the input values to the query parameters
    $stmt->bindParam(':primary_image', $primaryImage);
    $stmt->bindParam(':secondary_images', implode(',', $secondaryImages));
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':price', $price);
    $stmt->bindParam(':address', $address);
    $stmt->bindParam(':superficie', $superficie);
    $stmt->bindParam(':type', $type);
    $stmt->bindParam(':description', $description);

    // execute the query
    $stmt->execute();

    // redirect to success page
    header("Location: success.php");
    exit();
  } catch(PDOException $e) {
    // redirect to error page
    header("Location: error.php?message=" . $e->getMessage());
    exit();
  }
}
?>
