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
                    <?php
                        foreach($comments as $comment){
                            echo '<p>'.$comment['comment_text'].'</p>
                                  <small class="text-muted">Posted by Anonymous on '.$comment['comment_date'].'</small>
                                  <hr>';
                        }

                    ?>
                    <button class="btn btn-success" data-toggle="modal" data-target="#review_modal">Leave a Review</button>
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

<div id="review_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New review</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form id = "review_form" method = "POST" action = "<?php echo base_url('/product/add_comment') ?>">
                    <div class = "form-group">
                        <label for = "review_text"></label>
                        <textarea class="form-control" rows="5" name = "review_text" id = "review_text"></textarea>
                    </div>
                    <input type = 'hidden' name = 'product_id' value = "<?php  echo $product['ID'] ?>">
                    <button type="submit" style = "float: right;" class="btn btn-primary">Submit review</button>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>

    </div>
</div>

<script src="<?php echo base_url("/assets/js/scripts/product.js"); ?>"></script>

