require 'rails_helper'

describe 'AuditLog Feature' do 
  let (:audit_log) { FactoryGirl.create(:audit_log) }

  describe 'index' do 
    before do
      delete_user = FactoryGirl.create(:admin_user)
      login_as(delete_user, :scope => :admin_user)
    end

    it 'has an index page that can be reached' do 
      visit audit_logs_path
      expect(page.status_code).to eq(200)
    end

    it 'renders audit log content' do 
      visit audit_logs_path
      expect(page).to have_content(/SNOW, JON/)
    end

    xit 'cannot be accessed by non admin users' do

    end
  end
end