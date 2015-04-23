class AddDefalutValuesToCount < ActiveRecord::Migration
  def change
    change_column_default :counts, :try, 0
    change_column_default :counts, :correct, 0
  end
end
