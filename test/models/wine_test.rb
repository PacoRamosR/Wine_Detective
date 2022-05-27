require "test_helper"

class WineTest < ActiveSupport::TestCase
    def setup
        @wine = Wine.new(name: "Example Wine",
                        country: "Example country",
                        price: 100,
                        grape_variety: "Example variety",
                        explanation: "Example explanation",
                        pairing: "Example pairing",
                        smooth_tannic: 50,
                        dry_sweet: 50,
                        soft_acidic: 50,
                        rate:0,
                        light_bold: 50)
    end

      test "should be valid" do
        assert @wine.valid?
      end

      test "name should be present" do
        @wine.name = "     "
        assert_not @wine.valid?
      end

      test "country should be present" do
        @wine.country = "     "
        assert_not @wine.valid?
      end

      test "price should be present" do
        @wine.price = "     "
        assert_not @wine.valid?
      end

      test "grape_variety should be present" do
        @wine.grape_variety = "     "
        assert_not @wine.valid?
      end

      test "explanation should be present" do
        @wine.explanation = "     "
        assert_not @wine.valid?
      end

      test "pairing should be present" do
        @wine.pairing = "     "
        assert_not @wine.valid?
      end

      test "smooth_tannic should be present" do
        @wine.smooth_tannic = "     "
        assert_not @wine.valid?
      end

      test "dry_sweet should be present" do
        @wine.dry_sweet = "     "
        assert_not @wine.valid?
      end

      test "soft_acidic should be present" do
        @wine.soft_acidic = "     "
        assert_not @wine.valid?
      end

      test "light_bold should be present" do
        @wine.light_bold = "     "
        assert_not @wine.valid?
      end
end
