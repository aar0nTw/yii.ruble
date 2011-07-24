snippet 'Yii:Before Save' do |snip|
  snip.trigger = 'befsave'
  snip.expansion = '
public function beforeSave()
{
     if(parent::beforeSave()){
      if(\$this->isNewRecord){
        ${2://TODO something if it\'s new record}
      }else{
        ${3://TODO something}
      }
      return true;
     }  
     return false;
}'
end