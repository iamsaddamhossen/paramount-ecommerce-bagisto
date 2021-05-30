<style>
    .camera-icon {
        background-image: url("<?php echo e(asset('/vendor/webkul/ui/assets/images/Camera.svg')); ?>");
    }
</style>

<script type="text/x-template" id="cart-btn-template">
    <button
        type="button"
        id="mini-cart"
        @click="toggleMiniCart"
        :class="`btn btn-link disable-box-shadow ${itemCount == 0 ? 'cursor-not-allowed' : ''}`">

        <div class="mini-cart-content">
            <i class="material-icons-outlined text-down-3">shopping_cart</i>
            <span class="badge" v-text="itemCount" v-if="itemCount != 0"></span>
            <span class="fs18 fw6 cart-text"><?php echo e(__('velocity::app.minicart.cart')); ?></span>
        </div>
        <div class="down-arrow-container">
            <span class="rango-arrow-down"></span>
        </div>
    </button>
</script>

<script type="text/x-template" id="close-btn-template">
    <button type="button" class="close disable-box-shadow">
        <span class="white-text fs20" @click="togglePopup">×</span>
    </button>
</script>

<script type="text/x-template" id="quantity-changer-template">
    <div :class="`quantity control-group ${errors.has(controlName) ? 'has-error' : ''}`">
        <label class="required"><?php echo e(__('shop::app.products.quantity')); ?></label>
        <button type="button" class="decrease" @click="decreaseQty()">-</button>

        <input
            :value="qty"
            class="control"
            :name="controlName"
            :v-validate="validations"
            data-vv-as="&quot;<?php echo e(__('shop::app.products.quantity')); ?>&quot;"
            readonly />

        <button type="button" class="increase" @click="increaseQty()">+</button>

        <span class="control-error" v-if="errors.has(controlName)">{{ errors.first(controlName) }}</span>
    </div>
</script>

