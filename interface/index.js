function launchOctoprint () {
    $.ajax({
      url:"php_scripts/octoprint_launch.php", //the page containing php script
      type: "POST", //request type
      success:function(result){
          console.log('OctoPrint Launched');
     }
   });
}

function launchArdublockly () {
    $.ajax({
      url:"php_scripts/ardublockly_launch.php", //the page containing php script
      type: "POST", //request type
      success:function(result){
          console.log('Ardublockly Launched');
     }
   });
}