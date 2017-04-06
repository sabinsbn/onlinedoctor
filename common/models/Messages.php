<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%messages}}".
 *
 * @property integer $id
 * @property string $name
 * @property string $message
 * @property integer $status
 * @property integer $type
 */
class Messages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%messages}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'message','type'], 'required'],
            [['message'], 'string'],
            [['status','type'], 'integer'],
            [['name'], 'string', 'max' => 256],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'message' => 'Message',
            'status' => 'Status',
	    'type' => 'Type',
        ];
    }
}
