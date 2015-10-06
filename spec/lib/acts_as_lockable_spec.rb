require 'spec_helper'

describe "Default Locker" do
  it "should be return unlocked by default" do
    a = Locker.create(name: "Default Locker")
    expect(a.is_locked?).to eq(false)
  end
end

describe "Locked Locker" do
  it "should be return locked" do
    a = Locker.create(name: "Locked Locker")
    a.lock
    expect(a.reload.is_locked?).to eq(true)
  end
end

describe "Unlocked Locker" do
  it "should be return unlocked" do
    a = Locker.create(name: "Unlocked Locker", is_locked: true)
    a.unlock
    expect(a.reload.is_locked?).to eq(false)
  end
end

