require "spec_helper"

describe Cart do
  let(:tdd_obj) { Cart.new }
  subject { tdd_obj }


  describe :add do
    before :each do
      subject.add("item")
    end

    it { expect(subject.size).to eql 1 }

  end

  describe :remove do
    before :each do
      subject.add("item")
      subject.remove("item")
    end

    it { expect(subject.size).to eql 0 }
  end

  describe :total_cost do

    before :each do
      subject.add(Item.new(23))
      subject.add(Item.new(17))
      subject.add(Item.new(17))
    end

    it { expect(subject.total_cost).to eql 57 }
  end


end
