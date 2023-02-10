<?php

use app\modules\admin\models\Product;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\modules\admin\models\ProductSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Продукты';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?php
        $items = [];
        if(Yii::$app->user->identity->role == 1){
            $items[] = Html::a('Создать', ['create'], ['class' => 'btn btn-success']);
        } else{
            if(Yii::$app->user->identity->role == 2){
                $items[] = Html::a('Создать', ['create'], ['class' => 'btn btn-success']);
            }
        }
        ?>
<!--        --><?//= Html::a('Создать', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'sale_price',
            'sale_flag',
            'description:ntext',
            //'characteristic:ntext',
            //'id_company',
            //'rating',
            //'created_at',
            //'updated_at',
            //'created_by',
            //'price',
            //'id_category',
            //'id_comment',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Product $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
