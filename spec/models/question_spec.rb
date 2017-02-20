require 'rails_helper'

describe Question do
  it { should have_db_column :user_id }
  it { should have_db_column :content }
end
