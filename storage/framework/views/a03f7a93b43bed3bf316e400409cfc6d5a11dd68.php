<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="Cache-control" content="no-cache">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <style type="text/css">
            * {
                font-family: DejaVu Sans;
            }

            body, th, td, h5 {
                font-size: 12px;
                color: #000;
            }

            .container {
                padding: 20px;
                display: block;
            }

            .invoice-summary {
                margin-bottom: 20px;
            }

            .table {
                margin-top: 20px;
            }

            .table table {
                width: 100%;
                border-collapse: collapse;
                text-align: left;
            }

            .table thead th {
                font-weight: 700;
                border-top: solid 1px #d3d3d3;
                border-bottom: solid 1px #d3d3d3;
                border-left: solid 1px #d3d3d3;
                padding: 5px 10px;
                background: #F4F4F4;
            }

            .table thead th:last-child {
                border-right: solid 1px #d3d3d3;
            }

            .table tbody td {
                padding: 5px 10px;
                border-bottom: solid 1px #d3d3d3;
                border-left: solid 1px #d3d3d3;
                color: #3A3A3A;
                vertical-align: middle;
            }

            .table tbody td p {
                margin: 0;
            }

            .table tbody td:last-child {
                border-right: solid 1px #d3d3d3;
            }

           .sale-summary {
                margin-top: 40px;
                float: right;
            }

            .sale-summary tr td {
                padding: 3px 5px;
            }

            .sale-summary tr.bold {
                font-weight: 600;
            }

            .label {
                color: #000;
                font-weight: bold;
            }

            .logo {
                height: 70px;
                width: 70px;
            }

            .merchant-details {
                margin-bottom: 5px;
            }

            .merchant-details-title {
                font-weight: bold;
            }

            .text-center {
                text-align: center;
            }
        </style>
    </head>

    <body style="background-image: none; background-color: #fff;">
        <div class="container">
            <div class="header">
                <div class="row">
                    <div class="col-12">
                        <h1 class="text-center"><?php echo e(__('admin::app.sales.invoices.invoice')); ?></h1>
                    </div>
                </div>
                <?php if(core()->getConfigData('sales.orderSettings.invoice_slip_design.logo')): ?>
                    <div class="image">
                        <img class="logo" src="<?php echo e(Storage::url(core()->getConfigData('sales.orderSettings.invoice_slip_design.logo'))); ?>"/>
                    </div>
                <?php endif; ?>
                <div class="merchant-details">
                    <div><span class="merchant-details-title"><?php echo e(core()->getConfigData('sales.shipping.origin.store_name') ? core()->getConfigData('sales.shipping.origin.store_name') : ''); ?></span></div>
                    <div><?php echo e(core()->getConfigData('sales.shipping.origin.address1') ? core()->getConfigData('sales.shipping.origin.address1') : ''); ?></div>
                    <div>
                        <span><?php echo e(core()->getConfigData('sales.shipping.origin.zipcode') ? core()->getConfigData('sales.shipping.origin.zipcode') : ''); ?></span>
                        <span><?php echo e(core()->getConfigData('sales.shipping.origin.city') ? core()->getConfigData('sales.shipping.origin.city') : ''); ?></span></div>
                    <div><?php echo e(core()->getConfigData('sales.shipping.origin.state') ? core()->getConfigData('sales.shipping.origin.state') : ''); ?></div>
                    <div><?php echo e(core()->getConfigData('sales.shipping.origin.country') ?  core()->country_name(core()->getConfigData('sales.shipping.origin.country')) : ''); ?></div>
                </div>
                <div class="merchant-details">
                    <?php if(core()->getConfigData('sales.shipping.origin.contact')): ?>
                        <div><span class="merchant-details-title"><?php echo e(__('admin::app.admin.system.contact-number')); ?>:</span> <?php echo e(core()->getConfigData('sales.shipping.origin.contact')); ?></div>
                    <?php endif; ?>
                    <?php if(core()->getConfigData('sales.shipping.origin.vat_number')): ?>
                        <div><span class="merchant-details-title"><?php echo e(__('admin::app.admin.system.vat-number')); ?>:</span> <?php echo e(core()->getConfigData('sales.shipping.origin.vat_number')); ?></div>
                    <?php endif; ?>
                    <?php if(core()->getConfigData('sales.shipping.origin.bank_details')): ?>
                        <div><span class="merchant-details-title"><?php echo e(__('admin::app.admin.system.bank-details')); ?>:</span> <?php echo e(core()->getConfigData('sales.shipping.origin.bank_details')); ?></div>
                    <?php endif; ?>
                </div>
            </div>

            <div class="invoice-summary">
                <div class="row">
                    <span class="label"><?php echo e(__('admin::app.sales.invoices.invoice-id')); ?> -</span>
                    <span class="value">#<?php echo e($invoice->id); ?></span>
                </div>

                <div class="row">
                    <span class="label"><?php echo e(__('admin::app.sales.invoices.order-id')); ?> -</span>
                    <span class="value">#<?php echo e($invoice->order->increment_id); ?></span>
                </div>

                <div class="row">
                    <span class="label"><?php echo e(__('admin::app.sales.invoices.order-date')); ?> </span>
                    <span class="value"><?php echo e($invoice->created_at->format('d-m-Y')); ?></span>
                </div>

                <div class="table address">
                    <table>
                        <thead>
                            <tr>
                                <th style="width: 50%"><?php echo e(__('admin::app.sales.invoices.bill-to')); ?></th>
                                <?php if($invoice->order->shipping_address): ?>
                                    <th><?php echo e(__('admin::app.sales.invoices.ship-to')); ?></th>
                                <?php endif; ?>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <?php if($invoice->order->billing_address): ?>
                                    <td>
                                        <p><?php echo e($invoice->order->billing_address->company_name ?? ''); ?></p>
                                        <p><?php echo e($invoice->order->billing_address->name); ?></p>
                                        <p><?php echo e($invoice->order->billing_address->address1); ?></p>
                                        <p><?php echo e($invoice->order->billing_address->postcode . ' ' .$invoice->order->billing_address->city); ?> </p>
                                        <p><?php echo e($invoice->order->billing_address->state); ?></p>
                                        <p><?php echo e(core()->country_name($invoice->order->billing_address->country)); ?></p>
                                        <?php echo e(__('shop::app.checkout.onepage.contact')); ?> : <?php echo e($invoice->order->billing_address->phone); ?>

                                    </td>
                                <?php endif; ?>

                                <?php if($invoice->order->shipping_address): ?>
                                    <td>
                                        <p><?php echo e($invoice->order->shipping_address->company_name ?? ''); ?></p>
                                        <p><?php echo e($invoice->order->shipping_address->name); ?></p>
                                        <p><?php echo e($invoice->order->shipping_address->address1); ?></p>
                                        <p><?php echo e($invoice->order->shipping_address->postcode . ' ' . $invoice->order->shipping_address->city); ?></p>
                                        <p><?php echo e($invoice->order->shipping_address->state); ?></p>
                                        <p><?php echo e(core()->country_name($invoice->order->shipping_address->country)); ?></p>
                                        <?php echo e(__('shop::app.checkout.onepage.contact')); ?> : <?php echo e($invoice->order->shipping_address->phone); ?>

                                    </td>
                                <?php endif; ?>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table payment-shipment">
                    <table>
                        <thead>
                            <tr>
                                <th style="width: 50%"><?php echo e(__('admin::app.sales.orders.payment-method')); ?></th>

                                <?php if($invoice->order->shipping_address): ?>
                                    <th><?php echo e(__('admin::app.sales.orders.shipping-method')); ?></th>
                                <?php endif; ?>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>
                                    <?php echo e(core()->getConfigData('sales.paymentmethods.' . $invoice->order->payment->method . '.title')); ?>


                                    <?php $additionalDetails = \Webkul\Payment\Payment::getAdditionalDetails($invoice->order->payment->method); ?>

                                    <?php if(! empty($additionalDetails)): ?>
                                        <div>
                                            <label class="label"><?php echo e($additionalDetails['title']); ?>:</label>
                                            <p class="value"><?php echo e($additionalDetails['value']); ?></p>
                                        </div>
                                    <?php endif; ?>
                                </td>

                                <?php if($invoice->order->shipping_address): ?>
                                    <td>
                                        <?php echo e($invoice->order->shipping_title); ?>

                                    </td>
                                <?php endif; ?>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table items">
                    <table>
                        <thead>
                            <tr>
                                <th><?php echo e(__('admin::app.sales.orders.SKU')); ?></th>
                                <th><?php echo e(__('admin::app.sales.orders.product-name')); ?></th>
                                <th class="text-center"><?php echo e(__('admin::app.sales.orders.price')); ?></th>
                                <th class="text-center"><?php echo e(__('admin::app.sales.orders.qty')); ?></th>
                                <th class="text-center"><?php echo e(__('admin::app.sales.orders.subtotal')); ?></th>
                                <th class="text-center"><?php echo e(__('admin::app.sales.orders.tax-amount')); ?></th>
                                <th class="text-center"><?php echo e(__('admin::app.sales.orders.grand-total')); ?></th>
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
                                    <td class="text-center"><?php echo e($item->qty); ?></td>
                                    <td class="text-center"><?php echo e(core()->formatBasePrice($item->base_total)); ?></td>
                                    <td class="text-center"><?php echo e(core()->formatBasePrice($item->base_tax_amount)); ?></td>
                                    <td class="text-center"><?php echo e(core()->formatBasePrice($item->base_total + $item->base_tax_amount)); ?></td>
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

                    <tr>
                        <td><?php echo e(__('admin::app.sales.orders.discount')); ?></td>
                        <td>-</td>
                        <td><?php echo e(core()->formatBasePrice($invoice->base_discount_amount)); ?></td>
                    </tr>

                    <tr>
                        <td><strong><?php echo e(__('admin::app.sales.orders.grand-total')); ?></strong></td>
                        <td><strong>-</strong></td>
                        <td><strong><?php echo e(core()->formatBasePrice($invoice->base_grand_total)); ?></strong></td>
                    </tr>
                </table>

            </div>

        </div>
    </body>
</html>
<?php /**PATH /home/shuvobeb/public_html/velocity/packages/Webkul/Admin/src/Providers/../Resources/views/sales/invoices/pdf.blade.php ENDPATH**/ ?>