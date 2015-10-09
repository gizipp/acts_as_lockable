require 'spec_helper'

describe "Default User" do
  it "should be return unlocked by default" do
    a = User.create(name: "Default User")
    expect(a.is_locked?).to eq(false)
  end
end

describe "Locked User" do
  it "should be return locked" do
    a = User.create(name: "Locked User")
    a.lock
    expect(a.reload.is_locked?).to eq(true)
  end
end

describe "Unlocked User" do
  it "should be return unlocked" do
    a = User.create(name: "Unlocked User")
    a.lock
    a.unlock
    expect(a.reload.is_locked?).to eq(false)
  end
end

describe "To Be Modified Locked User" do
  it "should be return unlocked" do
    a = User.create(name: "Locked User")
    a.lock
    a.reload
    a.name = "To Be Modified Locked User"
    expect(a.save).to eq(false)
  end
end

describe "Locked User ID" do
  it "should be same as locked id" do
    a = User.create(name: "Locked User")
    a.lock
    a.reload
    expect(a.locker.locked_id).to eq(a.id)
  end
end

describe "Locked User Model" do
  it "should be same as locked type" do
    a = User.create(name: "Locked User")
    a.lock
    a.reload
    expect(a.locker.locked_type).to eq("User")
  end
end

describe "Locked User Model" do
  it "should be same as locked type" do
    a = User.create(name: "Locked User")
    a.lock
    id = a.locker.id
    a.lock
    expect(id).to eq(a.locker.id)
  end
end

