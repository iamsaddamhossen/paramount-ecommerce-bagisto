<?php $__env->startComponent('shop::emails.layouts.master'); ?>
    <div style="text-align: center;">
        <a href="<?php echo e(config('app.url')); ?>">
            <?php echo $__env->make('shop::emails.layouts.logo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </a>
    </div>

    <div style="padding: 30px;">
        <div style="font-size: 20px;color: #242424;line-height: 30px;margin-bottom: 34px;">
            <p style="font-size: 16px;color: #5E5E5E;line-height: 24px;">
                <?php echo e(__('shop::app.mail.order.comment.dear', ['customer_name' => $comment->order->customer_full_name])); ?>,
            </p>
        </div>

        <div style="line-height: 30px;margin-bottom: 20px !important;">
            <p style="font-size: 16px;color: #5E5E5E;line-height: 24px;font-style: italic;">
                <?php echo e($comment->comment); ?>

            </p>
        </div>

        <div style="margin-top: 20px;font-size: 16px;color: #5E5E5E;line-height: 24px;display: inline-block">
            <p style="font-size: 16px;color: #5E5E5E;line-height: 24px;">
                <?php echo __('shop::app.mail.order.comment.help', [
                        'support_email' => '<a style="color:#0041FF" href="mailto:' . config('mail.from.address') . '">' . config('mail.from.address'). '</a>'
                        ]); ?>

            </p>

            <p style="font-size: 16px;color: #5E5E5E;line-height: 24px;">
                <?php echo e(__('shop::app.mail.order.comment.thanks')); ?>

            </p>
        </div>
    </div>
<?php if (isset($__componentOriginalf5b02bb53c7889070aa0fc977e1d9209cc73d48d)): ?>
<?php $component = $__componentOriginalf5b02bb53c7889070aa0fc977e1d9209cc73d48d; ?>
<?php unset($__componentOriginalf5b02bb53c7889070aa0fc977e1d9209cc73d48d); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php /**PATH /home/shuvobeb/public_html/velocity/packages/Webkul/Shop/src/Providers/../Resources/views/emails/sales/new-order-comment.blade.php ENDPATH**/ ?>