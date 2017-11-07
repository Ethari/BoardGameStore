<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <h1 class="my-4"><?php echo $category['Name'] ?>
        <br>
        <h5 class = "category_info"><?php echo $category['Info'] ?></>
    </h1>

    <div class="row">
        <?php
            foreach($products as $product){
                $product_link  = base_url().'product/view/'.$product['ID'];
                echo '<div class="col-lg-4 col-sm-6 portfolio-item">
                        <div class="card h-100">
                            <a href="'.$product_link.'"><img class="card-img-top" src="'.base_url().'assets/pictures/product_pictures/'.$product['ID'].'.jpg" alt=""></a>
                            <div class="card-body product_card text-justify">
                                <h4 class="card-tile">
                                    <a href="'.$product_link.'">'.$product['Name'].'</a>
                                </h4>
                                <p class="card-text">'.$product['Description'].'</p>
                            </div>
                        </div>
                    </div>';
            }
        ?>
    </div>
</div>