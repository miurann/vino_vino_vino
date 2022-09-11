require 'rails_helper'

RSpec.describe 'Wineモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:wine) { create(:wine) }

    context '正常に登録できる' do
      it '全ての要素を入力し、ワインの新規登録ができる' do
        expect(wine).to be_valid
      end
    end
  end
end