<?php echo $__env->make('velocity::UI.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<script type="text/x-template" id="logo-template">
    <a
        :class="`left ${addClass}`"
        href="<?php echo e(route('shop.home.index')); ?>">

        <?php if($logo = core()->getCurrentChannel()->logo_url): ?>
            <img class="logo" src="<?php echo e($logo); ?>" />
        <?php else: ?>
            <img class="logo" src="<?php echo e(asset('themes/velocity/assets/images/logo-text.png')); ?>" />
        <?php endif; ?>
    </a>
</script>

<script type="text/x-template" id="searchbar-template">
    <div class="row no-margin right searchbar">
        <div class="col-lg-5 col-md-12 no-padding input-group">
            <form
                method="GET"
                role="search"
                id="search-form"
                action="<?php echo e(route('velocity.search.index')); ?>">

                <div
                    class="btn-toolbar full-width"
                    role="toolbar">

                    <div class="btn-group full-width">
                        <div class="selectdiv">

                            <select 

                            @change="$refs.catSearch.click()" 
                            class="form-control fs13 styled-select trigger" id="category" name="category" @change="focusInput($event)">

                            <option value="">
                                    <?php echo e(__('velocity::app.header.all-categories')); ?>

                            </option>

                        <template v-for="(category, index) in $root.sharedRootCategories">
                            <option
                                :key="index"
                                selected="selected"
                                :value="category.id"
                                v-if="(category.id == searchedQuery.category)">
                                {{ category.name }}
                            </option>

                            <option :key="index" :value="category.id" v-else>
                                {{ category.name }}
                            </option>
                        </template>

                   

                        </select>



                        <div class="select-icon-container">
                            <span class="select-icon rango-arrow-down"></span>
                        </div>
                    </div>


                                               

                        <div class="full-width">

                            <input
                                name="term"
                                type="search"
                                class="form-control"
                                placeholder="<?php echo e(__('velocity::app.header.search-text')); ?>"
                                :value="searchedQuery.term ? searchedQuery.term.split('+').join(' ') : ''" />

                            <image-search-component></image-search-component>

                            <button class="btn" type="submit" id="header-search-icon" ref="catSearch">
                                <i class="fs16 fw6 rango-search"></i>
                            </button>
                        </div>
                    </div>
                </div>

            </form>
        </div>

        <div class="col-lg-7 col-md-12">
            <?php echo view_render_event('bagisto.shop.layout.header.cart-item.before'); ?>

                <?php echo $__env->make('shop::checkout.cart.mini-cart', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo view_render_event('bagisto.shop.layout.header.cart-item.after'); ?>


            <?php
                $showCompare = core()->getConfigData('general.content.shop.compare_option') == "1" ? true : false
            ?>

            <?php echo view_render_event('bagisto.shop.layout.header.compare.before'); ?>

                <?php if($showCompare): ?>
                    <a
                        class="compare-btn unset"
                        <?php if(auth()->guard('customer')->check()): ?>
                            href="<?php echo e(route('velocity.customer.product.compare')); ?>"
                        <?php endif; ?>

                        <?php if(auth()->guard('customer')->guest()): ?>
                            href="<?php echo e(route('velocity.product.compare')); ?>"
                        <?php endif; ?>
                        >

                        <i class="material-icons">compare_arrows</i>
                        <div class="badge-container" v-if="compareCount > 0">
                            <span class="badge" v-text="compareCount"></span>
                        </div>
                        <span><?php echo e(__('velocity::app.customer.compare.text')); ?></span>
                    </a>
                <?php endif; ?>
            <?php echo view_render_event('bagisto.shop.layout.header.compare.after'); ?>


            <?php echo view_render_event('bagisto.shop.layout.header.wishlist.before'); ?>

                <a class="wishlist-btn unset" :href="`${isCustomer ? '<?php echo e(route('customer.wishlist.index')); ?>' : '<?php echo e(route('velocity.product.guest-wishlist')); ?>'}`">
                    <i class="material-icons">favorite_border</i>
                    <div class="badge-container" v-if="wishlistCount > 0">
                        <span class="badge" v-text="wishlistCount"></span>
                    </div>
                    <span><?php echo e(__('shop::app.layouts.wishlist')); ?></span>
                </a>
            <?php echo view_render_event('bagisto.shop.layout.header.wishlist.after'); ?>

        </div>
    </div>
</script>

<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow-models/mobilenet"></script>

<script type="text/x-template" id="image-search-component-template">
    <div class="d-inline-block">
        <label class="image-search-container" for="image-search-container">
            <!-- <i class="icon camera-icon"></i> -->

            <input
                type="file"
                class="d-none"
                ref="image_search_input"
                id="image-search-container"
                v-on:change="uploadImage()" />

            <img
                class="d-none"
                id="uploaded-image-url"
                :src="uploadedImageUrl" />
        </label>
    </div>
</script>

<script type="text/javascript">
    (() => {
        Vue.component('cart-btn', {
            template: '#cart-btn-template',

            props: ['itemCount'],

            methods: {
                toggleMiniCart: function () {
                    let modal = $('#cart-modal-content')[0];
                    if (modal)
                        modal.classList.toggle('hide');

                    let accountModal = $('.account-modal')[0];
                    if (accountModal)
                        accountModal.classList.add('hide');

                    event.stopPropagation();
                }
            }
        });

        Vue.component('close-btn', {
            template: '#close-btn-template',

            methods: {
                togglePopup: function () {
                    $('#cart-modal-content').hide();
                }
            }
        });

        Vue.component('quantity-changer', {
            template: '#quantity-changer-template',
            inject: ['$validator'],
            props: {
                controlName: {
                    type: String,
                    default: 'quantity'
                },

                quantity: {
                    type: [Number, String],
                    default: 1
                },

                minQuantity: {
                    type: [Number, String],
                    default: 1
                },

                validations: {
                    type: String,
                    default: 'required|numeric|min_value:1'
                }
            },

            data: function() {
                return {
                    qty: this.quantity
                }
            },

            watch: {
                quantity: function (val) {
                    this.qty = val;

                    this.$emit('onQtyUpdated', this.qty)
                }
            },

            methods: {
                decreaseQty: function() {
                    if (this.qty > this.minQuantity)
                        this.qty = parseInt(this.qty) - 1;

                    this.$emit('onQtyUpdated', this.qty)
                },

                increaseQty: function() {
                    this.qty = parseInt(this.qty) + 1;

                    this.$emit('onQtyUpdated', this.qty)
                }
            }
        });

        Vue.component('logo-component', {
            template: '#logo-template',
            props: ['addClass'],
        });

        Vue.component('searchbar-component', {
            template: '#searchbar-template',
            data: function () {
                return {
                    compareCount: 0,
                    wishlistCount: 0,
                    searchedQuery: [],
                    isCustomer: '<?php echo e(auth()->guard('customer')->user() ? "true" : "false"); ?>' == "true",
                }
            },

            watch: {
                '$root.headerItemsCount': function () {
                    this.updateHeaderItemsCount();
                }
            },

            created: function () {
                let searchedItem = window.location.search.replace("?", "");
                searchedItem = searchedItem.split('&');

                let updatedSearchedCollection = {};

                searchedItem.forEach(item => {
                    let splitedItem = item.split('=');
                    updatedSearchedCollection[splitedItem[0]] = decodeURI(splitedItem[1]);
                });

                if (updatedSearchedCollection['image-search'] == 1) {
                    updatedSearchedCollection.term = '';
                }

                this.searchedQuery = updatedSearchedCollection;

                this.updateHeaderItemsCount();
            },

            methods: {
                'focusInput': function (event) {
                    $(event.target.parentElement.parentElement).find('input').focus();
                },

                'updateHeaderItemsCount': function () {
                    if (! this.isCustomer) {
                        let comparedItems = this.getStorageValue('compared_product');
                        let wishlistedItems = this.getStorageValue('wishlist_product');

                        if (wishlistedItems) {
                            this.wishlistCount = wishlistedItems.length;
                        }

                        if (comparedItems) {
                            this.compareCount = comparedItems.length;
                        }
                    } else {
                        this.$http.get(`${this.$root.baseUrl}/items-count`)
                            .then(response => {
                                this.compareCount = response.data.compareProductsCount;
                                this.wishlistCount = response.data.wishlistedProductsCount;
                            })
                            .catch(exception => {
                                console.log(this.__('error.something_went_wrong'));
                            });
                    }
                }
            }
        });

        Vue.component('image-search-component', {
            template: '#image-search-component-template',
            data: function() {
                return {
                    uploadedImageUrl: ''
                }
            },

            methods: {
                uploadImage: function() {
                    var imageInput = this.$refs.image_search_input;

                    if (imageInput.files && imageInput.files[0]) {
                        if (imageInput.files[0].type.includes('image/')) {
                            this.$root.showLoader();

                            var formData = new FormData();

                            formData.append('image', imageInput.files[0]);

                            axios.post(
                                "<?php echo e(route('shop.image.search.upload')); ?>",
                                formData,
                                {
                                    headers: {
                                        'Content-Type': 'multipart/form-data'
                                    }
                                }
                            ).then(response => {
                                var net;
                                var self = this;
                                this.uploadedImageUrl = response.data;


                                async function app() {
                                    var analysedResult = [];

                                    var queryString = '';

                                    net = await mobilenet.load();

                                    const imgElement = document.getElementById('uploaded-image-url');

                                    try {
                                        const result = await net.classify(imgElement);

                                        result.forEach(function(value) {
                                            queryString = value.className.split(',');

                                            if (queryString.length > 1) {
                                                analysedResult = analysedResult.concat(queryString)
                                            } else {
                                                analysedResult.push(queryString[0])
                                            }
                                        });
                                    } catch (error) {
                                        self.$root.hideLoader();

                                        window.showAlert(
                                            `alert-danger`,
                                            this.__('shop.general.alert.error'),
                                            "<?php echo e(__('shop::app.common.error')); ?>"
                                        );
                                    }

                                    localStorage.searchedImageUrl = self.uploadedImageUrl;

                                    queryString = localStorage.searched_terms = analysedResult.join('_');

                                    self.$root.hideLoader();

                                    window.location.href = "<?php echo e(route('shop.search.index')); ?>" + '?term=' + queryString + '&image-search=1';
                                }

                                app();
                            }).catch(() => {
                                this.$root.hideLoader();

                                window.showAlert(
                                    `alert-danger`,
                                    this.__('shop.general.alert.error'),
                                    "<?php echo e(__('shop::app.common.error')); ?>"
                                );
                            });
                        } else {
                            imageInput.value = '';

                            alert('Only images (.jpeg, .jpg, .png, ..) are allowed.');
                        }
                    }
                }
            }
        });
    })()
</script><?php /**PATH C:\xampp\htdocs\velocity_new_app/resources/themes/velocity/views/UI/particals.blade.php ENDPATH**/ ?>