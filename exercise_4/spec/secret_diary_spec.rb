require "secret_diary"

describe SecretDiary do
  subject(:new_diary) { described_class.new }
  it "should instatiate a new class of the SecretDiary object" do
    expect(SecretDiary).to respond_to(:new)
  end

  let(:new_diary) { SecretDiary.new }
  it "new_diary should respond to lock_status" do
    expect(new_diary).to respond_to(:lock_status)
  end

  it "new_diary should respond to correct_password?" do
    expect(new_diary).to respond_to(:correct_password?)
  end

  it "new_diary should respond to lock" do
    expect(new_diary).to respond_to(:lock)
  end

  it "new_diary should respond to unlock" do
    expect(new_diary).to respond_to(:unlock)
  end

  it "new_diary should respond to add_entry" do
    expect(new_diary).to respond_to(:add_entry)
  end

  it "new_diary should respond to get_entry" do
    expect(new_diary).to respond_to(:get_entry)
  end
end

RSpec.describe "user cannot access add_entry feature if diary is locked" do
  subject(:new_diary) { SecretDiary.new }
  let(:password) { "345" }
    it "raises error" do
      expect { new_diary.add_entry }.to raise_error(RuntimeError)
    end
end

RSpec.describe "user cannot access get_entry feature if diary is locked" do
  subject(:new_diary) { SecretDiary.new }
  let(:password) { "345" }
    it "raises error" do
      expect { new_diary.get_entry }.to raise_error(RuntimeError)
    end
end

