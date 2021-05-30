<?php $__env->startSection('page_title'); ?>
    <?php echo e(__('shop::app.customer.forgot-password.page_title')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content-wrapper'); ?>
    <div class="auth-content form-container">
        <div class="container">
            <div class="col-lg-10 col-md-12 offset-lg-1">
                <div class="heading">
                    <h2 class="fs24 fw6">
                        <?php echo e(__('velocity::app.customer.forget-password.forgot-password')); ?>

                    </h2>

                    <a href="<?php echo e(route('customer.session.index')); ?>" class="btn-new-customer">
                        <button type="button" class="theme-btn light">
                            <?php echo e(__('velocity::app.customer.signup-form.login')); ?>

                        </button>
                    </a>
                </div>

                <div class="body col-12">
                    <h3 class="fw6">
                        <?php echo e(__('velocity::app.customer.forget-password.recover-password')); ?>

                    </h3>

                    <p class="fs16">
                        <?php echo e(__('velocity::app.customer.forget-password.recover-password-text')); ?>

                    </p>

                    <?php echo view_render_event('bagisto.shop.customers.forget_password.before'); ?>


                    <form
                        method="post"
                        action="<?php echo e(route('customer.forgot-password.store')); ?>"
                        @submit.prevent="onSubmit">

                        <?php echo e(csrf_field()); ?>


                        <?php echo view_render_event('bagisto.shop.customers.forget_password_form_controls.before'); ?>


                        <div class="control-group" :class="[errors.has('email') ? 'has-error' : '']">
                            <label for="email" class="mandatory label-style">
                                <?php echo e(__('shop::app.customer.forgot-password.email')); ?>

                            </label>

                            <input
                                type="email"
                                name="email"
                                class="form-style"
                                v-validate="'required|email'" />

                            <span class="control-error" v-if="errors.has('email')">
                                {{ errors.first('email') }}
                            </span>
                        </div>

                        <?php echo view_render_event('bagisto.shop.customers.forget_password_form_controls.after'); ?>


                        <button class="theme-btn" type="submit">
                            <?php echo e(__('shop::app.customer.forgot-password.submit')); ?>

                        </button>
                    </form>

                    <?php echo view_render_event('bagisto.shop.customers.forget_password.after'); ?>

                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('shop::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/shuvobeb/public_html/velocity/resources/themes/velocity/views/customers/signup/forgot-password.blade.php ENDPATH**/ ?>