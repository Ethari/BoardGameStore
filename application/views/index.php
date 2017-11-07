<div class="container">

    <!-- Heading Row -->
    <div class="row my-4">
        <div class="col-lg-8">
            <img class="img-fluid rounded" src="<?php echo base_url()?>/assets/pictures/boardgame.jpg" alt="">
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
            <h1>BoardGameStore</h1>
            <p> We are the coolest online shop with board games! We offer many interesting games. Some of them are very cool and some of them are pretty cool. We should really add something interesting to this description. This will do for now though.</p>
        </div>
        <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
            <p class="text-white m-0">Here are some of the categories that we offer!</p>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row">
        <?php
            foreach($categories as $category){
                echo '<div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h2 class="card-title">'.$category['Name'].'</h2>
                                <p class="card-text">'.$category['Info'].'</p>
                            </div>
                            <div class="card-footer">
                                <a href="'.base_url().'category/products/'.$category['ID'].'" class="btn btn-primary">Browse games</a>
                            </div>
                        </div>
                    </div>';
            }
        ?>
        ?>

    </div>
    <!-- /.row -->

</div>