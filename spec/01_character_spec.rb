require "spec_helper"

describe Character do
  let(:genie) { Character.new('Genie', 'genie', 'Robin Williams', 'hero') }
  let(:aladdin) { Character.new('Aladdin', 'human', 'Scott Weinger', 'hero') }
  let(:jafar) { Character.new('Jafar', 'human', 'Jonathan Freeman', 'villain') }

  describe ".new" do
    it "takes a name, species, actor, and type as arguments" do
      expect(genie).to be_a(Character)
    end
  end

  describe "#summary" do
    it "returns a string of the character name and species" do
      expect(aladdin.summary).to eq("Aladdin (human)")
    end
  end

  describe "#actor" do
    it "has a reader for actor" do
      expect(genie.actor).to eq("Robin Williams")
    end

    it "does not have a writer for actor" do
        expect { genie.actor = "Brad Pitt" }.to raise_error(NoMethodError)
    end
  end

  describe "#hero_or_villain" do
    it "returns 'hero' for a hero" do
      expect(aladdin.hero_or_villain).to eq("hero")
    end

    it "returns 'villain' for a villain" do
      expect(jafar.hero_or_villain).to eq("villain")
    end
  end
end
