require 'rails_helper'

RSpec.describe Text, type: :model do
  before do
  @text = FactoryBot.build(:text)
  end
  
describe '目標投稿機能' do
 context '目標投稿できる時' do
  it '全ての情報があれば投稿できる' do
    expect(@text).to be_valid
  end
 end
  context '投稿できない時' do
  it 'oneが空では投稿できない' do
    @text.one = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("One can't be blank")
  end
  it 'twoが空では投稿できない' do
    @text.two = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Two can't be blank")
  end
  it 'threeが空では投稿できない' do
    @text.three = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Three can't be blank")
  end
  it 'fourが空では投稿できない' do
    @text.four = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Four can't be blank")
  end
  it 'fiveが空では投稿できない' do
    @text.five = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Five can't be blank")
  end
  it 'sixが空では投稿できない' do
    @text.six = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Six can't be blank")
  end
  it 'sevenが空では投稿できない' do
    @text.seven = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Seven can't be blank")
  end
  it 'eightが空では投稿できない' do
    @text.eight = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Eight can't be blank")
  end
  it 'nineが空では投稿できない' do
    @text.nine = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Nine can't be blank")
  end
  it 'tenが空では投稿できない' do
    @text.ten = ''
    @text.valid?
    expect(@text.errors.full_messages).to include("Ten can't be blank")
  end
  it '一つでも空なら登録できない' do
    @text.one = ''
    @text.two = 'aaa'
    @text.three = 'aaa'
    @text.four = 'aaa'
    @text.five = 'aaa'
    @text.six = 'aaa'
    @text.seven = 'aaa'
    @text.eight = 'aaa'
    @text.nine = 'aaa'
    @text.ten = 'aaa'
    @text.valid?
    expect(@text.errors.full_messages).to include("One can't be blank")
  end

 end

 end
end
