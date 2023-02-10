<?php

/** @var yii\web\View $this */
/** @var string $content */

use app\assets\AppAsset;
use app\widgets\Alert;
use yii\bootstrap4\Breadcrumbs;
use yii\bootstrap4\Html;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;

AppAsset::register($this);
?>
<div class="admin-default-index">
    <h1>Привет, админ!</h1>
    <?php
    echo \yii\bootstrap4\Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => [
            ['label' => 'Банковские карты', 'url' => ['/admin/bank-card/index']],
            ['label' => 'Корзины', 'url' => ['/admin/basket/index']],
            ['label' => 'Категории', 'url' => ['/admin/category/index']],
            ['label' => 'Города', 'url' => ['/admin/city/index']],
            ['label' => 'Комментрии', 'url' => ['/admin/comment/index']],
            ['label' => 'Компании', 'url' => ['/admin/company/index']],
            ['label' => 'Доставки', 'url' => ['/admin/delivery-adress/index']],
            ['label' => 'Фотографии', 'url' => ['/admin/img-product/index']],
            ['label' => 'Избранные', 'url' => ['/admin/like/index']],
            ['label' => 'Продукты', 'url' => ['/admin/product/index']],
            ['label' => 'Заказ', 'url' => ['/admin/purchase/index']],
            ['label' => 'Пользователи', 'url' => ['/admin/user/index']],
            ['label' => 'Заказ с товарами', 'url' => ['/admin/zakaz-item/index']],
            ],
        ]);
    ?>
</div>
