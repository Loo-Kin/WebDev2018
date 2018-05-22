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
        <title>LOO-WORLDS</title>
        <link rel="stylesheet" href="style/style.css" />
        
    </head>
    <body>
        <?php 
            drawTopMenu("index");
        ?>
        <div id="logo">
            
        </div>
        <div class="triplecolumns_wrapper">
            <a href="#">
                <div class="content_widget">
                    
                    <img src="media/loo_artworks2017.jpg" width="100%" />
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac hendrerit. Nunc ullamcorper est sed maximus vehicula. Vestibulum magna quam, finibus vel lectus at, efficitur faucibus dui. Etiam posuere luctus orci id hendrerit. Nulla facilisi.
                    </p>
                </div>
            </a>
        </div>
        <div class="triplecolumns_wrapper">
            <a href="#">
                <div class="content_widget">
                    <p>Mauris maximus pretium quam, ut sagittis risus condimentum vulputate. Aliquam sit amet est eu elit dictum mattis. Maecenas rhoncus consectetur odio, vitae aliquet sapien volutpat sit amet. Proin ut diam tortor. Donec blandit magna a egestas interdum. Phasellus semper urna nisi. Nam laoreet mi sollicitudin libero pretium viverra. Nullam molestie lacus vel lorem mollis, sit amet elementum ipsum laoreet. Donec lacus dui, viverra quis massa sit amet, interdum accumsan est. Praesent risus arcu, dignissim ac viverra quis, sollicitudin ut ipsum. Ut varius erat et facilisis semper. Duis non consequat tortor.
                    </p>
                </div>
            </a>
        </div>
        <div class="triplecolumns_wrapper">
            <a href="#">
                <div class="content_widget">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac hendrerit. Nunc ullamcorper est sed maximus vehicula. Vestibulum magna quam, finibus vel lectus at, efficitur faucibus dui. Etiam posuere luctus orci id hendrerit. Nulla facilisi.
                    </p>
                    <p>
                            In sit amet venenatis metus, id porttitor orci. Praesent lorem quam, suscipit ut diam id, rhoncus pulvinar neque. Quisque ullamcorper enim a rutrum venenatis. Nam vel felis dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sapien eros, egestas eget tristique et, malesuada ac turpis. Sed tincidunt nisi sit amet turpis bibendum, vitae ultrices est pretium. Etiam turpis nibh, viverra a enim eu, vulputate mattis nisi. Sed vehicula nisi pulvinar, iaculis mauris eget, vulputate mi. Maecenas et facilisis sapien. Nulla finibus egestas felis quis sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in turpis id mi fermentum porta. Integer scelerisque augue a leo ullamcorper consequat. Donec at lobortis tortor, nec ornare dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;                    </p>
                </div>
            </a>
        </div>
        <div class="main_wrapper">
            <div class="article_wrapper">
                <div class="content_widget">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac hendrerit. Nunc ullamcorper est sed maximus vehicula. Vestibulum magna quam, finibus vel lectus at, efficitur faucibus dui. Etiam posuere luctus orci id hendrerit. Nulla facilisi.
                        </p><p>
                            Mauris maximus pretium quam, ut sagittis risus condimentum vulputate. Aliquam sit amet est eu elit dictum mattis. Maecenas rhoncus consectetur odio, vitae aliquet sapien volutpat sit amet. Proin ut diam tortor. Donec blandit magna a egestas interdum. Phasellus semper urna nisi. Nam laoreet mi sollicitudin libero pretium viverra. Nullam molestie lacus vel lorem mollis, sit amet elementum ipsum laoreet. Donec lacus dui, viverra quis massa sit amet, interdum accumsan est. Praesent risus arcu, dignissim ac viverra quis, sollicitudin ut ipsum. Ut varius erat et facilisis semper. Duis non consequat tortor.
                        </p><p>
                            Maecenas nec lacinia ex. Proin sit amet molestie quam, non gravida neque. Suspendisse malesuada dapibus augue, et sollicitudin mi. Morbi quis nulla dictum, accumsan leo nec, fringilla orci. Morbi congue accumsan purus, vel faucibus arcu vestibulum non. In elit nibh, interdum quis urna vitae, porta facilisis orci. Morbi nec nulla felis.
                        </p><p>
                            In sit amet venenatis metus, id porttitor orci. Praesent lorem quam, suscipit ut diam id, rhoncus pulvinar neque. Quisque ullamcorper enim a rutrum venenatis. Nam vel felis dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sapien eros, egestas eget tristique et, malesuada ac turpis. Sed tincidunt nisi sit amet turpis bibendum, vitae ultrices est pretium. Etiam turpis nibh, viverra a enim eu, vulputate mattis nisi. Sed vehicula nisi pulvinar, iaculis mauris eget, vulputate mi. Maecenas et facilisis sapien. Nulla finibus egestas felis quis sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in turpis id mi fermentum porta. Integer scelerisque augue a leo ullamcorper consequat. Donec at lobortis tortor, nec ornare dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                        </p><p>
                            Mauris sodales faucibus lectus ac feugiat. Donec et lorem eget mauris porta scelerisque vel et libero. Quisque nec ex viverra, aliquet sapien in, tristique urna. Sed vehicula dui vel nibh convallis porttitor. Quisque non tincidunt enim. Etiam pellentesque a mi in aliquam. Cras vulputate venenatis magna at sollicitudin. Duis pulvinar tortor sed felis euismod pellentesque. Aliquam et augue et diam hendrerit blandit. Etiam lobortis tincidunt molestie.
                        </p>            
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