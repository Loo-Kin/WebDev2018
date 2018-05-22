<?php 
    require_once 'components\menu-header.php'; // верхнее меню
    require_once 'components\sidebar.php'; // боковая панель
    require_once 'components\menu-footer.php'; // нижнее меню
    require_once 'components\connection.php'; // БД
?>

<?php
    $link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));     

    if(!isset($_GET["id"])) {
        header("Location: news.php");
    }
    $query ="SELECT * FROM `news_articles` WHERE `news_id` = " . $_GET["id"];
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
?>

<?php 
    $row = $result->fetch_array(MYSQLI_ASSOC);
?>

<!doctype HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <title><?php echo $row["title"] . " - LOO-WORLDS";?></title>
        <link rel="stylesheet" href="style/style.css" />
        
    </head>
    <body>
        <?php
            drawTopMenu("news");
        ?>
        
        <div class="main_wrapper">
            <div class="article_wrapper">
                <div class="content_widget">
                    <h1><?php echo $row["title"];?></h1>
                    <p><?php echo $row["author"] . ": " . $row["date"];?></p>
                    <img src="<?php echo $row['picture'];?>" width="100%" />
                    <?php echo $row["article"];?>
                </div>
            </div>
            <?php
            drawSidebar();
            ?>
            
        </div>
        <?php
            drawFooter();
        ?>
    </body>
</html>