<?php $__env->startSection('page_title'); ?>
    <?php echo e(__('admin::app.sales.invoices.view-title', ['invoice_id' => $invoice->id])); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content-wrapper'); ?>

    <?php $order = $invoice->order; ?>

    <div class="content full-page">
        <div class="page-header">
            <div class="page-title">
                <h1>
                    <?php echo view_render_event('sales.invoice.title.before', ['order' => $order]); ?>


                    <i class="icon angle-left-icon back-link" onclick="history.length > 1 ? history.go(-1) : window.location = '<?php echo e(route('admin.dashboard.index')); ?>';"></i>

                    <?php echo e(__('admin::app.sales.invoices.view-title', ['invoice_id' => $invoice->id])); ?>


                    <?php echo view_render_event('sales.invoice.title.after', ['order' => $order]); ?>

                </h1>
            </div>

            <div class="page-action">
                <?php echo view_render_event('sales.invoice.page_action.before', ['order' => $order]); ?>


                <a href="<?php echo e(route('admin.sales.invoices.print', $invoice->id)); ?>" class="btn btn-lg btn-primary">
                    <?php echo e(__('admin::app.sales.invoices.print')); ?>

                </a>

                <?php echo view_render_event('sales.invoice.page_action.after', ['order' => $order]); ?>

            </div>
        </div>

        <div class="page-content">
            <div class="sale-container">

                <accordian :title="'<?php echo e(__('admin::app.sales.orders.order-and-account')); ?>'" :active="true">
                    <div slot="body">

                        <div class="sale-section">
                            <div class="secton-title">
                                <span><?php echo e(__('admin::app.sales.orders.order-info')); ?></span>
                            </div>

                            <div class="section-content">
                                <div class="row">
                                    <span class="title">
                                        <?php echo e(__('admin::app.sales.invoices.order-id')); ?>

                                    </span>

                                    <span class="value">
                                        <a href="<?php echo e(route('admin.sales.orders.view', $order->id)); ?>">#<?php echo e($order->increment_id); ?></a>
                                    </span>
                                </div>

                                <?php echo view_render_event('sales.invoice.increment_id.after', ['order' => $order]); ?>


                                <div class="row">
                                    <span class="title">
                                        <?php echo e(__('admin::app.sales.orders.order-date')); ?>

                                    </span>

                                    <span class="value">
                                        <?php echo e($order->created_at); ?>

                                    </span>
                                </div>

                                <?php echo view_render_event('sales.invoice.created_at.after', ['order' => $order]); ?>


                                <div class="row">
                                    <span class="title">
                                        <?php echo e(__('admin::app.sales.orders.order-status')); ?>

                                    </span>

                                    <span class="value">
                                        <?php echo e($order->status_label); ?>

                                    </span>
                                </div>

                                <?php echo view_render_event('sales.invoice.status_label.after', ['order' => $order]); ?>


                                <div class="row">
                                    <span class="title">
                                        <?php echo e(__('admin::app.sales.orders.channel')); ?>

                                    </span>

                                    <span class="value">
                                        <?php echo e($order->channel_name); ?>

                                    </span>
                                </div>

                                <?php echo view_render_event('sales.invoice.channel_name.after', ['order' => $order]); ?>

                            </div>
                        </div>

                        <div class="sale-section">
                            <div class="secton-title">
                                <span><?php echo e(__('admin::app.sales.orders.account-info')); ?></span>
                            </div>

                            <div class="section-content">
                                <div class="row">
                                    <span class="title"><?php echo e(__('admin::app.sales.orders.customer-name')); ?></span>
                                    <span class="value"><?php echo e($invoice->order->customer_full_name); ?></span>
                                </div>

                                <?php echo view_render_event('sales.invoice.customer_name.after', ['order' => $order]); ?>


                                <div class="row">
                                    <span class="title"><?php echo e(__('admin::app.sales.orders.email')); ?></span>
                                    <span class="value"><?php echo e($invoice->order->customer_email); ?></span>
                                </div>

                                <?php echo view_render_event('sales.invoice.customer_email.after', ['order' => $order]); ?>

                            </div>
                        </div>

                    </div>
                </accordian>

                <?php if($order->billing_address || $order->shipping_address): ?>
                    <accordian :title="'<?php echo e(__('admin::app.sales.orders.address')); ?>'" :active="true">
                        <div slot="body" style="display: flex; overflow:auto;">

                            <?php if($order->billing_address): ?>
                                <div class="sale-section">
                                    <div class="secton-title" style="width: 380px;">
                                        <span><?php echo e(__('admin::app.sales.orders.billing-address')); ?></span>
                                    </div>

                                    <div class="section-content" style="width: 380px;">
                                        <?php echo $__env->make('admin::sales.address', ['address' => $order->billing_address], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                        <?php echo view_render_event('sales.invoice.billing_address.after', ['order' => $order]); ?>

                                    </div>
                                </div>
                            <?php endif; ?>

                            <?php if($order->shipping_address): ?>
                                <div class="sale-section" style="margin: 0 0 0 300px;">
                                    <div class="secton-title" style="width: 400px;">
                                        <span><?php echo e(__('admin::app.sales.orders.shipping-address')); ?></span>
                                    </div>

                                    <div class="section-content" style="width: 400px;">
                                        <?php echo $__env->make('admin::sales.address', ['address' => $order->shipping_address], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                        <?php echo view_render_event('sales.invoice.shipping_address.after', ['order' => $order]); ?>

                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </accordian>
                <?php endif; ?>

                <accordian :title="'<?php echo e(__('admin::app.sales.orders.products-ordered')); ?>'" :active="true">
                    <div slot="body">

                        <div class="table">
                            <table>
                                <thead>
                                    <tr>
                                        <th><?php echo e(__('admin::app.sales.orders.SKU')); ?></th>
                                        <th><?php echo e(__('admin::app.sales.orders.product-name')); ?></th>
                                        <th><?php echo e(__('admin::app.sales.orders.price')); ?></th>
                                        <th><?php echo e(__('admin::app.sales.orders.qty')); ?></th>
                                        <th><?php echo e(__('admin::app.sales.orders.subtotal')); ?></th>
                                        <th><?php echo e(__('admin::app.sales.orders.tax-amount')); ?></th>
                                        <?php if($invoice->base_discount_amount > 0): ?>
                                            <th><?php echo e(__('admin::app.sales.orders.discount-amount')); ?></th>
                                        <?php endif; ?>
                                        <th><?php echo e(__('admin::app.sales.orders.grand-total')); ?></th>
                                    </tr>
                                </thead>

                                <tbody>

                                    <?php $__currentLoopData = $invoice->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($item->getTypeInstance()->getOrderedItem($item)->sku); ?></td>

                                            <td>
                                                <?php echo e($item->name); ?>


                                                <?php if(isset($item->additional['attributes'])): ?>
                                                    <div class="item-options">

                                                        <?php $__currentLoopData = $item->additional['attributes']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <b><?php echo e($attribute['attribute_name']); ?> : </b><?php echo e($attribute['option_label']); ?></br>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                    </div>
                                                <?php endif; ?>
                                            </td>

                                            <td><?php echo e(core()->formatBasePrice($item->base_price)); ?></td>

                                            <td><?php echo e($item->qty); ?></td>

                                            <td><?php echo e(core()->formatBasePrice($item->base_total)); ?></td>

                                            <td><?php echo e(core()->formatBasePrice($item->base_tax_amount)); ?></td>

                                            <?php if($invoice->base_discount_amount > 0): ?>
                                                <td><?php echo e(core()->formatBasePrice($item->base_discount_amount)); ?></td>
                                            <?php endif; ?>

                                            <td><?php echo e(core()->formatBasePrice($item->base_total + $item->base_tax_amount - $item->base_discount_amount)); ?></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </tbody>
                            </table>
                        </div>

                        <table class="sale-summary">
                            <tr>
                                <td><?php echo e(__('admin::app.sales.orders.subtotal')); ?></td>
                                <td>-</td>
                                <td><?php echo e(core()->formatBasePrice($invoice->base_sub_total)); ?></td>
                            </tr>

                            <tr>
                                <td><?php echo e(__('admin::app.sales.orders.shipping-handling')); ?></td>
                                <td>-</td>
                                <td><?php echo e(core()->formatBasePrice($invoice->base_shipping_amount)); ?></td>
                            </tr>

                            <tr>
                                <td><?php echo e(__('admin::app.sales.orders.tax')); ?></td>
                                <td>-</td>
                                <td><?php echo e(core()->formatBasePrice($invoice->base_tax_amount)); ?></td>
                            </tr>

                            <?php if($invoice->base_discount_amount > 0): ?>
                                <tr>
                                    <td><?php echo e(__('admin::app.sales.orders.discount')); ?></td>
                                    <td>-</td>
                                    <td><?php echo e(core()->formatBasePrice($invoice->base_discount_amount)); ?></td>
                                </tr>
                            <?php endif; ?>

                            <tr class="bold">
                                <td><?php echo e(__('admin::app.sales.orders.grand-total')); ?></td>
                                <td>-</td>
                                <td><?php echo e(core()->formatBasePrice($invoice->base_grand_total)); ?></td>
                            </tr>
                        </table>

                    </div>
                </accordian>

            </div>
        </div>

    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/shuvobeb/public_html/velocity/packages/Webkul/Admin/src/Providers/../Resources/views/sales/invoices/view.blade.php ENDPATH**/ ?>