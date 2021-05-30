<?php $reviewHelper = app('Webkul\Product\Helpers\Review'); ?>
<?php $customHelper = app('Webkul\Velocity\Helpers\Helper'); ?>
<?php $productImageHelper = app('Webkul\Product\Helpers\ProductImage'); ?>

<?php
    $total = $reviewHelper->getTotalReviews($product);

    $avgRatings = $reviewHelper->getAverageRating($product);
    $avgStarRating = round($avgRatings);

    $productImages = [];
    $images = $productImageHelper->getGalleryImages($product);

    foreach ($images as $key => $image) {
        array_push($productImages, $image['medium_image_url']);
    }
?>

<?php $__env->startSection('page_title'); ?>
    <?php echo e(trim($product->meta_title) != "" ? $product->meta_title : $product->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('seo'); ?>
    <meta name="description" content="<?php echo e(trim($product->meta_description) != "" ? $product->meta_description : \Illuminate\Support\Str::limit(strip_tags($product->description), 120, '')); ?>"/>

    <meta name="keywords" content="<?php echo e($product->meta_keywords); ?>"/>

    <?php if(core()->getConfigData('catalog.rich_snippets.products.enable')): ?>
        <script type="application/ld+json">
            <?php echo app('Webkul\Product\Helpers\SEO')->getProductJsonLd($product); ?>

        </script>
    <?php endif; ?>

    <?php $productBaseImage = app('Webkul\Product\Helpers\ProductImage')->getProductBaseImage($product); ?>

    <meta name="twitter:card" content="summary_large_image" />

    <meta name="twitter:title" content="<?php echo e($product->name); ?>" />

    <meta name="twitter:description" content="<?php echo e($product->description); ?>" />

    <meta name="twitter:image:alt" content="" />

    <meta name="twitter:image" content="<?php echo e($productBaseImage['medium_image_url']); ?>" />

    <meta property="og:type" content="og:product" />

    <meta property="og:title" content="<?php echo e($product->name); ?>" />

    <meta property="og:image" content="<?php echo e($productBaseImage['medium_image_url']); ?>" />

    <meta property="og:description" content="<?php echo e($product->description); ?>" />

    <meta property="og:url" content="<?php echo e(route('shop.productOrCategory.index', $product->url_key)); ?>" />
<?php $__env->stopSection(); ?>

<?php $__env->startPush('css'); ?>
    <style type="text/css">
        .related-products {
            width: 100%;
        }

        .recently-viewed {
            margin-top: 20px;
        }

        .store-meta-images > .recently-viewed:first-child {
            margin-top: 0px;
        }

        .main-content-wrapper {
            margin-bottom: 0px;
        }
    </style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('full-content-wrapper'); ?>
    <?php echo view_render_event('bagisto.shop.products.view.before', ['product' => $product]); ?>

        <div class="row no-margin">
            <section class="col-12 product-detail">
                <div class="layouter">
                    <product-view>
                        <div class="form-container">
                            <?php echo csrf_field(); ?>

                            <input type="hidden" name="product_id" value="<?php echo e($product->product_id); ?>">

                            
                            <div class="left col-lg-5">
                                <?php echo $__env->make('shop::products.view.gallery', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            
                            <div class="right col-lg-7">
                                
                                <div class="row info">
                                    <h2 class="col-lg-12"><?php echo e($product->name); ?></h2>

                                    <?php if($total): ?>
                                        <div class="reviews col-lg-12">
                                            <star-ratings
                                                push-class="mr5"
                                                :ratings="<?php echo e($avgStarRating); ?>"
                                            ></star-ratings>

                                            <div class="reviews">
                                                <span>
                                                    <?php echo e(__('shop::app.reviews.ratingreviews', [
                                                        'rating' => $avgRatings,
                                                        'review' => $total])); ?>

                                                </span>
                                            </div>
                                        </div>
                                    <?php endif; ?>

                                    <?php echo $__env->make('shop::products.view.stock', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                    <div class="col-12 price">
                                        <?php echo $__env->make('shop::products.price', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>

                                    <div class="product-actions">
                                        <?php echo $__env->make('shop::products.add-to-cart', [
                                            'form' => false,
                                            'product' => $product,
                                            'showCartIcon' => false,
                                            'showCompare' => core()->getConfigData('general.content.shop.compare_option') == "1"
                                                             ? true : false,
                                        ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                </div>

                                <?php echo view_render_event('bagisto.shop.products.view.short_description.before', ['product' => $product]); ?>


                                <?php if($product->short_description): ?>
                                    <div class="description">
                                        <h3 class="col-lg-12"><?php echo e(__('velocity::app.products.short-description')); ?></h3>

                                        <?php echo $product->short_description; ?>

                                    </div>
                                <?php endif; ?>

                                <?php echo view_render_event('bagisto.shop.products.view.short_description.after', ['product' => $product]); ?>



                                <?php echo view_render_event('bagisto.shop.products.view.quantity.before', ['product' => $product]); ?>


                                <?php if($product->getTypeInstance()->showQuantityBox()): ?>
                                    <div>
                                        <quantity-changer></quantity-changer>
                                    </div>
                                <?php else: ?>
                                    <input type="hidden" name="quantity" value="1">
                                <?php endif; ?>

                                <?php echo view_render_event('bagisto.shop.products.view.quantity.after', ['product' => $product]); ?>


                                <?php echo $__env->make('shop::products.view.configurable-options', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <?php echo $__env->make('shop::products.view.downloadable', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <?php echo $__env->make('shop::products.view.grouped-products', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <?php echo $__env->make('shop::products.view.bundle-options', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <?php echo $__env->make('shop::products.view.attributes', [
                                    'active' => true
                                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                
                                <?php echo $__env->make('shop::products.view.description', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                
                                <?php echo $__env->make('shop::products.view.reviews', ['accordian' => true], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                    </product-view>
                </div>
            </section>

            <div class="related-products">
                <?php echo $__env->make('shop::products.view.related-products', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('shop::products.view.up-sells', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>

            <div class="store-meta-images col-3">
                <?php if(
                    isset($velocityMetaData['product_view_images'])
                    && $velocityMetaData['product_view_images']
                ): ?>
                    <?php $__currentLoopData = json_decode($velocityMetaData['product_view_images'], true); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($image && $image !== ''): ?>
                            <img src="<?php echo e(url()->to('/')); ?>/storage/<?php echo e($image); ?>" />
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
        </div>
    <?php echo view_render_event('bagisto.shop.products.view.after', ['product' => $product]); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script type='text/javascript' src='https://unpkg.com/spritespin@4.1.0/release/spritespin.js'></script>

    <script type="text/x-template" id="product-view-template">
        <form
            method="POST"
            id="product-form"
            @click="onSubmit($event)"
            action="<?php echo e(route('cart.add', $product->product_id)); ?>">

            <input type="hidden" name="is_buy_now" v-model="is_buy_now">

            <slot v-if="slot"></slot>

            <div v-else>
                <div class="spritespin"></div>
            </div>

        </form>
    </script>

    <script>
        Vue.component('product-view', {
            inject: ['$validator'],
            template: '#product-view-template',
            data: function () {
                return {
                    slot: true,
                    is_buy_now: 0,
                }
            },

            mounted: function () {
                let currentProductId = '<?php echo e($product->url_key); ?>';
                let existingViewed = window.localStorage.getItem('recentlyViewed');

                if (! existingViewed) {
                    existingViewed = [];
                } else {
                    existingViewed = JSON.parse(existingViewed);
                }

                if (existingViewed.indexOf(currentProductId) == -1) {
                    existingViewed.push(currentProductId);

                    if (existingViewed.length > 3)
                        existingViewed = existingViewed.slice(Math.max(existingViewed.length - 4, 1));

                    window.localStorage.setItem('recentlyViewed', JSON.stringify(existingViewed));
                } else {
                    var uniqueNames = [];

                    $.each(existingViewed, function(i, el){
                        if ($.inArray(el, uniqueNames) === -1) uniqueNames.push(el);
                    });

                    uniqueNames.push(currentProductId);

                    uniqueNames.splice(uniqueNames.indexOf(currentProductId), 1);

                    window.localStorage.setItem('recentlyViewed', JSON.stringify(uniqueNames));
                }
            },

            methods: {
                onSubmit: function(event) {
                    if (event.target.getAttribute('type') != 'submit')
                        return;

                    event.preventDefault();

                    this.$validator.validateAll().then(result => {
                        if (result) {
                            this.is_buy_now = event.target.classList.contains('buynow') ? 1 : 0;

                            setTimeout(function() {
                                document.getElementById('product-form').submit();
                            }, 0);
                        }
                    });
                },
            }
        });

        window.onload = function() {
            var thumbList = document.getElementsByClassName('thumb-list')[0];
            var thumbFrame = document.getElementsByClassName('thumb-frame');
            var productHeroImage = document.getElementsByClassName('product-hero-image')[0];

            if (thumbList && productHeroImage) {
                for (let i=0; i < thumbFrame.length ; i++) {
                    thumbFrame[i].style.height = (productHeroImage.offsetHeight/4) + "px";
                    thumbFrame[i].style.width = (productHeroImage.offsetHeight/4)+ "px";
                }

                if (screen.width > 720) {
                    thumbList.style.width = (productHeroImage.offsetHeight/4) + "px";
                    thumbList.style.minWidth = (productHeroImage.offsetHeight/4) + "px";
                    thumbList.style.height = productHeroImage.offsetHeight + "px";
                }
            }

            window.onresize = function() {
                if (thumbList && productHeroImage) {

                    for(let i=0; i < thumbFrame.length; i++) {
                        thumbFrame[i].style.height = (productHeroImage.offsetHeight/4) + "px";
                        thumbFrame[i].style.width = (productHeroImage.offsetHeight/4)+ "px";
                    }

                    if (screen.width > 720) {
                        thumbList.style.width = (productHeroImage.offsetHeight/4) + "px";
                        thumbList.style.minWidth = (productHeroImage.offsetHeight/4) + "px";
                        thumbList.style.height = productHeroImage.offsetHeight + "px";
                    }
                }
            }
        };
    </script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('shop::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\velocity_new_app/resources/themes/velocity/views/products/view.blade.php ENDPATH**/ ?>