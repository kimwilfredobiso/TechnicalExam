<?php
  require 'db.php';
  $message = '';
  $key = 'AIzaSyDGfILt34qYiy-6KotNh96O3YYCCBsqnJ0'; // this is key have limited quota

  //get the channel information
  $content = file_get_contents("https://www.googleapis.com/youtube/v3/channels?part=snippet,statistics&id=UCWJ2lWNubArHWmf3FIHbfcQ&key={$key}");

  $result  = json_decode($content);

  $snippet = $result -> items[0] -> snippet;

  $id               = $result -> items[0] -> id;
  $profile_picture  = $snippet -> thumbnails -> default -> url; 
  $name             = $snippet -> title;
  $description      = $snippet -> description;


  $sql = 'REPLACE INTO youtube_channels(id,profile_picture,name,description) VALUES(:id, :profile_picture, :name, :description)';
  $statement = $connection->prepare($sql);
  if ($statement->execute([':id' => $id, ':profile_picture' => $profile_picture, ':name' => $name, ':description' => $description])) {
      $message = 'Data Inserted Successfully';
  } else {
      $message = 'Error Occur in Data Insertion';
  }

  //get the first 50 latest videos
  $content = file_get_contents("https://www.googleapis.com/youtube/v3/search?key={$key}&channelId=UCWJ2lWNubArHWmf3FIHbfcQ&part=snippet,id&order=date&maxResults=50");

  $result  = json_decode($content);
  

  for ( $i = 0; $i < 50; $i++) {
      $video_id     = $result -> items[$i] -> id -> videoId;
      $video_title  = $result -> items[$i] -> snippet -> title;
      $thumbnail    = $result -> items[$i] -> snippet -> thumbnails -> default -> url;

      $sql = 'INSERT INTO youtube_channel_videos(video_id,video_title,thumbnail) VALUES(:video_id, :video_title, :thumbnail)';
      $statement = $connection->prepare($sql);
      if ($statement->execute([':video_id' => $video_id, ':video_title' => $video_title, ':thumbnail' => $thumbnail])) {
          
      } 

  }
  
  //get the 51-97 latest video (there are 3 playlist include)
  $content = file_get_contents("https://www.googleapis.com/youtube/v3/search?pageToken=CDIQAA&key={$key}&channelId=UCWJ2lWNubArHWmf3FIHbfcQ&part=snippet,id&order=date&maxResults=50");

  $result  = json_decode($content);


  for ( $i = 0; $i < 50; $i++) {
      $video_title  = $result -> items[$i] -> snippet -> title;
      $thumbnail    = $result -> items[$i] -> snippet -> thumbnails -> default -> url;
      if (isset($result -> items[$i] -> id -> videoId)) {
        $video_id     = $result -> items[$i] -> id -> videoId;
      }
      // print_r($i);
      // print_r($video_title);
      // print_r($thumbnail);

      $sql = 'INSERT INTO youtube_channel_videos(video_id,video_title,thumbnail) VALUES(:video_id, :video_title, :thumbnail)';
      $statement = $connection->prepare($sql);
      if ($statement->execute([':video_id' => $video_id, ':video_title' => $video_title, ':thumbnail' => $thumbnail])) {
          
      } 
  }

   //get the last 3 videos to sum up for 100
   $content = file_get_contents("https://www.googleapis.com/youtube/v3/search?pageToken=CGQQAA&key=AIzaSyDGfILt34qYiy-6KotNh96O3YYCCBsqnJ0&channelId=UCWJ2lWNubArHWmf3FIHbfcQ&part=snippet,id&order=date&maxResults=50");

  $result  = json_decode($content);


  for ( $i = 0; $i < 3; $i++) {
      $video_title  = $result -> items[$i] -> snippet -> title;
      $thumbnail    = $result -> items[$i] -> snippet -> thumbnails -> default -> url;
      $video_id     = $result -> items[$i] -> id -> videoId;

      // print_r($video_id);
      // print_r($video_title);
      // print_r($thumbnail);

      $sql = 'INSERT INTO youtube_channel_videos(video_id,video_title,thumbnail) VALUES(:video_id, :video_title, :thumbnail)';
      $statement = $connection->prepare($sql);
      if ($statement->execute([':video_id' => $video_id, ':video_title' => $video_title, ':thumbnail' => $thumbnail])) {
          
      } 

  }

  //get all data from youtube_channels table
  $sql        = 'SELECT * FROM youtube_channels';
  $statement  = $connection->prepare($sql);
  $statement->execute();
  $list       = $statement->fetchAll(PDO::FETCH_OBJ);
  $data       = array();
   
  for ( $i = 0; $i < count($list); $i++) {
    $data[] = $list[$i];
  }

  //get all data from youtube_channel_videos table
  $sql        = 'SELECT * FROM youtube_channel_videos';
  $statement  = $connection->prepare($sql);
  $statement->execute();
  $list       = $statement->fetchAll(PDO::FETCH_OBJ);

   
  for ( $i = 0; $i < count($list); $i++) {
    $data[] = $list[$i];
  }

  //store json in data
  $data = json_encode($data);
 
  //create and write the json file from data variable
  $filename = 'youtube_channel_json.php';
  if(file_put_contents($filename, $data)){
    echo 'Json file created';
  } 
  else{
    echo 'An error occured in creating the file';
  }

?>