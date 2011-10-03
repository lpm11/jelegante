#!/bin/env ruby
#-*- coding: utf-8 -*-

class Jelegante
  KANJI_JYOUYOU   = %w[
    亜 哀 愛 悪 握 圧 扱 安 暗 案 以 位 依 偉 囲 委 威 尉 意 慰 易 為 異 移 維
    緯 胃 衣 違 遺 医 井 域 育 一 壱 逸 稲 芋 印 員 因 姻 引 飲 院 陰 隠 韻 右
    宇 羽 雨 渦 浦 運 雲 営 影 映 栄 永 泳 英 衛 詠 鋭 液 疫 益 駅 悦 謁 越 閲
    円 園 宴 延 援 沿 演 炎 煙 猿 縁 遠 鉛 塩 汚 凹 央 奥 往 応 押 横 欧 殴 王
    翁 黄 沖 億 屋 憶 乙 卸 恩 温 穏 音 下 化 仮 何 価 佳 加 可 夏 嫁 家 寡 科
    暇 果 架 歌 河 火 禍 稼 箇 花 荷 華 菓 課 貨 過 蚊 我 画 芽 賀 雅 餓 介 会
    解 回 塊 壊 快 怪 悔 懐 戒 拐 改 械 海 灰 界 皆 絵 開 階 貝 劾 外 害 慨 概
    涯 街 該 垣 嚇 各 拡 格 核 殻 獲 確 穫 覚 角 較 郭 閣 隔 革 学 岳 楽 額 掛
    潟 割 喝 括 活 渇 滑 褐 轄 且 株 刈 乾 冠 寒 刊 勘 勧 巻 喚 堪 完 官 寛 干
    幹 患 感 慣 憾 換 敢 棺 款 歓 汗 漢 環 甘 監 看 管 簡 緩 缶 肝 艦 観 貫 還
    鑑 間 閑 関 陥 館 丸 含 岸 眼 岩 頑 顔 願 企 危 喜 器 基 奇 寄 岐 希 幾 忌
    揮 机 旗 既 期 棋 棄 機 帰 気 汽 祈 季 紀 規 記 貴 起 軌 輝 飢 騎 鬼 偽 儀
    宜 戯 技 擬 欺 犠 疑 義 議 菊 吉 喫 詰 却 客 脚 虐 逆 丘 久 休 及 吸 宮 弓
    急 救 朽 求 泣 球 究 窮 級 糾 給 旧 牛 去 居 巨 拒 拠 挙 虚 許 距 漁 魚 享
    京 供 競 共 凶 協 叫 境 峡 強 恐 恭 挟 教 橋 況 狂 狭 矯 胸 脅 興 郷 鏡 響
    驚 仰 凝 暁 業 局 曲 極 玉 勤 均 斤 琴 禁 筋 緊 菌 襟 謹 近 金 吟 銀 九 句
    区 苦 駆 具 愚 虞 空 偶 遇 隅 屈 掘 靴 繰 桑 勲 君 薫 訓 群 軍 郡 係 傾 刑
    兄 啓 型 契 形 径 恵 慶 憩 掲 携 敬 景 渓 系 経 継 茎 蛍 計 警 軽 鶏 芸 迎
    鯨 劇 撃 激 傑 欠 決 潔 穴 結 血 月 件 倹 健 兼 券 剣 圏 堅 嫌 建 憲 懸 検
    権 犬 献 研 絹 県 肩 見 謙 賢 軒 遣 険 顕 験 元 原 厳 幻 弦 減 源 玄 現 言
    限 個 古 呼 固 孤 己 庫 弧 戸 故 枯 湖 誇 雇 顧 鼓 五 互 午 呉 娯 後 御 悟
    碁 語 誤 護 交 侯 候 光 公 功 効 厚 口 向 后 坑 好 孔 孝 工 巧 幸 広 康 恒
    慌 抗 拘 控 攻 更 校 構 江 洪 港 溝 甲 皇 硬 稿 紅 絞 綱 耕 考 肯 航 荒 行
    衡 講 貢 購 郊 酵 鉱 鋼 降 項 香 高 剛 号 合 拷 豪 克 刻 告 国 穀 酷 黒 獄
    腰 骨 込 今 困 墾 婚 恨 懇 昆 根 混 紺 魂 佐 唆 左 差 査 砂 詐 鎖 座 債 催
    再 最 妻 宰 彩 才 採 栽 歳 済 災 砕 祭 斎 細 菜 裁 載 際 剤 在 材 罪 財 坂
    咲 崎 作 削 搾 昨 策 索 錯 桜 冊 刷 察 撮 擦 札 殺 雑 皿 三 傘 参 山 惨 散
    桟 産 算 蚕 賛 酸 暫 残 仕 伺 使 刺 司 史 嗣 四 士 始 姉 姿 子 市 師 志 思
    指 支 施 旨 枝 止 死 氏 祉 私 糸 紙 紫 肢 脂 至 視 詞 詩 試 誌 諮 資 賜 雌
    飼 歯 事 似 侍 児 字 寺 慈 持 時 次 滋 治 璽 磁 示 耳 自 辞 式 識 軸 七 執
    失 室 湿 漆 疾 質 実 芝 舎 写 射 捨 赦 斜 煮 社 者 謝 車 遮 蛇 邪 借 勺 尺
    爵 酌 釈 若 寂 弱 主 取 守 手 朱 殊 狩 珠 種 趣 酒 首 儒 受 寿 授 樹 需 囚
    収 周 宗 就 州 修 愁 拾 秀 秋 終 習 臭 舟 衆 襲 週 酬 集 醜 住 充 十 従 柔
    汁 渋 獣 縦 重 銃 叔 宿 淑 祝 縮 粛 塾 熟 出 術 述 俊 春 瞬 准 循 旬 殉 準
    潤 盾 純 巡 遵 順 処 初 所 暑 庶 緒 署 書 諸 助 叙 女 序 徐 除 傷 償 勝 匠
    升 召 商 唱 奨 宵 将 小 少 尚 床 彰 承 抄 招 掌 昇 昭 晶 松 沼 消 渉 焼 焦
    照 症 省 硝 礁 祥 称 章 笑 粧 紹 肖 衝 訟 証 詔 詳 象 賞 鐘 障 上 丈 乗 冗
    剰 城 場 壌 嬢 常 情 条 浄 状 畳 蒸 譲 醸 錠 嘱 飾 植 殖 織 職 色 触 食 辱
    伸 信 侵 唇 娠 寝 審 心 慎 振 新 森 浸 深 申 真 神 紳 臣 薪 親 診 身 辛 進
    針 震 人 仁 刃 尋 甚 尽 迅 陣 酢 図 吹 垂 帥 推 水 炊 睡 粋 衰 遂 酔 錘 随
    髄 崇 数 枢 据 杉 澄 寸 世 瀬 畝 是 制 勢 姓 征 性 成 政 整 星 晴 正 清 牲
    生 盛 精 聖 声 製 西 誠 誓 請 逝 青 静 斉 税 隻 席 惜 斥 昔 析 石 積 籍 績
    責 赤 跡 切 拙 接 摂 折 設 窃 節 説 雪 絶 舌 仙 先 千 占 宣 専 川 戦 扇 栓
    泉 浅 洗 染 潜 旋 線 繊 船 薦 践 選 遷 銭 銑 鮮 前 善 漸 然 全 禅 繕 塑 措
    疎 礎 祖 租 粗 素 組 訴 阻 僧 創 双 倉 喪 壮 奏 層 想 捜 掃 挿 操 早 曹 巣
    槽 燥 争 相 窓 総 草 荘 葬 藻 装 走 送 遭 霜 騒 像 増 憎 臓 蔵 贈 造 促 側
    則 即 息 束 測 足 速 俗 属 賊 族 続 卒 存 孫 尊 損 村 他 多 太 堕 妥 惰 打
    駄 体 対 耐 帯 待 怠 態 替 泰 滞 胎 袋 貸 退 逮 隊 代 台 大 第 題 滝 卓 宅
    択 拓 沢 濯 託 濁 諾 但 達 奪 脱 棚 谷 丹 単 嘆 担 探 淡 炭 短 端 胆 誕 鍛
    団 壇 弾 断 暖 段 男 談 値 知 地 恥 池 痴 稚 置 致 遅 築 畜 竹 蓄 逐 秩 窒
    茶 嫡 着 中 仲 宙 忠 抽 昼 柱 注 虫 衷 鋳 駐 著 貯 丁 兆 帳 庁 弔 張 彫 徴
    懲 挑 朝 潮 町 眺 聴 脹 腸 調 超 跳 長 頂 鳥 勅 直 朕 沈 珍 賃 鎮 陳 津 墜
    追 痛 通 塚 漬 坪 釣 亭 低 停 偵 貞 呈 堤 定 帝 底 庭 廷 弟 抵 提 程 締 艇
    訂 逓 邸 泥 摘 敵 滴 的 笛 適 哲 徹 撤 迭 鉄 典 天 展 店 添 転 点 伝 殿 田
    電 吐 塗 徒 斗 渡 登 途 都 努 度 土 奴 怒 倒 党 冬 凍 刀 唐 塔 島 悼 投 搭
    東 桃 棟 盗 湯 灯 当 痘 等 答 筒 糖 統 到 討 謄 豆 踏 逃 透 陶 頭 騰 闘 働
    動 同 堂 導 洞 童 胴 道 銅 峠 匿 得 徳 特 督 篤 毒 独 読 凸 突 届 屯 豚 曇
    鈍 内 縄 南 軟 難 二 尼 弐 肉 日 乳 入 如 尿 任 妊 忍 認 寧 猫 熱 年 念 燃
    粘 悩 濃 納 能 脳 農 把 覇 波 派 破 婆 馬 俳 廃 拝 排 敗 杯 背 肺 輩 配 倍
    培 媒 梅 買 売 賠 陪 伯 博 拍 泊 白 舶 薄 迫 漠 爆 縛 麦 箱 肌 畑 八 鉢 発
    髪 伐 罰 抜 閥 伴 判 半 反 帆 搬 板 版 犯 班 畔 繁 般 藩 販 範 煩 頒 飯 晩
    番 盤 蛮 卑 否 妃 彼 悲 扉 批 披 比 泌 疲 皮 碑 秘 罷 肥 被 費 避 非 飛 備
    尾 微 美 鼻 匹 必 筆 姫 百 俵 標 氷 漂 票 表 評 描 病 秒 苗 品 浜 貧 賓 頻
    敏 瓶 不 付 夫 婦 富 布 府 怖 扶 敷 普 浮 父 符 腐 膚 譜 負 賦 赴 附 侮 武
    舞 部 封 風 伏 副 復 幅 服 福 腹 複 覆 払 沸 仏 物 分 噴 墳 憤 奮 粉 紛 雰
    文 聞 丙 併 兵 塀 幣 平 弊 柄 並 閉 陛 米 壁 癖 別 偏 変 片 編 辺 返 遍 便
    勉 弁 保 舗 捕 歩 補 穂 募 墓 慕 暮 母 簿 倣 俸 包 報 奉 宝 峰 崩 抱 放 方
    法 泡 砲 縫 胞 芳 褒 訪 豊 邦 飽 乏 亡 傍 剖 坊 妨 帽 忘 忙 房 暴 望 某 棒
    冒 紡 肪 膨 謀 貿 防 北 僕 墨 撲 朴 牧 没 堀 奔 本 翻 凡 盆 摩 磨 魔 麻 埋
    妹 枚 毎 幕 膜 又 抹 末 繭 万 慢 満 漫 味 未 魅 岬 密 脈 妙 民 眠 務 夢 無
    矛 霧 婿 娘 名 命 明 盟 迷 銘 鳴 滅 免 綿 面 模 茂 妄 毛 猛 盲 網 耗 木 黙
    目 戻 問 紋 門 匁 夜 野 矢 厄 役 約 薬 訳 躍 柳 愉 油 癒 諭 輸 唯 優 勇 友
    幽 悠 憂 有 猶 由 裕 誘 遊 郵 雄 融 夕 予 余 与 誉 預 幼 容 庸 揚 揺 擁 曜
    様 洋 溶 用 窯 羊 葉 要 謡 踊 陽 養 抑 欲 浴 翌 翼 羅 裸 来 頼 雷 絡 落 酪
    乱 卵 欄 濫 覧 利 吏 履 理 痢 裏 里 離 陸 律 率 立 略 流 留 硫 粒 隆 竜 慮
    旅 虜 了 僚 両 寮 料 涼 猟 療 糧 良 量 陵 領 力 緑 倫 厘 林 臨 輪 隣 塁 涙
    累 類 令 例 冷 励 礼 鈴 隷 零 霊 麗 齢 暦 歴 列 劣 烈 裂 廉 恋 練 連 錬 炉
    路 露 労 廊 朗 楼 浪 漏 老 郎 六 録 論 和 話 賄 惑 枠 湾 腕
  ].sort();

  KANJI_JINMEI    = %w[
    丑 丞 串 乃 之 乎 也 云 亘 亙 些 亦 亥 亨 亮 仔 伊 伎 伍 伽 佃 佑 伶 侃 侑
    俄 俠 俣 俐 侶 倭 俺 俱 倦 倖 偲 僅 傭 儲 允 兎 兜 其 冥 冴 冶 凄 凌 凜 凛
    凧 凪 凰 凱 函 刹 劉 劫 勁 勃 勾 匂 勿 匡 廿 卜 卯 卿 厨 厩 叉 叡 叢 叶 只
    吾 吞 吻 呂 哉 哨 啄 唄 哩 喬 喧 喰 喋 嘩 嘉 嘗 噌 噂 圃 圭 坐 尭 堯 坦 埼
    埴 堆 堰 堺 堵 塙 塞 塡 壕 壬 夷 奄 奈 奎 套 妖 娃 姪 姥 娩 媛 嬉 孟 宏 宋
    宛 宕 宥 寅 寓 寵 尖 尤 屑 岡 峨 峻 崖 崚 嵐 嵯 嵩 嶺 巌 巖 已 巳 巴 巷 巽
    巾 帖 幌 幡 庄 庇 庚 庵 廟 廻 弘 弛 弥 彌 彗 彦 彪 彬 徠 忽 怜 恢 恰 恕 悌
    惟 惚 悉 惇 惹 惺 惣 慧 憧 憐 戊 或 戚 戟 戴 托 按 拶 拭 挨 拳 捉 挺 挽 掬
    捲 捷 捺 捻 捧 掠 揃 摑 摺 撒 撰 撞 播 撫 擢 孜 敦 斑 斐 斡 斧 斯 於 旦 旭
    旺 昂 昊 昏 昌 昧 昴 晏 晃 晄 晒 晋 晟 晦 晨 智 暉 暢 曖 曙 曝 曳 曽 曾 朋
    朔 杏 杖 杜 李 杭 杵 枕 杷 枇 柑 柴 柵 柿 柘 柊 栃 柏 柾 柚 桧 檜 栞 桔 桂
    桁 栖 桐 栗 梧 梗 梓 梢 梛 梯 桶 梶 椛 梨 梁 椅 棲 椎 椋 椀 楯 楚 楕 椿 楠
    楓 椰 楢 楊 榎 樺 榊 榛 槙 槇 槍 槌 樫 槻 樟 樋 橘 樽 橙 檎 檀 櫂 櫛 櫓 欣
    欽 歎 此 殆 毅 毘 毬 汀 汝 汐 汎 汲 沙 汰 沌 沓 沫 洸 洲 洵 洛 浩 浬 淵 淳
    渚 渚 淀 淋 渥 湘 湊 湛 湧 溢 滉 溜 漱 漕 漣 澪 濡 瀕 灘 灸 灼 烏 焰 焚 煌
    煎 煤 煉 熙 熊 燕 燎 燦 燭 燿 爪 爽 爾 牒 牙 牟 牡 牽 犀 狼 猪 猪 獅 玖 玩
    珂 珈 珊 珀 玲 琢 琢 琉 瑛 琥 琶 琵 琳 瑚 瑞 瑶 瑳 瑠 璃 瓜 瓢 瓦 甥 甫 畏
    畠 畢 畿 疋 疏 瘦 皐 皓 眉 眸 睦 瞳 瞥 瞭 矩 砦 砥 砧 硯 碓 碗 碩 碧 磐 磯
    祇 祢 禰 祐 祐 祷 禱 禄 祿 禎 禎 禽 禾 秦 秤 稀 稔 稟 稜 稽 穣 穰 穹 穿 窄
    窟 窪 窺 竣 竪 竺 竿 笈 笹 笙 笠 筈 筑 箕 箔 箸 篇 篠 簞 簾 籾 粥 粟 糊 紘
    紗 紐 絃 紬 絆 絢 綺 綜 綴 緋 綾 綸 縞 徽 繫 繡 纂 纏 羚 羨 翔 翠 耀 而 耶
    耽 聡 肇 肋 肘 肴 胤 胡 脇 脩 腔 腎 膏 膳 臆 臥 臼 舜 舷 舵 艶 芥 芹 芯 芭
    芙 芦 苑 茄 苔 苺 茅 茉 茨 茸 茜 莞 荻 莫 莉 菅 菫 菖 萄 菩 萌 萠 萊 菱 葦
    葛 葵 萱 葺 萩 董 葡 蓋 蓑 蒔 蒐 蒼 蒲 蒙 蓉 蓮 蔭 蔣 蔦 蓬 蔓 蕎 蕨 蕉 蕃
    蕪 蔽 薙 蕾 蕗 藁 薩 藤 藍 蘇 蘭 虎 虹 蜂 蜜 蝦 蝶 螺 蟬 蟹 蠟 衿 袖 袈 袴
    裡 裾 裟 裳 襖 訊 訣 註 詣 詢 詮 詫 誼 諏 諄 誰 諒 謂 諺 諦 謎 讃 豹 貌 貰
    貼 賑 赳 跨 蹄 蹟 蹴 輔 輯 輿 轟 辰 辻 迂 迄 辿 迪 迦 這 逞 逗 逢 遥 遙 遁
    遡 遜 遼 邑 那 祁 郁 鄭 酉 酎 醇 醐 醒 醍 醬 采 釉 釘 釜 釧 鋒 鋸 錦 錐 錆
    錫 鍋 鍵 鍬 鎧 鎌 閃 閏 閤 闇 阜 阪 阿 陀 隈 隙 隼 雀 雁 雛 雫 霞 靖 鞄 鞍
    鞘 鞠 鞭 韓 頁 頃 須 頌 頓 頗 頰 顚 颯 餅 饗 馨 馴 馳 駕 駒 駿 驍 魁 魯 鮎
    鯉 鯛 鰯 鱒 鱗 鳩 鳶 鳳 鴨 鴻 鵜 鵬 鶴 鷗 鷲 鷺 鷹 鹿 麒 麓 麟 麿 黎 黛 鼎
    亀 亞 惡 爲 逸 榮 衞 謁 圓 緣 薗 應 櫻 奧 橫 溫 價 禍 悔 海 壞 懷 樂 渴 卷
    陷 寬 漢 氣 祈 器 僞 戲 虛 峽 狹 響 曉 勤 謹 駈 勳 薰 惠 揭 鷄 藝 擊 縣 儉
    劍 險 圈 檢 顯 驗 嚴 廣 恆 黃 國 黑 穀 碎 雜 祉 視 兒 濕 實 社 者 煮 壽 收
    臭 從 澁 獸 縱 祝 暑 署 緖 諸 敍 將 祥 涉 燒 奬 條 狀 乘 淨 剩 疊 孃 讓 釀
    神 眞 寢 愼 盡 粹 醉 穗 瀨 齊 靜 攝 節 專 戰 纖 禪 祖 壯 爭 莊 搜 巢 裝 僧
    層 騷 增 憎 藏 贈 臟 卽 帶 滯 瀧 單 嘆 團 彈 晝 鑄 著 廳 徵 聽 懲 鎭 轉 傳
    都 嶋 燈 盜 稻 德 突 難 拜 盃 賣 梅 髮 拔 繁 晚 卑 祕 碑 賓 敏 冨 侮 福 拂
    佛 勉 步 峯 墨 飜 每 萬 默 埜 藥 與 搖 樣 謠 來 賴 覽 欄 龍 虜 凉 綠 淚 壘
    類 禮 曆 歷 練 鍊 郞 朗 廊 錄
  ].sort();

  KANJI_HYOUGAI   = %w[
    啞 唖 蛙 鴉 埃 挨 曖 靄 軋 斡 按 庵 鞍 闇 已 夷 畏 韋 帷 萎 椅 葦 彙 飴 謂
    閾 溢 鰯 尹 咽 殷 淫 隕 蔭 于 迂 盂 烏 鬱 云 暈 穢 曳 洩 裔 穎 頴 嬰 翳 腋
    曰 奄 宛 怨 俺 冤 袁 婉 焉 堰 淵 焰 筵 厭 鳶 燕 閻 嚥 嗚 凰 嘔 鴨 甕 襖 謳
    鶯 鷗 鴎 鸚 臆 俤 瓜 呵 苛 珂 迦 訛 訶 跏 嘩 瑕 榎 窩 蝦 蝸 鍋 顆 牙 瓦 臥
    俄 峨 訝 蛾 衙 駕 芥 乖 廻 徊 恢 晦 堺 潰 鞋 諧 檜 蟹 咳 崖 蓋 漑 骸 鎧 喀
    廓 摑 攪 撹 愕 萼 諤 顎 鰐 樫 絣 筈 葛 闊 鰹 萱 奸 串 旱 函 咸 姦 宦 柑 竿
    悍 桓 涵 菅 嵌 鉗 澗 翰 諫 瞰 韓 檻 灌 玩 雁 翫 頷 癌 贋 几 卉 其 祁 耆 埼
    悸 揆 毀 箕 畿 窺 諱 徽 櫃 妓 祇 魏 蟻 掬 麴 麹 吃 屹 拮 謔 仇 臼 汲 灸 咎
    邱 柩 笈 躬 厩 嗅 舅 炬 渠 裾 噓 墟 鋸 遽 欅 匈 怯 俠 脇 莢 竟 卿 僑 嬌 蕎
    鋏 頰 橿 疆 饗 棘 髷 巾 僅 禽 饉 狗 惧 軀 懼 俱 喰 寓 窟 粂 偈 荊 珪 畦 脛
    頃 痙 詣 禊 閨 稽 頸 髻 蹊 鮭 繫 睨 戟 隙 抉 頁 訣 蕨 姸 倦 虔 捲 牽 喧 硯
    腱 鍵 瞼 鹼 鹸 呟 眩 舷 諺 乎 姑 狐 股 涸 菰 袴 壺 跨 糊 醐 齬 亢 勾 叩 尻
    吼 肛 岡 庚 杭 肴 咬 垢 巷 恍 恰 狡 桁 胱 崗 梗 喉 腔 蛤 幌 煌 鉤 敲 睾 膏
    閤 膠 篝 縞 薨 糠 藁 鮫 壙 曠 劫 毫 傲 壕 濠 嚙 噛 轟 剋 哭 鵠 乞 忽 惚 昏
    痕 渾 褌 叉 些 嗟 蓑 磋 坐 挫 晒 柴 砦 犀 賽 鰓 榊 柵 炸 窄 簀 刹 拶 紮 撒
    薩 珊 餐 纂 霰 攢 讃 斬 懺 仔 弛 此 址 祀 屍 屎 柿 茨 恣 砥 祠 翅 舐 疵 趾
    斯 覗 嗜 滓 獅 幟 摯 嘴 熾 髭 贄 而 峙 痔 餌 竺 雫 𠮟 悉 蛭 嫉 膝 櫛 柘 洒
    娑 這 奢 闍 杓 灼 綽 錫 雀 惹 娶 腫 諏 鬚 呪 竪 綬 聚 濡 襦 帚 酋 袖 羞 葺
    蒐 箒 皺 輯 鍬 繡 繍 蹴 讐 鷲 廿 揉 絨 粥 戌 閏 楯 馴 杵 薯 藷 汝 抒 鋤 妾
    哨 秤 娼 逍 廂 椒 湘 竦 鈔 睫 蛸 鉦 摺 蔣 蒋 裳 誦 漿 蕭 踵 鞘 篠 聳 鍾 醬
    醤 囁 杖 茸 嘗 擾 攘 饒 拭 埴 蜀 蝕 燭 褥 沁 芯 呻 宸 疹 蜃 滲 賑 鍼 壬 訊
    腎 靱 塵 儘 笥 祟 膵 誰 錐 雖 隋 隧 芻 趨 鮨 丼 凄 栖 棲 甥 貰 蜻 醒 錆 臍
    瀞 鯖 脆 贅 脊 戚 晰 蹟 泄 屑 浙 啜 楔 截 尖 苫 穿 閃 陝 釧 揃 煎 羨 腺 詮
    煽 箋 撰 箭 賤 蟬 癬 喘 膳 狙 疽 疏 甦 楚 鼠 遡 蘇 齟 爪 宋 炒 叟 蚤 曾 曽
    湊 葱 搔 掻 槍 漕 箏 噌 瘡 瘦 痩 踪 艘 薔 甑 叢 藪 躁 囃 竈 鰺 仄 捉 塞 粟
    杣 遜 噂 樽 鱒 侘 咤 詫 陀 拿 荼 唾 舵 楕 驒 苔 殆 堆 碓 腿 頽 戴 醍 托 鐸
    凧 襷 燵 坦 疸 耽 啖 蛋 毯 湛 痰 綻 憚 歎 簞 譚 灘 雉 馳 蜘 緻 筑 膣 肘 冑
    紐 酎 厨 蛛 註 誅 疇 躊 佇 楮 箸 儲 瀦 躇 吊 帖 喋 貼 牒 趙 銚 嘲 諜 寵 捗
    枕 槌 鎚 辻 剃 挺 釘 掟 梯 逞 啼 碇 鼎 綴 鄭 薙 諦 蹄 鵜 荻 擢 溺 姪 轍 辿
    唸 塡 篆 顚 囀 纏 佃 淀 澱 臀 兎 妬 兜 堵 屠 賭 宕 沓 套 疼 桶 淘 萄 逗 棹
    樋 蕩 鄧 橙 濤 檮 櫂 禱 祷 撞 禿 瀆 栃 咄 沌 遁 頓 吞 貪 邇 匂 韮 涅 禰 捏
    捻 撚 膿 囊 杷 爬 琶 頗 播 芭 罵 蟇 胚 徘 牌 稗 狽 煤 帛 柏 剝 粕 箔 莫 駁
    瀑 曝 畠 捌 撥 潑 醱 筏 跋 噺 氾 汎 阪 叛 袢 絆 斑 槃 幡 攀 挽 磐 蕃 屁 庇
    砒 脾 痺 鄙 誹 臂 枇 毘 梶 媚 琵 薇 靡 疋 畢 逼 謬 豹 憑 瓢 屛 屏 廟 牝 瀕
    憫 鬢 斧 阜 訃 俯 釜 腑 孵 鮒 巫 葡 撫 蕪 諷 祓 吻 扮 焚 糞 幷 并 聘 蔽 餅
    斃 袂 僻 璧 襞 蔑 瞥 扁 篇 騙 娩 鞭 哺 圃 蒲 戊 牡 姥 菩 呆 彷 庖 苞 疱 捧
    逢 蜂 蓬 鞄 鋒 牟 芒 茫 虻 榜 膀 貌 鉾 謗 吠 卜 勃 梵 昧 邁 枡 桝 俣 沫 迄
    曼 蔓 瞞 饅 鬘 鰻 蜜 鵡 冥 瞑 謎 麵 麺 蒙 朦 勿 籾 悶 揶 爺 鑓 喩 揄 愈 楡
    尤 釉 楢 猷 飫 輿 孕 妖 拗 涌 痒 傭 熔 瘍 蠅 沃 螺 萊 蕾 洛 埒 拉 辣 瀾 爛
    鸞 狸 裡 罹 籬 戮 慄 掠 笠 溜 榴 劉 瘤 侶 梁 聊 菱 寥 蓼 淋 燐 鱗 屢 蛉 蠣
    櫟 礫 轢 煉 漣 憐 簾 鰊 攣 賂 魯 濾 沪 廬 櫓 蘆 芦 鷺 弄 牢 狼 榔 瘻 﨟 臘
    朧 蠟 蝋 籠 聾 肋 勒 漉 麓 窪 歪 猥 隈 或 罠 椀 碗 彎 弯 唖 啞 頴 穎 鴎 鷗
    撹 攪 麹 麴 鹸 鹼 噛 嚙 繍 繡 蒋 蔣 醤 醬 曽 曾 掻 搔 痩 瘦 祷 禱 屏 屛 并
    幷 桝 枡 麺 麵 沪 濾 芦 蘆 蝋 蠟 弯 彎
  ].sort();

  CHARACTERS_HIRAGANA       = "\\p{Hiragana}";
  CHARACTERS_KATAKANA       = "\\p{Katakana}";
  CHARACTERS_KANJI          = "\\u{4E00}-\\u{9FFF}\\u{3400}-\\u{4DBF}\\u{20000}-\\u{2A6DF}\\u{2A700}-\\u{2B73F}\\u{F900}-\\u{FAFF}"
  CHARACTERS_JYOUYOU        = "#{KANJI_JYOUYOU.join('')}";
  CHARACTERS_JINMEI         = "#{KANJI_JINMEI.join('')}";
  CHARACTERS_HYOUGAI        = "#{KANJI_HYOUGAI.join('')}";
  CHARACTERS_POPULAR_KANJI  = "#{CHARACTERS_JYOUYOU}#{CHARACTERS_JINMEI}#{CHARACTERS_HYOUGAI}"

  REGEX_HIRAGANA            = /[#{CHARACTERS_HIRAGANA}]/;
  REGEX_KATAKANA            = /[#{CHARACTERS_KATAKANA}]/;
  REGEX_KANJI               = /[#{CHARACTERS_KANJI}]/;
  REGEX_POPULAR_KANJI       = /[#{CHARACTERS_POPULAR_KANJI}]/;

  REGEX_NO_KANJI            = /[^#{CHARACTERS_KANJI}]/;
  REGEX_NO_POPULAR_KANJI    = /[^#{CHARACTERS_POPULAR_KANJI}]/;

  def self.include_hiragana?(text)
    return !(REGEX_HIRAGANA.match(text).nil?);
  end
  def self.include_katakana?(text)
    return !(REGEX_KATAKANA.match(text).nil?);
  end
  def self.include_kanji?(text)
    return !(REGEX_KANJI.match(text).nil?);
  end
  def self.include_popular_kanji?(text)
    return !(REGEX_POPULAR_KANJI.match(text).nil?);
  end

  # 簡易日本語判定
  #  ・ひらがな、カタカナを含む
  #  ・漢字を含むが、常用漢字・人名漢字・表外漢字以外の漢字を含まない
  def self.japanese?(text)
    return true if (self.include_hiragana?(text) || self.include_katakana?(text));
    return true if (text.gsub(REGEX_NO_KANJI,"") =~ /^[#{CHARACTERS_POPULAR_KANJI}]+$/);
    return false;
  end
end
