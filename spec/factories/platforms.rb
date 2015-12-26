FactoryGirl.define do
  factory :platform do
    title "ブレイクマスターゆうすけの休息"
    description "脳を壊すアプリ"
    url "http://bre-mas.com/"

    factory :platform_swordmaster do
      title "ソードマスターゆうすけの謎"
      description "シューティングゲー"
      url "https://itunes.apple.com/jp/app/sodomasutayuusukeno-mi/id1029281903?mt=8"
    end
  end
end
