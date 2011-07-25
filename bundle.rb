require 'ruble'

bundle do |bundle|
  bundle.author = "Aaron Huang"
  bundle.scope = "source.php"
  bundle.display_name = 'Yii Ruble'
  bundle.repository = "git://github.com/aar0nTw/yii.ruble.git"
  bundle.menu 'Yii' do |main_menu|
    main_menu.command 'Search in Yii...'
    main_menu.command 'Search in Yii ClassRef...'
    main_menu.command 'Paste and Swap Case'
    main_menu.command 'Copy and Swap Case'
    main_menu.separator
    main_menu.menu 'Commands' do |sub_menu|
      sub_menu.command 'Swap Case'
    end
    main_menu.separator
    main_menu.command 'params[...]'
    main_menu.menu 'Models' do |sub_menu|
      sub_menu.command 'Model:Before Save'
      sub_menu.command 'Model:Relation'
    end
    
    main_menu.menu 'Controller' do |sub_menu|
      sub_menu.command 'Controller:Render'
      sub_menu.command 'Controller:Render with var'
      sub_menu.command 'Controller:Request Type'
      sub_menu.command 'Controller:Action'
    end
  end
end