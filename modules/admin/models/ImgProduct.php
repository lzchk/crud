<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "img_product".
 *
 * @property int $id
 * @property string $name
 * @property int $id_product
 * @property string $path
 *
 * @property Product $product
 */
class ImgProduct extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'img_product';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'id_product'], 'required'],
            [['id_product'], 'integer'],
            [['name' , 'path'], 'string', 'max' => 255],
            [['id_product'], 'exist', 'skipOnError' => true, 'targetClass' => Product::class, 'targetAttribute' => ['id_product' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Название',
            'path' => 'Путь',
            'id_product' => 'Id Продукта',
        ];
    }

    /**
     * Gets query for [[Product]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::class, ['id' => 'id_product']);
    }
}
