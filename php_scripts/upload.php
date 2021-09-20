<?php
include 'config.php';
$target_dir = "../python_scripts/uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadcounter = 1;
$csvfiletype = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if file already exists
if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadcounter = 0;
}

// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
  echo "Sorry, your file is too large.";
  $uploadcounter = 0;
}

// Allow certain file formats
if($csvfiletype != "csv" ) {
  echo "Sorry, only csv files are allowed.";
  $uploadcounter = 0;
}

// Check if $uploadcounter is set to 0 by an error
if ($uploadcounter == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
// if everything is ok, try to upload file	     
      
        $command = escapeshellcmd($python_root.' '.$file_log_python.' '.$target_file.' '.$n_lines );
		$output = shell_exec($command);
        echo $output;
	
	
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

?>