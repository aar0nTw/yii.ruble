with_defaults :scope => 'source.php' do
  snippet 'params[...]' do |snip|
    snip.trigger = 'yiiparams'
    snip.expansion = '
Yii::app()->params[\'${1:key}\'];
'
  end
end