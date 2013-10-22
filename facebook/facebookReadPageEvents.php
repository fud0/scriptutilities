<?php
    // Configure Facebook with your AppID and AppSecret
    require_once('./facebook-php-sdk/facebook.php');
    $config = array(
      'appId' => '<YOUR_APPID>',
      'secret' => '<YOUR_APPSECRET>',
      'cookie' => true,
    );
    $facebook = new Facebook($config);
    $yourPageID = '<YOUR_PAGEID>';
    $fqlQuery = "SELECT 
            name, pic_cover, start_time, end_time, location, description 
        FROM 
            event 
        WHERE 
            eid IN ( SELECT eid FROM event_member WHERE uid = $yourPageID ) 
        ORDER BY 
            start_time desc";
    $queryConf  =   array(
        'method'    => 'fql.query',
        'query'     => $fqlQuery,
        'callback'  => ''
    );

    $queryResult = $facebook->api($queryConf);    
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Events List</title>
        <style type='text/css'>
        body{
            font-family: "Proxima Nova Regular","Helvetica Neue",Arial,Helvetica,sans-serif;
        }

        .clearBoth{
            clear: both;
        }

        .event{
            background-color: #E3E3E3;
            margin: 0 0 5px 0;
            padding: 5px;
        }

        .eventImage{
            margin: 0 8px 0 0;
        }

        .eventInfo{
            padding:5px 0;
        }

        .eventName{
            font-size: 26px;
        }

        .floatLeft{
            float:left;
        }

        .pageHeading{
            font-weight: bold;
            margin: 0 0 20px 0;
        }
        </style>        
    </head>
    <body>
      <?php 
        //looping through retrieved data
        foreach( $queryResult as $keys => $values ){
            date_default_timezone_set("Europe/Rome");
            $stime = $values['start_time'];
            $start_date = date( 'l, F d, Y', strtotime($stime));
            $start_time = date( 'g:i a', strtotime($stime));

            //printing the data
            echo "<div class='event'>";

                echo "<div class='floatLeft eventImage'>";
                $values['pic_cover'];
                    echo "<img src={$values['pic_cover']['source']} />";
                echo "</div>";

                echo "<div class='floatLeft'>";
                    echo "<div class='eventName'>{$values['name']}</div>"; 
                    echo "<div class='eventInfo'>{$start_date} at {$start_time}</div>";
                    echo "<div class='eventInfo'>{$values['location']}</div>";
                    echo "<div class='eventInfo'>{$values['description']}</div>";
                echo "</div>";

                echo "<div class='clearBoth'></div>";
            echo "</div>";
        }
        ?>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <script type='text/javascript'>
            //just to add some hover effects
            $(document).ready(function(){
                $('.event').hover(
                    function () {
                        $(this).css('background-color', '#CFF');
                    }, 
                    function () {
                        $(this).css('background-color', '#E3E3E3');
                    }
                );
            });
        </script>        
    </body>
</html>