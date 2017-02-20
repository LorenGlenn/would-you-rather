require 'rails_helper'

describe Question do
  it { should have_db_column :user_id }
  it { should have_db_column :option_1 }
  it { should have_db_column :option_2 }
  it { should have_many :answers }
  it { should belong_to :user }
end