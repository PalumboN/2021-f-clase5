module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Materia aprobada" $ do
    it "aprobo" $ do
      [8, 9, 10] `shouldSatisfy` aprobo
    it "no aprobo" $ do
      [1, 2, 3] `shouldNotSatisfy` aprobo
