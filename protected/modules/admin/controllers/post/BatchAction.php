<?php
/**
 * 文章批量操作
 * 
 * @author        Sim Zhao <326196998@qq.com>
 * @copyright     Copyright (c) 2015. All rights reserved.
 */

class BatchAction extends CAction
{	
	public function run(){		
        $ids = Yii::app()->request->getParam('id');
        $command = Yii::app()->request->getParam('command');
        empty( $ids ) && $this->controller->message( 'error', Yii::t('admin','No Select') );
        $criteria = new CDbCriteria();
        $criteria->addInCondition('id', $ids);
        switch ( $command ) {
            case 'delete':      
                //删除
                Post::model()->deleteAll($criteria);
                foreach((array)$ids as $id){
                    //删除关联的标签
                    TagData::model()->deleteAll('content_id =:id AND type =:type', array(':id'=>$id, ':type'=>$this->controller->_type_ids['post']));
                }
                break;       
            case 'show':     
                //显示
                Post::model()->updateAll(['status' => 'Y'], $criteria);
                foreach((array)$ids as $id){
                    //更新关联的标签
                    $tagData = TagData::model()->updateAll(array('status'=>'Y'),'content_id =:id AND type =:type', array(':id'=>$id, ':type'=>$this->controller->_type_ids['post']));                   
                }
                break;
            case 'hidden':     
                //文章隐藏      
                Post::model()->updateAll(['status' => 'N'], $criteria);
                foreach((array)$ids as $id){                    
                    //更新关联的标签
                    $tagData = TagData::model()->updateAll(array('status'=>'N'),'content_id =:id AND type =:type', array(':id'=>$id, ':type'=>$this->controller->_type_ids['post']));                    
                }
                break;
            case 'commend':     
                //文章推荐
                foreach((array)$ids as $id){        		
                    $recom_id = intval($_POST['recom_id']);
                    if($recom_id){
                        Post::model()->updateAll(['commend' => 'Y'], $criteria);  
                    }else{
                        $this->controller->message('error', Yii::t('admin','RecommendPosition is Required'));
                    }
                }                 
                break;

            case 'stick':     
                //文章置顶
                Post::model()->updateAll(['top_line' => 'Y'], $criteria);               
                break;
            case 'cancelStick':     
                //文章取消置顶
                Post::model()->updateAll(['top_line' => 'N'], $criteria);
                break;
            default:
                throw new CHttpException(404, Yii::t('admin','Error Operation'));                
        }
        $this->controller->message('success', Yii::t('admin','Batch Operate Success'));    	
	}
}