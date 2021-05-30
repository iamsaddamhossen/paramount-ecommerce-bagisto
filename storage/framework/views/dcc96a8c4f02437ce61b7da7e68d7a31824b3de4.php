<?php $productImageHelper = app('Webkul\Product\Helpers\ProductImage'); ?>

<?php
    $productBaseImage = $productImageHelper->getProductBaseImage($product);
?>

<div class="col-lg-3 col-md-12">
    <a class="row" href="<?php echo e(route('shop.productOrCategory.index', $product->url_key)); ?>">
        <img src="<?php echo e($productBaseImage['medium_image_url']); ?>" class="col-12" />
    </a>

    <a class="row pt15 unset" href="<?php echo e(route('shop.productOrCategory.index', $product->url_key)); ?>">
        <h2 class="col-12 fw6 link-color"><?php echo e($product->name); ?></h2>
    </a>
</div><?php /**PATH C:\xampp\htdocs\velocity_new_app/resources/themes/velocity/views/products/view/small-view.blade.php ENDPATH**/ ?>