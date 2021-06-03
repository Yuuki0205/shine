require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

describe 'ユーザー新規登録' do
  context '新規登録できるとき' do
  it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
    expect(@user).to be_valid
  end
 end
  context '新規登録できないとき' do
  it 'nicknameが空では登録できない' do
    @user.nickname = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Nickname can't be blank")
  end
  it 'emailが空では登録できない' do
    
    @user.email = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Email can't be blank")
  end
  it 'メールアドレスが一意性であること' do
       @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
  end
  it 'メールアドレスは、@を含む必要があること' do
    @user.email = 'yyyy'
    @user.valid?
    expect(@user.errors.full_messages).to include("Email is invalid")
  end
  it 'パスワードが必須であること' do
    @user.password = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")
  end
  it 'パスワードは、6文字以上での入力が必須であること' do
    @user.password = 'y1y'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
  end
  it '数字のみでは登録できないこと' do
    @user.password = '1111111'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end
  it '全角では登録できないこと' do
    @user.password = 'あああああああ'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password は半角英数混合でお願いします")
  end
  it 'パスワードは、半角英数字混合での入力が必須であること' do
    @user.password = '1111111'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password は半角英数混合でお願いします")
  end
  it 'パスワードは、確認用を含めて2回入力すること' do
    @user.password = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")
  end
  it 'パスワードとパスワード（確認用）は、値の一致が必須であること' do
    @user.password = 'a123456'
    @user.password_confirmation = 'a1234567'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end
  


  end
 end
end
