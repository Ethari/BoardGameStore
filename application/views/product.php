<div class="container">
    <div class="row">

        <div class="col-lg-8">
            <div class="card mt-4">
                <div class="card-body">
                    <h3 class="card-title">
                        <?php echo $product['Name']?>
                    </h3>
                    <p class="card-text">
                        <?php echo $product['Description']?>
                    </p>
                </div>
            </div>
            <!-- /.card -->

            <div class="card card-outline-secondary my-4">
                <div class="card-header">
                    Product Reviews
                </div>
                <div class="card-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                    <hr>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                    <hr>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                    <hr>
                    <a href="#" class="btn btn-success">Leave a Review</a>
                </div>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col-lg-9 -->
        <div class = "col-lg-4">
            <div class="card mt-4">
                <div class="card-body">
                    <img class="card-img-top img-fluid" src="<?php echo base_url()?>assets/pictures/product_pictures/<?php echo $product['ID'] ?>.jpg" alt="">
                </div>
            </div>
            <div class="card mt-4">
                <div class="card-body">
                    <p><span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span></p>
                    <p>Price: <strong><?php echo $product['Price']?>zł</strong></p>
                    <p>Publisher: <strong><?php echo $product['Publisher']?></strong></p>
                    <p>Players: <strong><?php echo $product['Players']?></strong></p>
                    <p>Play time: <strong><?php echo $product['Time']?></strong></p>
                    <button class = "btn btn-primary">Purchase</button>
                </div>
            </div>

        </div>
    </div>

</div>