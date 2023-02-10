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
    <h1>Привет, менеджер!</h1>
    <?php
    echo \yii\bootstrap4\Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => [
            ['label' => 'Компании', 'url' => ['/admin/company/index']],
            ['label' => 'Фотографии', 'url' => ['/admin/img-product/index']],
            ['label' => 'Продукты', 'url' => ['/admin/product/index']],
            ['label' => 'Заказ с товарами', 'url' => ['/admin/zakaz-item/index']],
        ],
    ]);
    ?>
</div>
