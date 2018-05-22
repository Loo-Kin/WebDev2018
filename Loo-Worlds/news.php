<?php 
    require_once 'components\menu-header.php'; // верхнее меню
    require_once 'components\sidebar.php'; // боковая панель
    require_once 'components\menu-footer.php'; // нижнее меню
    require_once 'components\connection.php'; // БД
?>
<!doctype HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <title>News - LOO-WORLDS</title>
        <link rel="stylesheet" href="style/style.css" />
        
    </head>
    <body>
        <?php
            drawTopMenu("news");
        ?>
        
        <div class="main_wrapper">
            <div class="article_wrapper">
                <?php
                    $link = mysqli_connect($host, $user, $password, $database) 
                    or die("Ошибка " . mysqli_error($link));     
                
                    $query ="SELECT * FROM `news_articles` ORDER BY news_id DESC";
                    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
                ?>

                <?php 
                    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
                        echo "<div class='triplecolumns_wrapper'>";
                        echo "<a href='news-article.php?id=" . $row["news_id"] . "'>";
                        echo "<div class='content_widget'>";
                        echo "<img src='" . $row["picture"] . "' width='100%' height='150px' />";
                        echo "<h1>" . $row["title"] . "</h1>";
                        echo "<p>" . $row["brief"] . "</p>";
                        echo "</div>";
                        echo "</a>";
                        echo "</div>";
                    }
                ?>
                
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