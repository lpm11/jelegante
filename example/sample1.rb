#!/bin/env ruby
#-*- coding: utf-8 -*-
require("../lib/jelegante");

tests = [
  "Ruby 1.9.3 の最初の Release Candidate 版である ruby-1.9.3-rc1 がリリースされました。",
  "Ruby 1.9.3 rc1 has been released. This is a second preview of next version and there're still minor known issues. But it will be fixed in next release, ruby 1.9.3-p0.",
  "Ruby 1.9.3 rc1 est sorti. C'est le second aperçu de ce que sera cette nouvelle version, et elle contient encore quelques bugs connus. Ceux-ci seront corrigés dans la sortie de Ruby 1.9.3-p0.",
  "Ruby 1.9.3 preview1이 릴리즈되었습니다. 이는 1.9.3으로서는 첫 preview이며 아직까지 자잘한 문제점을 가지고 있습니다. 이러한 문제점은 정식 릴리즈인 p0부터는 모두 수정될 예정입니다.",
  "RuPy 2011 już za dwa miesiące!",
  "Este año tenemos una cantidad inédita de eventos de Ruby en américa latina.",
  "O Ruby 1.9.3 preview1 foi lançado. Esta é a primeira pre-release da próxima versão e ainda existem alguns problemas conhecidos, que serão resolvidos na proxima release, Ruby 1.9.3-p0",
  "Ruby 1.9.2-p136 已经发布.",
  "RubyConf Taiwan 將於 2011/8/26 (週五) 和 8/27 (週六) 在中央研究院人科所會議廳舉辦，是台灣唯一及最大的 Ruby 程式語言大會，將會超過一百位的 IT 技術人員、系統管理員、程式開發者來參加這項會議，並邀請來自台灣、美國及日本的講者來分享他們的專案及經驗。",
  "Ruby 1.8.7-p248 dan Ruby 1.9.1-p376 diluncurkan",
  "Ruby 1.9.3-rc1 ist veröffentlicht worden.",
  "Ruby 1.9.3 preview1 è stato rilasciato. Questa è una prima preview della prossima versione, e contiene ancora qualche piccolo baco, che sarà tuttavia corretto nel prossimo rilascio, Ruby 1.9.3-p0.",
  "Излезе Ruby 1.9.2. Това е последната стабилна версия от серията 1.9.",
  "Ruby 1.9.2-p136 sürümü yayınlandı",
];

tests.each { |text|
  puts("#{text} => #{Jelegante.japanese?(text)}")
}
