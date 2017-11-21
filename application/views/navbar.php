<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="<?php echo base_url();?>">BoardGameShop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown search_bar">
                    <input type = "text" class = "search-dropdown-toggle form-control" placeholder = "Search...">
                    <ul class="dropdown-menu white search_results">
                    </ul>
                </li>
                <li class="nav-item dropdown" >
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown">Games  <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <?php
                        foreach($categories as $category){
                            echo '<li><a href="'.base_url().'category/products/'.$category['ID'].'">'.$category['Name'].'</a></li>';
                        }
                        ?>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>