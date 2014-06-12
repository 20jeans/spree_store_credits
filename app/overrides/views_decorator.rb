Deface::Override.new({
  virtual_path: "spree/admin/shared/_configuration_menu",
  name: "store_credits_admin_configurations_menu",
  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
  text: "<%= configurations_sidebar_menu_item Spree.t(:store_credits), admin_store_credits_url %>",
  disabled: false
})

Deface::Override.new({
  virtual_path: "spree/admin/users/index",
  name: "store_credits_admin_users_index_row_actions",
  insert_bottom: "[data-hook='admin_users_index_row_actions']",
  text: "<%= link_to_with_icon('fa-dollar', Spree.t('add_store_credit'), new_admin_user_store_credit_url(user), {no_text: true}) %>",
  disabled: false
})

Deface::Override.new({
  virtual_path: "spree/admin/general_settings/edit",
  name: "admin_general_settings_edit_for_sc",
  insert_before: "[data-hook='buttons']",
  partial: "spree/admin/store_credits/limit",
  disabled: true
})