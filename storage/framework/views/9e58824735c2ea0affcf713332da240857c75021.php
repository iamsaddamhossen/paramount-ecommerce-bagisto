<?php $__env->startSection('page_title'); ?>
    <?php echo e(__('admin::app.settings.sliders.title')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="content">

      <?php $locale = request()->get('locale') ?: null; ?>
      <?php $channel = request()->get('channel') ?: null; ?>

        <div class="page-header">
            <div class="page-title">
                <h1><?php echo e(__('admin::app.settings.sliders.title')); ?></h1>
            </div>

            <div class="page-action">
                <a href="<?php echo e(route('admin.sliders.store')); ?>" class="btn btn-lg btn-primary">
                    <?php echo e(__('admin::app.settings.sliders.add-title')); ?>

                </a>
            </div>
        </div>

        <div class="page-content">
            <?php $sliders = app('Webkul\Admin\DataGrids\SliderDataGrid'); ?>
            <?php echo $sliders->render(); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php $__env->startPush('scripts'); ?>
    <script>

        function reloadPage(getVar, getVal) {
            let url = new URL(window.location.href);
            url.searchParams.set(getVar, getVal);

            window.location.href = url.href;
        }

    </script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('admin::layouts.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/shuvobeb/public_html/velocity/packages/Webkul/Admin/src/Providers/../Resources/views/settings/sliders/index.blade.php ENDPATH**/ ?>