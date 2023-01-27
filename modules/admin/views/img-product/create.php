<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\modules\admin\models\ImgProduct $model */

$this->title = 'Создание фотографий товаров';
$this->params['breadcrumbs'][] = ['label' => 'Img Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="img-product-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
