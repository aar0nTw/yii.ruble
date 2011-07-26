with_defaults :scope => 'source.php' do

  #Controller:Request Type
  #
    
  snippet 'Controller:Request Type' do |snip|
    snip.trigger = 'request'
    snip.expansion = '
if(!Yii::app()->request->${1://request type}){
  ${2://TODO something like:throw new CHttpException()}
}    
'
 end
  
  #Controller:Render
  #
  
  snippet 'Controller:Render' do |snip|
    snip.trigger = 'render'
    snip.expansion = '
\$this->render(\'${1:view}\');
'
  end
  
  #Controller:Render with var
  #
  
  snippet 'Controller:Render with var' do |snip|
    snip.trigger = 'render'
    snip.expansion = '\$this->render(\'${1:view}\',array(
        \'${2:key}\'=>\'${3:value}\'
));'
  end
  
  #Controller:Action
  #Fast add a action in controller.
  snippet 'Controller:Action' do |snip|
    snip.trigger = 'action'
    snip.expansion = '
public function action${1:Name}()
{
   \$this->render(\'${2:view}\');
}    
'
  end
  
  #Add a criteria setting
  #Fast to add a criteria property array.
  snippet 'Add a Criteria setting' do |snip|
    snip.trigger ='criteria'
    snip.expansion = ' array(
  \'select\'=>\'${1://the columns being selected.}\',
  \'with\'  =>\'${2://the relational query criteria.}\',
  \'condition\'=>\'${3://query condition}\',
  \'group\' =>\'${4://how to group the query results.}\',
  \'order\' =>\'${5://how to sort the query results.}\',
  \'limit\' =>\'${6://maximum number of records to be returned.}\'
 );
'
  end
end
