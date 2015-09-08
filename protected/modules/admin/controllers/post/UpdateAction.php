<?php
/**
 * 文章编辑
 * 
 * @author        Sim Zhao <326196998@qq.com>
 * @copyright     Copyright (c) 2015. All rights reserved.
 */

class UpdateAction extends CAction
{	
	public function run($id){
		$model = Post::model()->findByPk($id);    	
    	if(isset($_POST['Post']))
    	{
    		$model->attributes=$_POST['Post'];    		
    		//标题样式
    		$title_style = Yii::app()->request->getPost('style');   
    		if(isset($title_style['bold']) && $title_style['bold'] != 'Y'){
                unset($title_style['bold']);
            }
            if(isset($title_style['underline']) && $title_style['underline'] != 'Y'){
                unset($title_style['underline']);
            }
            if(isset($title_style['color']) && !$title_style['color']){
                unset($title_style['color']);
            }
    		if($title_style){    			
    			$model->title_style = serialize($title_style);
    		}else{
    			$model->title_style = '';
    		}    		
    		
    		//标签   (前10个标签有效) 		
    		$tags = trim($_POST['Post']['tags']);    		
    		$unique_tags = array_unique(explode(',', str_replace(array (' ' , '，' ), array('',','), $tags)));    		
    		$explodeTags = array_slice($unique_tags, 0, 10);  
    		    		  	
    		//摘要
    		$model->introduce = trim($_POST['Post']['introduce'])?$_POST['Post']['introduce']:Helper::truncate_utf8_string(preg_replace('/\s+/',' ',$_POST['Post']['content']), 200);
    		
    		$model->tags = implode(',',$explodeTags);
    		$model->update_time = time();
    		
    		if($model->save()){
    			//更新标签数据
				Tag::model()->updateTagData($explodeTags, array('content_id'=>$model->id, 'status'=>$model->status, 'type_id'=>$this->controller->_type_ids['post']));
    			$this->controller->message('success',Yii::t('admin','Update Success'),$this->controller->createUrl('index'));
    		}
    	}else{    		
    		$style = unserialize($model->title_style);
    	}   	        
    	$this->controller->render('update',array(
    			'model'=>$model,    			
    			'style' => $style,
    	));    	
	}
}