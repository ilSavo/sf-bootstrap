<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Affiliate', 'doctrine');

/**
 * BaseAffiliate
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $url
 * @property string $email
 * @property string $token
 * @property timestamp $created_at
 * @property Doctrine_Collection $CategoryAffiliate
 * 
 * @method integer             getId()                Returns the current record's "id" value
 * @method string              getUrl()               Returns the current record's "url" value
 * @method string              getEmail()             Returns the current record's "email" value
 * @method string              getToken()             Returns the current record's "token" value
 * @method timestamp           getCreatedAt()         Returns the current record's "created_at" value
 * @method Doctrine_Collection getCategoryAffiliate() Returns the current record's "CategoryAffiliate" collection
 * @method Affiliate           setId()                Sets the current record's "id" value
 * @method Affiliate           setUrl()               Sets the current record's "url" value
 * @method Affiliate           setEmail()             Sets the current record's "email" value
 * @method Affiliate           setToken()             Sets the current record's "token" value
 * @method Affiliate           setCreatedAt()         Sets the current record's "created_at" value
 * @method Affiliate           setCategoryAffiliate() Sets the current record's "CategoryAffiliate" collection
 * 
 * @package    sf_sandbox
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseAffiliate extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('affiliate');
        $this->hasColumn('id', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('url', 'string', 255, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 255,
             ));
        $this->hasColumn('email', 'string', 255, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 255,
             ));
        $this->hasColumn('token', 'string', 255, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 255,
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('CategoryAffiliate', array(
             'local' => 'id',
             'foreign' => 'affiliate_id'));
    }
}