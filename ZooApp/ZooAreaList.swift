//
//  ZooAreaListView.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/11.
//

import SwiftUI

struct ZooAreaList: View {
    let zooAreas: [ZooArea] = [
        // 1. 昆蟲館
        ZooArea(
            name: "昆蟲館",
            category: "室內展示館",
            animals: [
                Animal(
                    name: "長角大膽象鼻蟲",
                    englishName: "Weevil",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "雖然目前的評估為「無危 (LC)」，但在許多微棲地中仍扮演重要的分解者與食物網基礎角色。",
                    status: "開放中",
                    funFact: "翅膀上擁有極為絢麗的光澤。",
                    factIntro: "其幾丁質外骨骼在光線照射下會折射出耀眼的光澤，是自然界中極為特別的構造色彩示範！",
                    imageName1: "weevil1",
                    imageName2: "weevil2",
                    areaName: "昆蟲館",
                    areaIntro: "昆蟲館專為微型節肢動物打造適宜的溫濕度環境，提供近距離觀察昆蟲生活史與行為的精細展示空間。"
                ),
                Animal(
                    name: "津田氏大頭竹節蟲",
                    englishName: "Stick Insect",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "名列「瀕危 (EN)」物種，僅分布於台灣特定海岸及離島林區，棲地受人為開發威脅極大。",
                    status: "開放中",
                    funFact: "防禦時會噴出薄荷味的防衛液。",
                    factIntro: "當遇到天敵威脅時，牠會從胸部前氣門噴射出濃烈薄荷味的防衛液來擊退敵人，具有特殊的防禦化學機制！",
                    imageName1: "stick1",
                    imageName2: "stick2",
                    areaName: "昆蟲館",
                    areaIntro: "昆蟲館模擬台灣海岸林與林下層環境，為珍貴的特有種竹節蟲提供安全的域外保育展示區。"
                )
            ]
        ),
        // 2. 企鵝館
        ZooArea(
            name: "企鵝館",
            category: "室內展示館",
            animals: [
                Animal(
                    name: "國王企鵝",
                    englishName: "King Penguin",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "保育等級為「無危 (LC)」，但全球暖化對南太平洋島嶼棲地的威脅仍是未來的保育重點。",
                    status: "開放中",
                    funFact: "孵蛋時會放在腳掌上保暖。",
                    factIntro: "國王企鵝不築巢，孵蛋時會將單顆蛋小心翼翼地放在雙腳掌上，並用下腹部的育兒褶包覆保暖！",
                    imageName1: "k_penguin1",
                    imageName2: "k_penguin2",
                    areaName: "企鵝館",
                    areaIntro: "企鵝館維持恆溫低溫環境，並配備大型水下觀察窗，呈現極地鳥類悠游與岸上活動的真實姿態。"
                ),
                Animal(
                    name: "黑腳企鵝",
                    englishName: "African Penguin",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "受過度捕撈及海洋油污影響，數量急劇下降，被列為「瀕危 (EN)」物種。",
                    status: "開放中",
                    funFact: "生活在非洲西南海岸。",
                    factIntro: "牠們是唯一生活在非洲的企鵝，眼睛上方有鮮豔的粉紅色腺體，能幫助在炎熱的非洲氣候中調節體溫！",
                    imageName1: "a_penguin1",
                    imageName2: "a_penguin2",
                    areaName: "企鵝館",
                    areaIntro: "展區模擬非洲西南溫暖海岸線，提供戶外與水下多角度的觀察視野。"
                )
            ]
        ),
        // 3. 無尾熊館
        ZooArea(
            name: "無尾熊館",
            category: "室內展示館",
            animals: [
                Animal(
                    name: "澳洲無尾熊",
                    englishName: "Koala",
                    conservationStatus: "易危 (VU)",
                    conservationIntro: "目前保育等級為「易危 (VU)」，棲地喪失與澳洲森林大火對其野外族群帶來重大衝擊。",
                    status: "開放中",
                    funFact: "一天要睡 18 到 20 個小時。",
                    factIntro: "因為尤加利葉（桉樹葉）營養成分與能量極低，無尾熊需要透過長時間的睡眠來消化葉子並節約體能！",
                    imageName1: "koala1",
                    imageName2: "koala2",
                    areaName: "無尾熊館",
                    areaIntro: "無尾熊館設有採光良好、通風佳的室內與戶外桉樹棲架，營造極具安全感的休養環境。"
                ),
                Animal(
                    name: "北方無尾熊",
                    englishName: "Queensland Koala",
                    conservationStatus: "易危 (VU)",
                    conservationIntro: "分類評估為「易危 (VU)」，保育團隊透過基因檢測與域外繁殖持續推動族群維護計畫。",
                    status: "開放中",
                    funFact: "指紋與人類非常相似。",
                    factIntro: "無尾熊爪子上的皮膚紋路（指紋）與人類極度相似，在顯微鏡下甚至連犯罪學專家都難以分辨！",
                    imageName1: "koala3",
                    imageName2: "koala4",
                    areaName: "無尾熊館",
                    areaIntro: "館內專為樹棲性有袋類動物規劃，提供多種尤加利樹枝供其挑選食餌與休息。"
                )
            ]
        ),
        // 4. 兩棲爬蟲動物館
        ZooArea(
            name: "兩棲爬蟲動物館",
            category: "室內展示館",
            animals: [
                Animal(
                    name: "亞達伯拉象龜",
                    englishName: "Giant Tortoise",
                    conservationStatus: "易危 (VU)",
                    conservationIntro: "被列為「易危 (VU)」等級，世界各地的動物園皆積極建立穩定的人工繁殖族群。",
                    status: "開放中",
                    funFact: "壽命可超過 150 歲！",
                    factIntro: "牠們是世界上體型第二大的陸龜，新陳代謝極慢，記錄中最長壽的個體壽命甚至超過了 250 歲！",
                    imageName1: "tortoise1",
                    imageName2: "tortoise2",
                    areaName: "兩棲爬蟲動物館",
                    areaIntro: "兩棲爬蟲館設有溫熱帶日光照射區與寬敞沙地，提供長壽巨龜舒展爬行的棲地空間。"
                ),
                Animal(
                    name: "翡翠樹蛙",
                    englishName: "Emerald Tree Frog",
                    conservationStatus: "近危 (NT)",
                    conservationIntro: "屬於「近危 (NT)」的台灣特有種，山坡地開發導致其繁殖水域逐漸減少。",
                    status: "開放中",
                    funFact: "眼睛周圍有漂亮的金色眼線。",
                    factIntro: "鮮豔翠綠的體色能完美隱蔽於樹葉間，而眼睛虹膜上的金黃色條紋是辨識牠們最精緻的特徵！",
                    imageName1: "frog1",
                    imageName2: "frog2",
                    areaName: "兩棲爬蟲動物館",
                    areaIntro: "展示區重現台灣北部低海拔山區的潮濕溪流與植物覆蓋環境。"
                )
            ]
        ),
        // 5. 大貓熊館
        ZooArea(
            name: "大貓熊館",
            category: "室內展示館",
            animals: [
                Animal(
                    name: "大貓熊",
                    englishName: "Giant Panda",
                    conservationStatus: "易危 (VU)",
                    conservationIntro: "經多年努力，保育等級已從「瀕危」降為「易危 (VU)」，但依然仰賴嚴格的棲地保護。",
                    status: "開放中",
                    funFact: "一天要花 10-16 小時吃竹子！",
                    factIntro: "大貓熊的消化系統依然偏向肉食動物，因此牠們每天需要花費超過一半的時間大口啃食大量竹子！",
                    imageName1: "panda1",
                    imageName2: "panda2",
                    areaName: "大貓熊館",
                    areaIntro: "新光特展館（大貓熊館）擁有冷氣空調設施、戶外綠意庭園與豐富化棲架，讓大貓熊安心攀爬與覓食。"
                ),
                Animal(
                    name: "小貓熊",
                    englishName: "Red Panda",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "名列「瀕危 (EN)」物種，野外族群受棲地破碎化及盜獵威脅十分嚴峻。",
                    status: "開放中",
                    funFact: "會用毛茸茸的大尾巴當作棉被。",
                    factIntro: "小貓熊有著一根約與身體同長的蓬鬆大尾巴，在寒冷的天氣裡會蜷縮身體，把尾巴當作保暖毛毯！",
                    imageName1: "redpanda1",
                    imageName2: "redpanda2",
                    areaName: "大貓熊館",
                    areaIntro: "展區提供高低錯落的樹枝與庇護巢穴，完全貼合小貓熊樹棲、膽小的生活習性。"
                )
            ]
        ),
        // 6. 穿山甲館
        ZooArea(
            name: "穿山甲館",
            category: "室內/室外複合館",
            animals: [
                Animal(
                    name: "彩虹巨嘴鳥",
                    englishName: "Keel-billed Toucan",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "保育評估為「無危 (LC)」，是雨林生態中極為重要的種子傳播者。",
                    status: "開放中",
                    funFact: "巨大輕巧的喙可以用來調節體溫。",
                    factIntro: "看似沉重的彩色大鳥喙內部其實佈滿蜂窩狀的海綿骨質結構，既輕巧又能充當散熱器官！",
                    imageName1: "toucan1",
                    imageName2: "toucan2",
                    areaName: "穿山甲館",
                    areaIntro: "穿山甲館以穿山甲外型設計，室內打造高聳的熱帶雨林沉浸式自由飛翔空間。"
                ),
                Animal(
                    name: "二趾樹懶",
                    englishName: "Two-toed Sloth",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，但在野生環境中依然需要防範熱帶雨林砍伐問題。",
                    status: "開放中",
                    funFact: "移動速度極慢，身上會長微細藻類。",
                    factIntro: "樹懶移動極度緩慢，毛髮上的微小溝槽甚至會滋生微細藻類，成為野外絕佳的綠色保護色保護衣！",
                    imageName1: "sloth1",
                    imageName2: "sloth2",
                    areaName: "穿山甲館",
                    areaIntro: "開放式的步道設計讓遊客得以在近距離的樹冠層中，觀察樹懶吊掛於樹枝上的緩慢生活型態。"
                )
            ]
        ),
        // 7. 臺灣動物區
        ZooArea(
            name: "臺灣動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "石虎",
                    englishName: "Leopard Cat",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "評估為「瀕危 (EN)」，在台灣面臨嚴重的路殺、路徑破碎化與農藥毒害威脅。",
                    status: "開放中",
                    funFact: "台灣唯一的原生貓科動物。",
                    factIntro: "石虎耳後有顯著的黑底白斑，額頭有兩條白色條紋，是台灣目前唯一存活的原生野生貓科動物！",
                    imageName1: "leopard_cat1",
                    imageName2: "leopard_cat2",
                    areaName: "臺灣動物區",
                    areaIntro: "本區呈現台灣低海拔丘陵與森林生態，模擬淺山棲地，宣導人陸共存與保育理念。"
                ),
                Animal(
                    name: "台灣黑熊",
                    englishName: "Formosan Black Bear",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "台灣特有亞種，屬於「瀕危 (EN)」保育類動物，野外數量十分稀少。",
                    status: "開放中",
                    funFact: "胸前有 V 字型的白色斑紋。",
                    factIntro: "台灣黑熊是亞洲黑熊的特有亞種，胸前獨一無二的白色 V 字斑紋是牠們最具代表性的特徵！",
                    imageName1: "bear1",
                    imageName2: "bear2",
                    areaName: "臺灣動物區",
                    areaIntro: "寬廣的戶外山林棲地，設有登高樹幹與水池，展現台灣最大型原生地棲肉食動物的威嚴。"
                )
            ]
        ),
        // 8. 兒童動物區
        ZooArea(
            name: "兒童動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "羊駝",
                    englishName: "Alpaca",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，主要為安地斯山脈原住民馴養多年的家畜動物。",
                    status: "開放中",
                    funFact: "不開心時會吐出胃液防衛。",
                    factIntro: "當羊駝感到受到威脅或情緒不佳時，會從胃裡吐出帶有消化物與臭味的胃液來警告威脅對象！",
                    imageName1: "alpaca1",
                    imageName2: "alpaca2",
                    areaName: "兒童動物區",
                    areaIntro: "兒童動物區強調環境教育與親近體驗，提供平坦開放的草地活動環境。"
                ),
                Animal(
                    name: "狐獴",
                    englishName: "Meerkat",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，在南非乾旱草原擁有極強的族群適應力。",
                    status: "開放中",
                    funFact: "眼眶周圍有黑色區塊防陽光。",
                    factIntro: "眼睛周圍的黑色斑塊如同自備太陽眼鏡，能吸收強烈的沙漠陽光，讓牠們直視天空直擊天敵威脅！",
                    imageName1: "meerkat1",
                    imageName2: "meerkat2",
                    areaName: "兒童動物區",
                    areaIntro: "設有沙地地形與地道結構，展現群居動物警衛站立與挖掘洞穴的豐富自然行為。"
                )
            ]
        ),
        // 9. 熱帶雨林區
        ZooArea(
            name: "熱帶雨林區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "馬來貘",
                    englishName: "Malayan Tapir",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "列為「瀕危 (EN)」等級，野生族群因東南亞雨林開墾與棕櫚油農場擴張而急劇減少。",
                    status: "開放中",
                    funFact: "幼崽身上有黑瓜子般的白色斑紋。",
                    factIntro: "成年馬來貘全身呈現黑白雙色，但剛出生的小馬來貘全身布滿花斑與條紋，如同花西瓜般具備保護色！",
                    imageName1: "tapir1",
                    imageName2: "tapir2",
                    areaName: "熱帶雨林區",
                    areaIntro: "雨林區擁有茂密的植被與水池設施，提供喜愛涉水與隱蔽棲息的東南亞雨林物種居住。"
                ),
                Animal(
                    name: "花豹",
                    englishName: "Leopard",
                    conservationStatus: "易危 (VU)",
                    conservationIntro: "評估為「易危 (VU)」，棲地喪失與人獸衝突為其面臨的主要生存挑戰。",
                    status: "開放中",
                    funFact: "擅長爬樹，常把獵物拖上樹。",
                    factIntro: "花豹的攀爬能力極強，為了防止獵物被鬣狗或獅子搶走，牠們習慣將體重數倍的獵物一口叼上高樹！",
                    imageName1: "leopard1",
                    imageName2: "leopard2",
                    areaName: "熱帶雨林區",
                    areaIntro: "設有高空樹幹與岩石棲架，完全展現大型貓科動物樹棲敏捷與高處觀察的本能。"
                )
            ]
        ),
        // 10. 非洲動物區
        ZooArea(
            name: "非洲動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "非洲象",
                    englishName: "African Elephant",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "評估為「瀕危 (EN)」，嚴重受非法象牙盜獵及人類棲地擴張擠壓威脅。",
                    status: "開放中",
                    funFact: "象鼻擁有超過 4 萬塊肌肉。",
                    factIntro: "象鼻是由上唇與鼻子演化而成的靈巧器官，完全沒有骨頭，卻擁有數萬塊肌肉，既能拔起大樹又能拾起微小針頭！",
                    imageName1: "elephant1",
                    imageName2: "elephant2",
                    areaName: "非洲動物區",
                    areaIntro: "廣闊的泥沙地面與大水池，重現東非稀樹草原豪邁浩瀚的動物棲地景觀。"
                ),
                Animal(
                    name: "網紋長頸鹿",
                    englishName: "Reticulated Giraffe",
                    conservationStatus: "瀕危 (EN)",
                    conservationIntro: "目前列為「瀕危 (EN)」，野生族群在近數十年內減少了近一半的數量。",
                    status: "開放中",
                    funFact: "舌頭長達 45-50 公分且呈藍黑色。",
                    factIntro: "長頸鹿的舌頭長達半公尺，呈藍黑色能防止在長時間伸出夾取金合歡樹葉時被烈日曬傷！",
                    imageName1: "giraffe1",
                    imageName2: "giraffe2",
                    areaName: "非洲動物區",
                    areaIntro: "高聳的餵食架與寬廣綠地，讓遊客能在安全距離仰望世界上最高的陸生動物。"
                )
            ]
        ),
        // 11. 澳洲動物區
        ZooArea(
            name: "澳洲動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "鴯鶓",
                    englishName: "Emu",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，在澳洲本土廣泛分布且族群相當穩定。",
                    status: "開放中",
                    funFact: "澳洲體型最大的本土鳥類。",
                    factIntro: "鴯鶓是僅次於駝鳥的世界上第二大鳥類，雖然不會飛，但雙腿肌肉發達，奔跑時速可達每小時 50 公里！",
                    imageName1: "emu1",
                    imageName2: "emu2",
                    areaName: "澳洲動物區",
                    areaIntro: "模擬澳洲荒漠與疏林景觀，展示澳洲大陸獨特的走禽與有袋類動物生態。"
                ),
                Animal(
                    name: "大灰袋鼠",
                    englishName: "Grey Kangaroo",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，為澳洲最具代表性的原生動物之一。",
                    status: "開放中",
                    funFact: "一跳可達 8 公尺長。",
                    factIntro: "袋鼠強有力的後肢與大尾巴如同彈簧，高速跳躍時單次跳躍距離可長達 8 公尺，非常節省體能！",
                    imageName1: "kangaroo1",
                    imageName2: "kangaroo2",
                    areaName: "澳洲動物區",
                    areaIntro: "寬廣的草坪區域，提供大灰袋鼠自由跳躍、曬太陽與社會性互動的場所。"
                )
            ]
        ),
        // 12. 沙漠動物區
        ZooArea(
            name: "沙漠動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "雙峰駱駝",
                    englishName: "Bactrian Camel",
                    conservationStatus: "極危 (CR)",
                    conservationIntro: "野外雙峰駱駝已被國際列為「極危 (CR)」物種，野外數量甚至少於大貓熊！",
                    status: "開放中",
                    funFact: "駝峰裝的是儲存能量的脂肪。",
                    factIntro: "很多人以為駝峰裡面裝的是水，但其實裡面全是濃縮脂肪，能在缺乏食物時轉化為能量與水分！",
                    imageName1: "camel1",
                    imageName2: "camel2",
                    areaName: "沙漠動物區",
                    areaIntro: "充滿黃沙地形與岩石裝飾，模擬中亞極端乾旱與嚴寒環境。"
                ),
                Animal(
                    name: "弓角羚羊",
                    englishName: "Addax",
                    conservationStatus: "極危 (CR)",
                    conservationIntro: "野外族群瀕臨滅絕，被評估為「極危 (CR)」，極度依賴動物園的域外復育。",
                    status: "開放中",
                    funFact: "一生幾乎不需要直接喝水。",
                    factIntro: "牠們是非常高度適應沙漠的物種，能直接從所吃的沙漠植物中汲取所需水分，一生極少需要直接喝水！",
                    imageName1: "addax1",
                    imageName2: "addax2",
                    areaName: "沙漠動物區",
                    areaIntro: "沙質地面展示區，專為適應極端乾旱棲地的羚羊種類量身打造。"
                )
            ]
        ),
        // 13. 溫帶動物區
        ZooArea(
            name: "溫帶動物區",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "美洲獅",
                    englishName: "Puma",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "整體評估為「無危 (LC)」，但在北美部分區域族群受棲地破碎威脅。",
                    status: "開放中",
                    funFact: "貓亞科中體型最大的動物。",
                    factIntro: "美洲獅雖然體型巨大媲美獅子與老虎，但在生物學分類上屬於貓亞科（會發出咕嚕聲而非吼叫聲）中體型最大者！",
                    imageName1: "puma1",
                    imageName2: "puma2",
                    areaName: "溫帶動物區",
                    areaIntro: "設有高山岩壁與密林地形，重現美洲大陸適應多樣溫帶環境的大型猛獸生活場域。"
                ),
                Animal(
                    name: "河狸",
                    englishName: "Beaver",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，在北美與歐洲多地經過保育復育後族群已大幅回升。",
                    status: "開放中",
                    funFact: "會用樹枝築壩建造家園。",
                    factIntro: "河狸擁有不斷長長的堅硬橘色門牙，會咬斷樹枝在水流中築起堅固的水壩，改變周遭水域生態！",
                    imageName1: "beaver1",
                    imageName2: "beaver2",
                    areaName: "溫帶動物區",
                    areaIntro: "配備流動水池與大量木材，讓「自然界工程師」發揮建築本能。"
                )
            ]
        ),
        // 14. 鳥園
        ZooArea(
            name: "鳥園",
            category: "戶外展示區",
            animals: [
                Animal(
                    name: "大紅鶴",
                    englishName: "Greater Flamingo",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，在全球濕地與鹽湖擁有相當龐大的族群規模。",
                    status: "開放中",
                    funFact: "粉紅色來自食用的藻類色素。",
                    factIntro: "紅鶴剛出生時羽毛其實是灰白色的，牠們招牌的粉紅色羽毛來自於日常採食的藍綠藻與蝦類中的蝦紅素！",
                    imageName1: "flamingo1",
                    imageName2: "flamingo2",
                    areaName: "鳥園",
                    areaIntro: "水質良好的淺水池區域，讓大型水鳥展現群聚覓食與優態單腳站立的景緻。"
                ),
                Animal(
                    name: "美洲木鸛",
                    englishName: "Wood Stork",
                    conservationStatus: "無危 (LC)",
                    conservationIntro: "評估為「無危 (LC)」，主要棲息於美洲廣袤的沼澤與濕地環境。",
                    status: "開放中",
                    funFact: "喙碰到獵物只需 25 毫秒即合上。",
                    factIntro: "牠們在渾濁水中覓食時不靠視覺，只要獵物碰到敞開的喙，會在驚人的 25 毫秒內迅速合上捕獲獵物！",
                    imageName1: "stork1",
                    imageName2: "stork2",
                    areaName: "鳥園",
                    areaIntro: "大型鳥園天網空間，提供各種水鳥自由飛翔與棲息的高聳樹冠。"
                )
            ]
        )
    ]

    var body: some View {
            NavigationStack {
                ZStack {
                    LinearGradient(
                        colors: [
                            Color(red: 238/255, green: 245/255, blue: 233/255),
                            Color(red: 247/255, green: 249/255, blue: 244/255)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .ignoresSafeArea()

                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(zooAreas) { area in
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    // 1. 館區標題列
                                    HStack(spacing: 8) {
                                        Text(area.name)
                                            .font(.title3)
                                            .bold()
                                            .foregroundColor(.primary)

                                        Text(area.category)
                                            .font(.caption2)
                                            .bold()
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 4)
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                    }
                                    .padding(.horizontal, 4)
                                    .padding(.top, 4)

                                    // 2. 動物列表卡片內部
                                    VStack(spacing: 10) {
                                        ForEach(area.animals) { animal in
                                            NavigationLink {
                                                AnimalDetail(animal: animal)
                                            } label: {
                                                HStack(spacing: 14) {
                                                    Image(animal.imageName1)
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(width: 65, height: 65)
                                                        .clipShape(RoundedRectangle(cornerRadius: 14))

                                                    VStack(alignment: .leading, spacing: 4) {
                                                        Text(animal.name)
                                                            .font(.headline)
                                                            .bold()
                                                            .foregroundColor(.primary)

                                                        Text(animal.englishName)
                                                            .font(.caption)
                                                            .foregroundColor(.secondary)

                                                        // 保育等級微型標籤
                                                        Text(animal.conservationStatus)
                                                            .font(.system(size: 10, weight: .semibold))
                                                            .foregroundColor(.orange)
                                                    }

                                                    Spacer()

                                                    HStack(spacing: 4) {
                                                        Text(animal.status)
                                                            .font(.caption)
                                                            .bold()
                                                            .foregroundColor(Color(red: 50/255, green: 130/255, blue: 60/255))

                                                        Image(systemName: "chevron.right")
                                                            .font(.caption2)
                                                            .foregroundColor(.gray)
                                                    }
                                                    .padding(.horizontal, 10)
                                                    .padding(.vertical, 6)
                                                    .background(Color.green.opacity(0.12))
                                                    .clipShape(Capsule())
                                                }
                                                .padding(10)
                                                .background(Color.white)
                                                .cornerRadius(14)
                                                .shadow(color: Color.black.opacity(0.04), radius: 4, x: 0, y: 2)
                                            }
                                        }
                                    }
                                }
                                .padding(14)
                                .background(Color.white.opacity(0.6))
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white, lineWidth: 1.5)
                                )
                                .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
                            }
                        }
                        .padding()
                    }
                }
                .navigationTitle("尋找動物們")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }

    #Preview {
        ZooAreaList()
    }
