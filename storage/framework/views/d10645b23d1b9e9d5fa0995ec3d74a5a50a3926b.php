<?php if($logo = core()->getCurrentChannel()->logo_url): ?>
    <img src="<?php echo e($logo); ?>" alt="<?php echo e(config('app.name')); ?>" style="height: 40px; width: 110px;"/>
<?php else: ?>
    <img src="<?php echo e(bagisto_asset('images/logo.svg')); ?>">
<?php endif; ?><?php /**PATH C:\xampp\htdocs\velocity_new_app\packages\Webkul\Shop\src\Providers/../Resources/views/emails/layouts/logo.blade.php ENDPATH**/ ?>