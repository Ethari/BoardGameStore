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
                <div class="card-body" style = "max-height: 300px; overflow: auto;">
                    <?php
                        foreach($comments as $comment){
                            echo '<p>'.$comment['comment_text'].'</p>
                                  <small class="text-muted">Posted by Anonymous on '.$comment['comment_date'].'</small>
                                  <hr>';
                        }

                    ?>
                </div>
                <div class = "card-footer">
                    <button class="btn btn-success" style = "float: right;" data-toggle="modal" data-target="#review_modal">Leave a Review</button>
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
                    <button class = "btn btn-primary purchaseProduct" id = "<?php echo $product['ID']?>" data-toggle="modal" data-target="#purchase_product">Purchase</button>
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

<div id="purchase_product" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">You are buying "<strong><?php echo $product['Name']?></strong>"</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class = "loader_container text-center" style = "display: none;">
                    <div class = "loader"></div>
                    <h4 style = "margin-top: 30px;">You will be redirected to PayPal shortly...</h4>
                </div>
                <div class = "payment_content">
                    <div class = "row">
                        <div class = "col-lg-6">
                            <p>Publisher: <strong><?php echo $product['Publisher']?></strong></p>
                            <p>Players: <strong><?php echo $product['Players']?></strong></p>
                            <p>Play time: <strong><?php echo $product['Time']?></strong></p>
                        </div>
                        <div class = "col-lg-6 text-center">
                            <img style = "max-height: 200px;" class="img-fluid" src="<?php echo base_url()?>assets/pictures/product_pictures/<?php echo $product['ID'] ?>.jpg" alt="">
                        </div>
                    </div>
                    <hr>
                    <div class = "row">
                        <div class = "col-lg-12" style = "margin-top:20px;">
                            <form id = "shipping_info">
                                <div class = "row">
                                    <div class = "form-group col-sm-6">
                                        <label for = "first_name">First name</label>
                                        <input class = "form-control" name = "first_name" id = "first_name" placeholder= "Your first name">
                                    </div>
                                    <div class = "form-group col-sm-6">
                                        <label for = "last_name">Surname</label>
                                        <input class = "form-control" name = "surname" id = "surname" placeholder= "Your last name">
                                    </div>
                                </div>
                                <div class = "form-group">
                                    <label for = "email">Email</label>
                                    <input class = "form-control" name = "email" id = "email" placeholder= "Your email address">
                                </div>
                                <div class = "form-group">
                                    <label for = "address">Address</label>
                                    <input class = "form-control" name = "address" id = "address" placeholder= "Street name and house/flat number">
                                </div>
                                <div class = "row">
                                    <div class = "form-group col-sm-6">
                                        <label for = "city">City</label>
                                        <input class = "form-control" name = "city" id = "city" placeholder = "Name of your city">
                                    </div>
                                    <div class = "form-group col-sm-6">
                                        <label for = "zip">ZIP Code</label>
                                        <input class = "form-control" name = "zip" id = "zip" placeholder = "5 digit zip code">
                                    </div>
                                </div>
                                <input type = "hidden" name = "product_id" value="<?php echo $product['ID']; ?>">
                                <div style = "float: right;">Total due:   <strong style = "font-size: 15px;"><?php echo $product['Price']?> ZŁ</strong></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <input type="image" id = "purchase_paypal" name="submit" border="0"
                       src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_buynow_107x26.png"
                       alt="Buy with paypal">
            </div>
        </div>

    </div>
</div>

<script src="<?php echo base_url("/assets/js/scripts/product.js"); ?>"></script>

