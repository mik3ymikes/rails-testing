require 'rails_helper'



    RSpec.describe User, type: :model do
        context 'with valid attributes' do
          it 'is valid' do
            user= User.new (name: "mike"  email: 'john@hotmail.com')
            expect(user).to be_valid
          end
        end
      
        context 'with invalid attributes' do
          it 'is invalid without a email' do
            user = User.new(name: 'mike')
            expect(user).to be_invalid
          end
      
          it 'is invalid without a name' do
              user = User.new(email: 'john@hotmail.com')
              expect(user).to be_invalid
            end
        end

end
