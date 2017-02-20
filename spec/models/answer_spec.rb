require 'rails_helper'

describe Answer do
  it { should have_db_column :user_id }
  it { should have_db_column :option_1 }
  it { should have_db_column :option_2 }
  it { should belong_to :question }
  it { should belong_to :user }
end
