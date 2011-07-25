require 'ruble'

bundle do |bundle|
  bundle.author = "Aaron Huang"
  bundle.scope = "source.php"
  bundle.display_name = 'Yii Ruble'
  bundle.menu 'Yii' do |main_menu|
    main_menu.command 'Paste and Swap Case'
    main_menu.command 'Copy and Swap Case'
    main_menu.separator
    main_menu.menu 'Commands' do |sub_menu|
      sub_menu.command 'Swap Case'
    end
    
    main_menu.menu 'Snippets' do |sub_menu|
      sub_menu.command 'Model:Before Save'
      sub_menu.command 'Model:Relation'
    end
  end
end