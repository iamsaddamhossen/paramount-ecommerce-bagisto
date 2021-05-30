<?php $productImageHelper = app('Webkul\Product\Helpers\ProductImage'); ?>



<?php $__env->startSection('page_title'); ?>
    <?php echo e(__('shop::app.reviews.add-review-page-title')); ?> - <?php echo e($product->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content-wrapper'); ?>

    <div class="container">
        <section class="row review-page-container">
            <?php echo $__env->make('shop::products.view.small-view', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <div class="col-lg-6 col-md-12">
                <div class="row customer-rating col-12 remove-padding-margin">
                    <h2 class="full-width">
                        <?php echo e(__('shop::app.reviews.write-review')); ?>

                    </h2>

                    <form
                        method="POST"
                        class="review-form"
                        @submit.prevent="onSubmit"
                        action="<?php echo e(route('shop.reviews.store', $product->product_id )); ?>">

                        <?php echo csrf_field(); ?>

                        <div :class="`${errors.has('rating') ? 'has-error' : ''}`">
                            <label for="title" class="required">
                                <?php echo e(__('admin::app.customers.reviews.rating')); ?>

                            </label>
                            <star-ratings ratings="5" size="24" editable="true"></star-ratings>
                            <span :class="`control-error ${errors.has('rating') ? '' : 'hide'}`" v-if="errors.has('rating')">
                                {{ errors.first('rating') }}
                            </span>
                        </div>

                        <div :class="`${errors.has('title') ? 'has-error' : ''}`">
                            <label for="title" class="required">
                                <?php echo e(__('shop::app.reviews.title')); ?>

                            </label>
                            <input
                                type="text"
                                name="title"
                                class="control"
                                v-validate="'required'"
                                value="<?php echo e(old('title')); ?>" />

                            <span :class="`control-error ${errors.has('title') ? '' : 'hide'}`">
                                {{ errors.first('title') }}
                            </span>
                        </div>

                        <?php if(core()->getConfigData('catalog.products.review.guest_review') && ! auth()->guard('customer')->user()): ?>
                            <div :class="`${errors.has('name') ? 'has-error' : ''}`">
                                <label for="title" class="required">
                                    <?php echo e(__('shop::app.reviews.name')); ?>

                                </label>
                                <input  type="text" class="control" name="name" v-validate="'required'" value="<?php echo e(old('name')); ?>">
                                <span :class="`control-error ${errors.has('name') ? '' : 'hide'}`">
                                    {{ errors.first('name') }}
                                </span>
                            </div>
                        <?php endif; ?>

                        <div :class="`${errors.has('comment') ? 'has-error' : ''}`">
                            <label for="comment" class="required">
                                <?php echo e(__('admin::app.customers.reviews.comment')); ?>

                            </label>
                            <textarea
                                type="text"
                                class="control"
                                name="comment"
                                v-validate="'required'"
                                value="<?php echo e(old('comment')); ?>">
                            </textarea>
                            <span :class="`control-error ${errors.has('comment') ? '' : 'hide'}`">
                                {{ errors.first('comment') }}
                            </span>
                        </div>

                        <div class="submit-btn">
                            <button
                                type="submit"
                                class="theme-btn fs16">
                                <?php echo e(__('velocity::app.products.submit-review')); ?>

                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <?php if($showRecentlyViewed): ?>
                <?php echo $__env->make('shop::products.list.recently-viewed', [
                    'addClass' => 'col-lg-3 col-md-12'
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endif; ?>
        </section>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('shop::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\velocity_new_app/resources/themes/velocity/views/products/reviews/create.blade.php ENDPATH**/ ?>