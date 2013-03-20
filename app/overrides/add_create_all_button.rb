Deface::Override.new(
  :virtual_path => "spree/admin/variants/index",
  :name         => "add_create_all_button",
  :insert_top   => "[data-hook='toolbar'], #toolbar[data-hook]",
  :partial      => "spree/admin/variants/create_all")
