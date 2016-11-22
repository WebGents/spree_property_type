Deface::Override.new(
    :virtual_path => 'spree/admin/shared/sub_menu/_product',
    :name => 'add_property_type_to_admin_menu',
    :insert_bottom => "[data-hook='admin_product_sub_tabs']",
    :text => "<%= configurations_sidebar_menu_item t('property_types'), admin_property_types_path %>"
)
