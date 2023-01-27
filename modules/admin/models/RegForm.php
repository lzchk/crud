<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $email
 * @property int $phone
 * @property string $login
 * @property string $password
 * @property int $id_city потому что самое длинное название города в мире - 168 символов
 * @property string $date_of_birth
 * @property string $sex
 * @property string $avatar
 * @property float $currency валюта
 * @property string $role
 * @property string $name
 * @property string $passwordConfirm
 *
 * @property BankCard[] $bankCards
 * @property Basket[] $baskets
 * @property City $city
 * @property Comment[] $comments
 * @property Company[] $companies
 * @property Company[] $companies0
 * @property DeliveryAddress[] $deliveryAddresses
 * @property Like[] $likes
 * @property Product[] $products
 */
class RegForm extends User
{
    public $passwordConfirm;
    public $agree;

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['email', 'phone', 'login', 'password', 'id_city', 'date_of_birth', 'sex', 'currency', 'passwordConfirm', 'agree', 'name'], 'required', 'message' => 'Поле обязательно для заполнения!'],
            [['phone'], 'string', 'max' => 100],
            [['phone'], 'unique'],
            [['id_city'], 'number'],
            [['date_of_birth'], 'safe'],
            [['sex'], 'string'],
            [['currency'], 'string', 'max' => 12],
            [['email'], 'string', 'max' => 120],
            [['name'], 'string', 'max' => 120],
            ['name', 'match', 'pattern' => '#[А-Яа-я\- ]+#', 'message' => 'Только кириллица, пробелы и дефисы'],
            [['login', 'password'], 'string', 'max' => 50],
            ['login', 'match', 'pattern' => '/^[a-zA-Z]{1,}$/u', 'message' => 'Только латинские буквы!'],
            ['login', 'unique', 'message' => 'Такой логин уже используется!'],
            ['email', 'email', 'message' => 'Некорректный email!'], ['email', 'unique', 'message' => 'Такой email уже используется!'],
            [['avatar'], 'string', 'max' => 300],
            [['role'], 'string', 'max' => 20],
            [['id_city'], 'exist', 'skipOnError' => true, 'targetClass' => City::class, 'targetAttribute' => ['id_city' => 'id']],
            ['passwordConfirm', 'compare', 'compareAttribute' => 'password', 'message' => 'Пароли должны сопадать!'],
            [['agree'], 'boolean'],
            [['agree'], 'compare', 'compareValue' => true, 'message' => 'Необходимо дать согласие!'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'ФИО',
            'email' => 'Email',
            'phone' => 'Телефон',
            'login' => 'Логин',
            'password' => 'Пароль',
            'passwordConfirm' => 'Подтверждение пароля',
            'id_city' => 'Город',
            'date_of_birth' => 'День рождения',
            'sex' => 'Пол',
            'avatar' => 'Автар',
            'currency' => 'Валюта',
            'role' => 'Роль',
            'agree' => 'Даю согласие на обработку персональных данных.',
        ];
    }
}