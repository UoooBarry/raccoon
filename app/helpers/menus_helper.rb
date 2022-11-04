module MenusHelper
  def menus
    [
      { name: 'Home', path: root_path }
    ]
  end

  def menu_link(name, path)
    link_to_unless controller_name == name.downcase, name.capitalize, path,
                   class: 'block py-2 pr-4 pl-3 bg-blue-700 rounded md:bg-transparent md:p-0 dark:text-white' do
      link_to name.capitalize, path,
              class: 'block py-2 pr-4 pl-3 text-white bg-blue-700 md:text-blue-700 rounded md:bg-transparent md:p-0 dark:text-white'
    end
  end
end
