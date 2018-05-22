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
        <title>Gallery - LOO-WORLDS</title>
        <link rel="stylesheet" href="style/style.css" />
        
        <script src="scripts/gallery.js"></script>
    </head>
    <body>
        <?php
            drawTopMenu("gallery");
        ?>
        
        <div class="main_wrapper">
            <div class="article_wrapper">
                <div class="content_widget">
                    <h1>WUST</h1>
                    <div id="comic-container">
                        <div id="comic-page"></div>
                        <a href="#comic-page">
                            <img src="media\gallery\wust\620_2015-04-12_00001.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00002.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00003.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00004.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00005.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00006.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00007.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00008.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00009.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-04-12_00010.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-10-04_00003.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-10-04_00004.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-10-04_00005.png" width="100%" class="comic-page"/>
                            <img src="media\gallery\wust\620_2015-10-04_00006.png" width="100%" class="comic-page"/>
                        </a>
                        <div class="comic-controls"></div>
                        <p style="text-align: center;">
                        Для перехода на следующую страницу нажмите на изображение или используйте клавишу "пробел" 
                        <br/>
                        Вы также можете использовать клавиши со стрелками для навигации.
                        </p>
                        <div class="comic-allpages" style="text-align: center;"></div>
                    </div>
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