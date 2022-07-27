<?php 

// if (isset($_POST['submit']) && isset($_FILES['my_video'])) {
// 	include "db_conn.php";
//     $video_name = $_FILES['my_video']['name'];
//     $tmp_name = $_FILES['my_video']['tmp_name'];
//     $error = $_FILES['my_video']['error'];

//     if ($error === 0) {
//     	$video_ex = pathinfo($video_name, PATHINFO_EXTENSION);

//     	$video_ex_lc = strtolower($video_ex);

//     	$allowed_exs = array("mp4", 'webm', 'avi', 'flv');

//     	if (in_array($video_ex_lc, $allowed_exs)) {
    		
//     		$new_video_name = uniqid("video-", true). '.'.$video_ex_lc;
//     		$video_upload_path = 'uploads/'.$new_video_name;
//     		move_uploaded_file($tmp_name, $video_upload_path);

//     		// Now let's Insert the video path into database
//             $sql = "INSERT INTO videos(video_url) 
//                    VALUES('$new_video_name')";
//             mysqli_query($conn, $sql);
//             header("Location: view.php");
//     	}else {
//     		$em = "You can't upload files of this type";
//     		header("Location: index.php?error=$em");
//     	}
//     }

// }else

// if(isset($_POST['submit']) && isset($_FILES['my_audio'])){ 
// 	include "db_conn.php";
//     $audio_name = $_FILES['my_audio']['name'];
//     $tmp_name = $_FILES['my_audio']['tmp_name'];
//     $error = $_FILES['my_audio']['error'];

//     if ($error === 0) {
//     	$audio_ex = pathinfo($audio_name, PATHINFO_EXTENSION);

//     	$audio_ex_lc = strtolower($audio_ex);

//     	$allowed_exs = array("mp3", 'mpc', 'msv', 'nmf');

//     	if (in_array($audio_ex_lc, $allowed_exs)) {
    		
//     		$new_audio_name = uniqid("audio-", true). '.'.$audio_ex_lc;
//     		$audio_upload_path = 'uploads/'.$new_audio_name;
//     		move_uploaded_file($tmp_name, $audio_upload_path);

//     		// Now let's Insert the video path into database
//             $sql = "INSERT INTO videos(audio) 
//                    VALUES('$new_audio_name')";
//             mysqli_query($conn, $sql);
//             header("Location: view.php");
//     	}else {
//     		$em = "You can't upload files of this type";
//     		header("Location: index.php?error=$em");
//     	}
//     }{
// 	header("Location: index.php");
// }
// }
// if(isset($_POST['submit']) && isset($_FILES['my_audio'])){ 
// 	include "db_conn.php";
//     $audio_name = $_FILES['my_audio']['name'];
//     $tmp_name = $_FILES['my_audio']['tmp_name'];
//     $error = $_FILES['my_audio']['error'];

//     if ($error === 0) {
//     	$audio_ex = pathinfo($audio_name, PATHINFO_EXTENSION);

//     	$audio_ex_lc = strtolower($audio_ex);

//     	$allowed_exs = array("mp3", 'mpc', 'msv', 'nmf');

//     	if (in_array($audio_ex_lc, $allowed_exs)) {
    		
//     		$new_audio_name = uniqid("audio-", true). '.'.$audio_ex_lc;
//     		$audio_upload_path = 'uploads/'.$new_audio_name;
//     		move_uploaded_file($tmp_name, $audio_upload_path);

//     		// Now let's Insert the video path into database
//             $sql = "INSERT INTO videos(audio) 
//                    VALUES('$new_audio_name')";
//             mysqli_query($conn, $sql);
// 			$sqlselect = "SELECT * FROM videos ORDER BY id DESC";
// 			$res = mysqli_query($conn, $sqlselect);
   
// 			if (mysqli_num_rows($res) > 0) {
// 				while ($video = mysqli_fetch_assoc($res)) { 
			
// 			
// 				}
//     	}else {
//     		$em = "You can't upload files of this type";
//     		header("Location: index.php?error=$em");
//     	}
//     }{
// 	header("Location: index.php");
// }
// }
// }



if(!empty($_FILES))
{
 if(is_uploaded_file($_FILES['uploadFile']['tmp_name']))
 {
  $_source_path = $_FILES['uploadFile']['tmp_name'];
  $target_path = 'uploads/' . $_FILES['uploadFile']['name'];
  if(move_uploaded_file($_source_path, $target_path))
  {
   echo '<p><img src="'.$target_path.'" class="img-thumbnail" width="200" height="160" /></p><br />';
   
  }
 }
}

?>