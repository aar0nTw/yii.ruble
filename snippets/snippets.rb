snippet 'Model:Before Save' do |snip|
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

snippet 'Model:Relation' do |snip|
  snip.trigger = 'relate'
  snip.expansion ='\'${1:name}\'=>array(self::${2:relation},\'${3:Model}\',\'${4:key}\',\'condition\'=>\'${5:condition}\'),'
end
