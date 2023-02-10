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
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="d-flex flex-column h-100">
<?php $this->beginBody() ?>

<header>
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-expand-md navbar-dark bg-dark fixed-top',
        ],
    ]);
    $items = [];
    if(Yii::$app->user->isGuest){
        $items[] = ['label' => 'Регистрация', 'url' => ['/admin/user/create']];
        $items[] = ['label' => 'Авторизоваться', 'url' => ['/site/login']];
    } else {
        if(Yii::$app->user->identity->role == 1){
            $items[] = ['label' => 'Административная панель', 'url' => ['/admin']];
        } else{
            if(Yii::$app->user->identity->role == 2){
                $items[] = ['label' => 'Панель менеджера', 'url' => ['/manager']];
            } else {
                $items[] = ['label' => 'Личный кабинет', 'url' => ['/user']];
            }
        }
        $items[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post', ['class' => 'form-inline'])
                . Html::submitButton(
//                        если пользователь авторизован, выводится его логин
                    'Выйти (' . Yii::$app->user->identity->login . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => $items,
//        'items' => [
//            ['label' => 'Главная', 'url' => ['/site/index']],
//            ['label' => 'О нас', 'url' => ['/site/about']],
//            ['label' => 'Регистрация', 'url' => ['/admin/user/create']],
//            ['label' => 'Банковские карты', 'url' => ['/admin/bank-card/index']],
//            ['label' => 'Корзины', 'url' => ['/admin/basket/index']],
//            ['label' => 'Категории', 'url' => ['/admin/category/index']],
//            ['label' => 'Города', 'url' => ['/admin/city/index']],
//            ['label' => 'Комментрии', 'url' => ['/admin/comment/index']],
//            ['label' => 'Компании', 'url' => ['/admin/company/index']],
//            ['label' => 'Доставки', 'url' => ['/admin/delivery-adress/index']],
//            ['label' => 'Фотографии', 'url' => ['/admin/img-product/index']],
//            ['label' => 'Избранные', 'url' => ['/admin/like/index']],
//            ['label' => 'Продукты', 'url' => ['/admin/product/index']],
//            ['label' => 'Заказ', 'url' => ['/admin/purchase/index']],
//            ['label' => 'Пользователи', 'url' => ['/admin/user/index']],
//            ['label' => 'Заказ с товарами', 'url' => ['/admin/zakaz-item/index']],
//            Yii::$app->user->isGuest ? (
//                ['label' => 'Авторизоваться', 'url' => ['/site/login']]
//            ) : (
//                '<li>'
//                . Html::beginForm(['/site/logout'], 'post', ['class' => 'form-inline'])
//                . Html::submitButton(
////                        если пользователь авторизован, выводится его логин
//                    'Выйти (' . Yii::$app->user->identity->login . ')',
//                    ['class' => 'btn btn-link logout']
//                )
//                . Html::endForm()
//                . '</li>'
//            )
//        ],
    ]);
    NavBar::end();
    ?>
</header>

<main role="main" class="flex-shrink-0">
    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</main>

<footer class="footer mt-auto py-3 text-muted">
    <div class="container">
        <p class="float-left">&copy; My Company <?= date('Y') ?></p>
        <p class="float-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
