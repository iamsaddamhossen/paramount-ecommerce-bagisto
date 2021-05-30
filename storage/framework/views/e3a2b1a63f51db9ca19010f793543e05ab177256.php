<?php $__env->startSection('page_title'); ?>
    <?php echo e(__('admin::app.customers.customers.edit-title')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h1>
                    <i class="icon angle-left-icon back-link" onclick="history.length > 1 ? history.go(-1) : window.location = '<?php echo e(route('admin.dashboard.index')); ?>';"></i>
                    <?php echo e($customer->first_name . " " . $customer->last_name); ?>

                </h1>
            </div>
        </div>

        <tabs>
        <?php echo view_render_event('bagisto.admin.customer.edit.before', ['customer' => $customer]); ?>

            <tab name="<?php echo e(__('admin::app.sales.orders.info')); ?>" :selected="true">
                <div class="sale-container">
                    <?php echo $__env->make('admin::customers.general', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </tab>

            <tab name="<?php echo e(__('admin::app.customers.customers.addresses')); ?>" :selected="false">
                <div class="style:overflow: auto;">&nbsp;</div>
                    <?php echo view_render_event('bagisto.admin.customer.addresses.list.before'); ?>

                    <?php echo app('Webkul\Admin\DataGrids\AddressDataGrid')->render(); ?>

                    <?php echo view_render_event('bagisto.admin.customer.addresses.list.after'); ?>

                </div>
            </tab>
        <?php echo view_render_event('bagisto.admin.customer.edit.after', ['customer' => $customer]); ?>

        </tabs>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin::layouts.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/shuvobeb/public_html/velocity/packages/Webkul/Admin/src/Providers/../Resources/views/customers/edit.blade.php ENDPATH**/ ?>