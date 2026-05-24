<div align="center">

涓枃 路 [English](./README.md)

# 銆婇湼閬撴€昏鐖变笂鎮ｆ湁 ADHD 鐨勬垜銆?## 鏀寔 Codex 涓?Claude Code 鐨勫井淇℃ˉ鎺ョ郴缁燂細Cyberboss

> 鈥滀綘灏界鍦ㄥ宸磋兒閲岄€冮伩锛屼絾鎴戞案杩滀細鍦ㄤ笅涓€涓椂闂存埑鎶撳埌浣犮€傗€?
[![Node >=22](https://img.shields.io/badge/Node-22%2B-3C873A)](./package.json)
[![License: AGPLv3](https://img.shields.io/badge/License-AGPLv3-b31b1b)](./LICENSE)
[![Runtime-Codex%20%7C%20ClaudeCode](https://img.shields.io/badge/Runtime-Codex%20%7C%20ClaudeCode-111827)](#technical-stack)
[![Bridge-Weixin](https://img.shields.io/badge/Bridge-Weixin-07C160)](#technical-stack)
[![Timeline-Enabled](https://img.shields.io/badge/Timeline-Enabled-8b5cf6)](#core-features)

<p>
  <a href="#user-guide">鐢ㄦ埛浣跨敤</a> 路
  <a href="#agent-guide">Agent 鎺ュ叆</a> 路
  <a href="#data-dir">鏈湴鏁版嵁</a> 路
  <a href="#faq">FAQ</a>
</p>

</div>

<p align="center">
  <img src="./docs/images/chat-example-1.jpg" alt="Cyberboss 绀轰緥瀵硅瘽 1" width="23%" />
  <img src="./docs/images/chat-example-2.jpg" alt="Cyberboss 绀轰緥瀵硅瘽 2" width="23%" />
  <img src="./docs/images/chat-example-3.jpg" alt="Cyberboss 绀轰緥瀵硅瘽 3" width="23%" />
  <img src="./docs/images/chat-example-4.jpg" alt="Cyberboss 绀轰緥瀵硅瘽 4" width="23%" />
</p>

Cyberboss 涓嶆槸鍙︿竴涓钩搴哥殑鐣寗閽燂紝涔熶笉鏄竴涓彧浼氬爢绉换鍔＄殑寰呭姙娓呭崟銆?
瀹冩槸涓€涓妸鏈湴 coding runtime 娣卞害鎺ュ叆寰俊鐨?Agent Bridge銆傚綋鍓嶅悓鏃舵敮鎸?Codex 鍜?Claude Code锛屼絾鏃ュ父浣跨敤鍛戒护鍜岃涓轰繚鎸佷竴鑷淬€傚畠鐨勫瓨鍦ㄤ笉鏄负浜嗏€滄彁閱掍綘寮€濮嬧€濓紝鑰屾槸鐩存帴鍖栬韩涓洪偅涓嫢鏈夌粷瀵规椂闂存劅銆佺洴姝昏繘搴︺€佸湪浣犳秷澶卞お涔呮椂浼氫富鍔ㄧ牬灞忚€屽嚭鐨勨€滆禌鍗氳€佹澘鈥濄€?
## 涓轰粈涔堥渶瑕?Cyberboss锛?
瀵逛簬 ADHD 鎴栦换浣曢渶瑕侀珮寮哄害澶栭儴鐩戠鐨勪汉鏉ヨ锛屼紶缁熷伐鍏锋渶澶х殑 Bug 鍦ㄤ簬锛氬畠浠兘瀵勫笇鏈涗簬浣犵殑鈥滀富鍔ㄦ€р€濄€備絾褰撳唴鍦ㄩ┍鍔ㄥ姏澶辩伒鏃讹紝浠讳綍闇€瑕佹墜鍔ㄥ紑鍚殑 App 閮芥槸鎽嗚銆?
Cyberboss 鐨勯€昏緫鏄鐞嗘潈鐨勮娓★細

- 鏃犻渶涓诲姩鐐瑰紑濮?  瀹冨氨鍦ㄤ綘鐨勫井淇￠噷锛岀洴鐫€浣犵殑姣忎竴鍙ヨ瘽銆?- 涓嶅彲閫冮伩鐨勬劅鐭?  瀹冩竻妤氫綘娌夐粯鐨勬瘡涓€鍒嗛挓鎰忓懗鐫€浠€涔堛€?- 鐪熷疄鐨勫閮ㄥ弽棣?  鏃㈢劧浣犳棤娉曡嚜寰嬶紝閭ｅ氨鎶婄鐞嗘潈浜ょ粰涓€涓案杩滃湪绾裤€佹嫢鏈夊畬缇庤蹇嗐€佷笖浼氭寔缁拷韪笂涓嬫枃鐨?AI銆?
<a id="core-features"></a>
## 鏍稿績鍔熻兘锛氬叏鑷姩鐨勮禌鍗氱洃绠?
1. 缁濆鏃堕棿鎰?(Omniscient Time)
姣忎竴鏉″井淇¤緭鍏ュ湪杩涘叆 runtime 鍓嶏紝閮戒細琚嚜鍔ㄦ墦涓婃湰鍦版椂闂存埑銆傛ā鍨嬩笉鍐嶅彧鏄鐞嗘枃鏈紝瀹冨湪澶勭悊鈥滄椂闂存祦鈥濄€傚畠鐭ラ亾浣犱笂涓€绉掑湪淇¤獡鏃︽棪锛屼篃鐭ラ亾浣犳帴涓嬫潵鐨勪笁涓皬鏃跺湪浜洪棿钂稿彂銆?
2. 鐢熸椿杞ㄨ抗鑷姩鍖栨姤琛?(The Ledger of Life)
鍩轰簬宸茬煡鐨勬秷鎭椂闂存埑锛屽畠浼氬儚瀹¤鍛樹竴鏍锋寔缁ˉ鍏ㄤ綘鍏ㄥぉ浜嬩欢鐨勫紑濮嬨€佺粨鏉熷拰鏃堕暱锛岃嚜鍔ㄥ皢缁嗙鐨勮亰澶╄褰曡劚姘淬€侀噸鏋勪负缁撴瀯鍖栨椂闂磋酱锛屽苟瀹氭湡鍚戜綘杈撳嚭鈥滃鍒戞姤琛ㄢ€濄€?
3. 闅忔満杞鍞ら啋 (Stochastic Pulse)
绯荤粺浼氬湪闅忔満棰戠巼鍐呬富鍔ㄦ埑閱掓ā鍨嬨€傚畠浼氭牴鎹綋鍓嶄笂涓嬫枃鑷富鍒ゆ柇锛氭槸璇ユ俯鏌旀彁閱掋€佷弗鍘夊偓淇冦€侀粯榛樺啓鏃ヨ锛岃繕鏄皟鐢ㄥ伐鍏锋煡鐪嬩綘鐨勭姸鎬併€傝繖绉嶄笉鍙娴嬬殑鈥滄煡宀椻€濇劅锛屾槸鏉€鎺?ADHD 鎷栧欢鐥囩殑鑹嵂銆?
4. 璺ㄦ椂绌鸿嚜鎴戝敜閱?(Local Reminder Queue)
Reminder 闃熷垪涓嶆槸缁欑敤鎴疯鐨勯椆閽燂紝鑰屾槸妯″瀷鐣欑粰鏈潵鑷繁鐨勪紡绗斻€?
> 鈥滅害瀹?10:00 璧峰簥锛?0:05 浠栬嫢娌℃敹鍒颁綘鐨勬秷鎭紝灏嗚嚜鍔ㄨ皟鐢ㄧ背瀹?MCP 寮鸿鎷夊紑绐楀笜骞舵斁姝屻€傗€?
5. 闆舵垚鏈湰鍦版棩蹇?(Zero-Token Diary)
瀹冧細灏嗙湡姝ｅ€煎緱鐣欎笅鐨勭敓娲荤棔杩规矇娣€鍒版湰鍦帮紝涓嶄緷璧栫涓夋柟浜戞湇鍔★紝涓嶇儳棰濆涓婁笅鏂囷紝鍗磋兘鐣欎綇浣犱滑涔嬮棿鏈€鐪熷疄鐨勮繛鎺ャ€?
## 涔熷彲浠ュ崟鐙娇鐢?Timeline

濡傛灉浣犲 `Cyberboss` 閲屾渶鎰熷叴瓒ｇ殑鏄€滅敓娲昏建杩硅嚜鍔ㄥ寲鎶ヨ〃鈥濊繖涓€灞傦紝閭ｄ箞涔熷彲浠ョ洿鎺ユ妸鏃堕棿杞磋兘鍔涘崟鐙嬁鍑哄幓鐢細

- 椤圭洰鍦板潃锛歔WenXiaoWendy/timeline-for-agent](https://github.com/WenXiaoWendy/timeline-for-agent)
- 瀹冩湰韬氨鏄嫭绔嬮」鐩紝涓嶄緷璧栧井淇℃ˉ鎺ユ墠鑳藉伐浣?- 濡傛灉浣犱笉鎯充娇鐢?Codex锛屼篃瀹屽叏鍙互鎶?`timeline-for-agent` 鎺ヨ繘浣犺嚜宸辩殑 agent銆乥ot 鎴栬嚜鍔ㄥ寲绯荤粺閲?
`Cyberboss` 鐨勬椂闂磋酱鑳藉姏鏈川涓婁篃鏄瀯寤哄湪 `timeline-for-agent` 涔嬩笂锛屽彧鏄繖閲岄澶栨妸瀹冩帴杩涗簡寰俊銆佹彁閱掋€佹棩璁板拰闅忔満杞杩欐暣濂楃敓娲荤洃绠￠摼璺噷銆?
<a id="technical-stack"></a>
## 鎶€鏈疄鐜?
- **Core**
  鍙垏鎹㈢殑 Codex / Claude Code runtime 灞傦紝瀵瑰淇濇寔鍚屼竴濂楀井淇″懡浠や笌鍏变韩绾跨▼宸ヤ綔娴併€?- **Bridge**
  寰俊 HTTP bridge锛屾敮鎸侀暱杞鍚屾锛屾妸寰俊渚ц緭鍏ャ€佽緭鍑恒€佹枃浠跺拰鐘舵€佸彉鍖栨帴鍒板悓涓€鏉?agent 閾捐矾閲屻€?- **Task System**
  鏈湴浠诲姟闃熷垪锛屽綋鍓嶅寘鍚?reminder銆乻ystem message銆乼imeline screenshot 涓夌被寮傛浠诲姟銆?- **Capability Layer**
  娑电洊 Timeline銆丏iary銆丆heck-in銆丗ile Transfer 绛夋牳蹇冭兘鍔涳紝鍏朵腑 `checkin` 灏辨槸闅忔満杞鍞ら啋鍏ュ彛銆?- **Optional Tooling**
  鏀寔鎺ュ叆 MCP 涓庡叾浠栨湰鍦扮‖浠?杞欢鎺ュ彛锛涙槸鍚﹀惎鐢ㄥ畬鍏ㄥ彇鍐充簬浣犵殑鏈湴鐜銆?
## 寮€鍙戝垵琛凤細鎷掔粷鈥滆嚜寰嬬璇濃€?
瀵逛簬 ADHD 鏉ヨ锛岄棶棰樹粠鏉ヤ笉鏄€滀笉鎳傞亾鐞嗏€濓紝鑰屾槸鈥滄剰蹇楀姏鏂眰鈥濄€?
- 鐣寗閽熻姹備綘鍏堣嚜寰?- 寰呭姙娓呭崟瑕佹眰浣犲厛鏁寸悊
- 鎻愰啋杞欢瑕佹眰浣犲厛鈥滆寰楀幓鐩镐俊鈥濆畠

Cyberboss 鍋囪浣犳槸涓€涓畬鍏ㄤ笉鍙帶鐨勪釜浣擄細浣犱笉闇€瑕佸厛鐐瑰紑濮嬶紝涓嶉渶瑕佸厛璁板緱鍥炴潵锛岀敋鑷充笉闇€瑕佸厛鎷ユ湁鎵ц鎰忓織銆備綘鍙渶瑕佺户缁椿鐫€銆佺户缁亰澶╋紝鍓╀笅鐨勭敱绯荤粺鍘昏褰曟椂闂淬€佽ˉ榻愯建杩广€佷富鍔ㄥ嚭鐜般€?
<a id="user-guide"></a>
## 鐢ㄦ埛浣跨敤

### 鐜鍓嶆彁

- Node.js `>= 22`
- 鏈満宸插畨瑁?`codex` 鎴?`claude`
- 濡傛灉闇€瑕佹埅鍥撅紝鏈満闇€瑕佸彲鐢ㄧ殑 Chrome / Chromium / Edge

### 鑾峰彇婧愮爜涓庡畨瑁呬緷璧?
褰撳墠娌℃湁鍙戝竷 npm 鍖呫€傛纭敤娉曟槸鍏堟媺婧愮爜锛屽啀鍦ㄤ粨搴撶洰褰曢噷瀹夎渚濊禆锛?
```bash
git clone https://github.com/WenXiaoWendy/cyberboss.git
cd cyberboss
npm install
```

涓嶈鎶?README 閲岀殑鍛戒护鐞嗚В鎴愨€滃叏灞€瀹夎鍚庣洿鎺ュ彲鐢ㄢ€濈殑 npm package 鍛戒护銆?
### 鍦ㄨ窇绗竴涓懡浠ゅ墠鍏堥厤鐜鍙橀噺

`Cyberboss` 浼氭寜杩欎釜椤哄簭璇诲彇鐜鍙橀噺锛?
- 褰撳墠椤圭洰鐩綍涓嬬殑 `.env`
- `${HOME}/.cyberboss/.env`
- 褰撳墠 shell 鐜

寤鸿浣犲湪绗竴娆¤繍琛屼换浣曞懡浠ゅ墠锛岃嚦灏戝厛閰嶇疆杩欏嚑椤癸細

```dotenv
CYBERBOSS_USER_NAME=浣犵殑鍚嶅瓧
CYBERBOSS_USER_GENDER=female
CYBERBOSS_ALLOWED_USER_IDS=浣犵殑寰俊 user id
CYBERBOSS_WORKSPACE_ROOT=/缁濆璺緞/浣犵殑椤圭洰鐩綍
```

鍙€夊父鐢ㄩ」锛?
```dotenv
CYBERBOSS_RUNTIME=codex
CYBERBOSS_CODEX_ENDPOINT=ws://127.0.0.1:8765
CYBERBOSS_CODEX_COMMAND=
CYBERBOSS_CODEX_MODEL=
CYBERBOSS_CODEX_MODEL_PROVIDER=
CYBERBOSS_CODEX_NATIVE_IMAGE_INPUT=
CYBERBOSS_CLAUDE_COMMAND=claude
CYBERBOSS_CLAUDE_MODEL=
CYBERBOSS_CLAUDE_CONTEXT_WINDOW=
CYBERBOSS_CLAUDE_PERMISSION_MODE=default
CYBERBOSS_CLAUDE_DISABLE_VERBOSE=false
CYBERBOSS_CLAUDE_EXTRA_ARGS=
CLAUDE_CODE_MAX_OUTPUT_TOKENS=
CYBERBOSS_VISION_MODE=auto
CYBERBOSS_VISION_PROVIDER=openai-compatible
CYBERBOSS_VISION_API_BASE_URL=
CYBERBOSS_VISION_API_KEY=
CYBERBOSS_VISION_MODEL=
CYBERBOSS_VISION_TIMEOUT_MS=30000
CYBERBOSS_ACCOUNT_ID=
CYBERBOSS_WEIXIN_MIN_CHUNK_CHARS=20
CYBERBOSS_WEIXIN_BASE_URL=https://ilinkai.weixin.qq.com
CYBERBOSS_WEIXIN_CDN_BASE_URL=https://novac2c.cdn.weixin.qq.com/c2c
CYBERBOSS_WEIXIN_QR_BOT_TYPE=3
CYBERBOSS_ENABLE_LOCATION_SERVER=false
CYBERBOSS_LOCATION_HOST=0.0.0.0
CYBERBOSS_LOCATION_PORT=4318
CYBERBOSS_LOCATION_TOKEN=
CYBERBOSS_LOCATION_HOME_CENTER=
CYBERBOSS_LOCATION_WORK_CENTER=
CYBERBOSS_LOCATION_KNOWN_PLACES=
CYBERBOSS_LOCATION_PLACE_RADIUS_METERS=150
CYBERBOSS_LOCATION_BATTERY_HISTORY_LIMIT=100
```

杩欎簺鍙橀噺鐨勪綔鐢細

- `CYBERBOSS_RUNTIME`
  閫夋嫨 `codex` 鎴?`claudecode`銆備袱绉?runtime 浣跨敤鍚屼竴濂楀懡浠ゃ€?- `CYBERBOSS_CODEX_ENDPOINT`
  澶嶇敤宸叉湁鐨勫叡浜?Codex app-server锛岃€屼笉鏄柊璧风鏈?runtime銆?- `CYBERBOSS_CODEX_COMMAND`
  褰?`codex` 涓嶅湪 `PATH` 涓婃椂锛岃嚜瀹氫箟 Codex 鍚姩鍛戒护銆?- `CYBERBOSS_CODEX_MODEL`
  寮哄埗 Codex turn 浣跨敤鎸囧畾妯″瀷銆傜暀绌哄垯浣跨敤 Codex 榛樿妯″瀷閫夋嫨銆?- `CYBERBOSS_CODEX_MODEL_PROVIDER`
  寮哄埗 Codex turn 浣跨敤鎸囧畾 provider锛屼緥濡傛湰鍦版ā鍨嬪彲濉?`ollama`銆傜暀绌哄垯浣跨敤榛樿浜戠 provider銆?- `CYBERBOSS_CODEX_NATIVE_IMAGE_INPUT`
  Codex app-server 鐩翠紶鍥剧墖鑳藉姏鐨勫彲閫夎鐩栥€傜暀绌烘椂鎸?model metadata 鍒ゆ柇锛涜涓?`true` 鍙洿鎺ユ祴璇曟湰鍦板妯℃€佹ā鍨嬶紝璁句负 `false` 鍙己鍒惰蛋 caption fallback銆?- `CYBERBOSS_CLAUDE_COMMAND`
  鑷畾涔?Claude 鍚姩鍛戒护锛岄粯璁ゆ槸 `claude`銆?- `CYBERBOSS_CLAUDE_MODEL`
  璁剧疆 Claude 榛樿妯″瀷銆?- `CYBERBOSS_CLAUDE_CONTEXT_WINDOW`
  璁剧疆 Claude 瀹為檯涓婁笅鏂囩獥鍙ｏ紝`/status` 閲岀殑 `馃摝 context` 杩戜技鍊间細鍩轰簬瀹冭绠椼€?- `CYBERBOSS_CLAUDE_PERMISSION_MODE`
  璁剧疆 Claude 鏉冮檺妯″紡銆?- `CYBERBOSS_CLAUDE_DISABLE_VERBOSE`
  鍏抽棴 Claude 缁堢 verbose 杈撳嚭銆?- `CYBERBOSS_CLAUDE_EXTRA_ARGS`
  浠ラ€楀彿鍒嗛殧鐨勫舰寮忚拷鍔?Claude CLI 鍙傛暟銆?- `CLAUDE_CODE_MAX_OUTPUT_TOKENS`
  涓?Claude 鍥炲棰勭暀杈撳嚭 token銆俙/status` 浼氬厛浠?Claude 涓婁笅鏂囩獥鍙ｉ噷鍑忔帀杩欓儴鍒嗛鐣欓噺銆?- `CYBERBOSS_VISION_MODE`
  璁剧疆鍏ョ珯鍥剧墖澶勭悊鏂瑰紡锛歚auto`銆乣caption`銆乣native` 鎴?`off`銆俙auto` 浼氬湪 runtime 鏀寔鍘熺敓鍥剧墖杈撳叆鏃剁洿鎺ヤ紶鍥撅紝鍚﹀垯浣跨敤 caption銆?- `CYBERBOSS_VISION_PROVIDER`銆乣CYBERBOSS_VISION_API_BASE_URL`銆乣CYBERBOSS_VISION_API_KEY`銆乣CYBERBOSS_VISION_MODEL`
  閰嶇疆鍙€夌殑 OpenAI-compatible 璇嗗浘 caption API锛屼緵 DeepSeek 杩欑被鏂囨湰妯″瀷浣跨敤銆俀wen/DashScope 鍙粠 [templates/vision-openai-compatible.env](./templates/vision-openai-compatible.env) 寮€濮嬨€?- `CYBERBOSS_VISION_TIMEOUT_MS`
  鍗曞紶鍥剧墖 caption 璇锋眰瓒呮椂鏃堕棿銆?- `CYBERBOSS_WEIXIN_MIN_CHUNK_CHARS`
  璁剧疆寰俊鐭垎鐗囧悎骞堕槇鍊奸粯璁ゅ€笺€?- `CYBERBOSS_WEIXIN_BASE_URL`銆乣CYBERBOSS_WEIXIN_CDN_BASE_URL`銆乣CYBERBOSS_WEIXIN_QR_BOT_TYPE`
  鍦ㄧ壒娈婇儴缃茬幆澧冧笅瑕嗙洊寰俊妗ユ帴鎺ュ彛鍦板潃鍜屼簩缁寸爜 bot 绫诲瀷銆?- `CYBERBOSS_ENABLE_LOCATION_SERVER`
  鏄惁鍚姩鍐呯疆 whereabouts HTTP 鎺ユ敹鏈嶅姟銆?- `CYBERBOSS_LOCATION_HOST`
  鍐呯疆 whereabouts HTTP 鏈嶅姟鐩戝惉鍦板潃锛岄粯璁?`0.0.0.0`銆?- `CYBERBOSS_LOCATION_PORT`
  鍐呯疆 whereabouts HTTP 鏈嶅姟绔彛锛岄粯璁?`4318`銆?- `CYBERBOSS_LOCATION_TOKEN`
  涓婁紶瀹氫綅鏁版嵁鏃朵娇鐢ㄧ殑 Bearer token銆?- `CYBERBOSS_LOCATION_HOME_CENTER`銆乣CYBERBOSS_LOCATION_WORK_CENTER`
  瀹跺拰鍏徃鐨勪腑蹇冨潗鏍囷紝鏍煎紡 `lat,lng`銆?- `CYBERBOSS_LOCATION_KNOWN_PLACES`
  棰濆鍦扮偣鏍囩锛孞SON 鏁扮粍銆?- `CYBERBOSS_LOCATION_PLACE_RADIUS_METERS`
  鍦扮偣鏍囩璇嗗埆鍗婂緞锛岄粯璁?`150`銆?- `CYBERBOSS_LOCATION_BATTERY_HISTORY_LIMIT`
  鐢甸噺瑙傛祴淇濈暀鏁伴噺锛岄粯璁?`100`銆?

`CYBERBOSS_ALLOWED_USER_IDS` 鏀寔閫楀彿鍒嗛殧澶氫釜 user id銆?
鍘熷洜鏈変袱涓細

- 绗竴娆¤繍琛屼换鎰?`cyberboss` 鍛戒护鏃讹紝浼氳嚜鍔ㄧ敓鎴?`~/.cyberboss/weixin-instructions.md`
- 濡傛灉浣犳病鍏堣缃?`CYBERBOSS_USER_NAME` 鍜?`CYBERBOSS_USER_GENDER`锛岀敓鎴愬嚭鏉ョ殑 instructions 鍙兘涓嶇鍚堢湡瀹炴儏鍐?
鍙﹀锛屽鏋滀綘鎯宠鏇村己鐨勨€減ush 鎰熲€濓紝寤鸿涓€寮€濮嬪厛涓嶈涓诲姩澶ф敼 instructions 妯℃澘銆傚厛璁?agent 鍦ㄧ湡瀹炰氦娴侀噷鑷繁鏇存柊琛屼负锛屽啀鍥炲ご鍙慨鏄庢樉涓嶅鐨勯儴鍒嗐€?
濡傛灉浣犺璺戝叡浜嚎绋嬶紝寤鸿涔熷湪绗竴娆″惎鍔ㄥ墠灏辨妸 `CYBERBOSS_WORKSPACE_ROOT` 閰嶅ソ銆傝繖鏍?`shared:open` 浼氫紭鍏堟帴鍒颁綘褰撳墠椤圭洰瀵瑰簲鐨勯偅鏉＄嚎绋嬶紝鑰屼笉鏄洖閫€鍒板埆鐨勫巻鍙茬粦瀹氥€?
濡傛灉浣犱娇鐢?Ollama 杩欑被鏈湴 Codex provider锛屾帹鑽愮敤涓€涓緢灏忕殑 wrapper script锛屼笉瑕佺洿鎺ユ妸 provider flags 濉炶繘 `CYBERBOSS_CODEX_COMMAND`銆傛妸 [templates/codex-local-provider.sh](./templates/codex-local-provider.sh) 澶嶅埗鍒?`${HOME}/.cyberboss/codex-local`锛岀粰瀹冩墽琛屾潈闄愶紝骞惰 Cyberboss 浣跨敤杩欎釜 wrapper锛?
```bash
cp ./templates/codex-local-provider.sh "${HOME}/.cyberboss/codex-local"
chmod +x "${HOME}/.cyberboss/codex-local"
```

```dotenv
CYBERBOSS_CODEX_COMMAND=/缁濆璺緞/.cyberboss/codex-local
CYBERBOSS_CODEX_MODEL_PROVIDER=ollama
CYBERBOSS_CODEX_MODEL=gemma4:26b-32k
```

杩欎釜妯℃澘浼氭妸浜戠鍜屾湰鍦板惎鍔ㄩ€昏緫鏀舵暃鍦ㄥ悓涓€涓?command 閲屻€傚垏鍥炰簯绔?provider 鏃讹紝娓呯┖ `CYBERBOSS_CODEX_MODEL_PROVIDER` 鍜?`CYBERBOSS_CODEX_MODEL`锛岀劧鍚庨噸鍚叡浜ˉ鎺ワ紝璁?Codex app-server 鐢ㄦ柊鐨?command 鐜鍚姩銆?
鏈湴 Codex 妯″瀷杩橀渶瑕?model metadata銆傚鏋?`CYBERBOSS_CODEX_MODEL` 鎸囧悜鐨勬ā鍨嬩笉鍦?Codex 鍐呯疆 catalog 閲岋紝闇€瑕佸湪 Codex home 閲屾斁涓€浠芥ā鍨?catalog锛屽苟鍦?`~/.codex/config.toml` 閲屽紩鐢細

```toml
model_catalog_json = "/缁濆璺緞/.codex/local-models.json"
```

杩欎唤鏂囦欢搴斿熀浜庝綘鐜版湁鐨?Codex model catalog 鐢熸垚锛屽啀杩藉姞鏈湴妯″瀷鏉＄洰銆傛瘡涓湰鍦版ā鍨嬫潯鐩嚦灏戣鍜屽疄闄呮ā鍨?slug 瀵归綈锛屽苟鍐欐竻妤氭纭殑 `context_window`銆乣max_context_window`銆乣input_modalities` 鍜?truncation policy銆備笉瑕佸彧淇濈暀鏈湴妯″瀷鑰屽垹鎺変簯绔ā鍨嬫潯鐩€傞厤缃悗鐢?`codex debug models` 楠岃瘉锛涙湰鍦版ā鍨嬪簲璇ヨ兘琚垪鍑猴紝骞朵笖涓嶅簲鍐嶅嚭鐜?fallback metadata 璀﹀憡銆?
褰?`CYBERBOSS_RUNTIME=claudecode` 鏃讹紝Cyberboss 浼氬湪褰撳墠宸ヤ綔鍖鸿嚜鍔ㄨˉ鍐?`.mcp.json` 閲岀殑 `cyberboss_tools`锛屽苟鍦ㄥ惎鍔?Claude 鏃舵樉寮忔寕涓婅繖浠?MCP 閰嶇疆銆侰laude 鑳藉彂鐜?Cyberboss project tools锛岄潬鐨勫氨鏄繖鏉￠」鐩湰鍦伴厤缃紝鑰屼笉鏄叏灞€娉ㄥ唽銆?
### 鐢ㄦ埛鑷繁浼氱敤鍒扮殑缁堢鍛戒护

- `npm run login`
  鎵爜鐧诲綍寰俊锛屽苟鎶?bot 璐﹀彿淇濆瓨鍒版湰鍦?- `npm run accounts`
  鏌ョ湅鏈湴宸蹭繚瀛樼殑璐﹀彿
- `npm run shared:start`
  榛樿鍚姩鏂瑰紡銆傝法骞冲彴鍚姩鍏变韩 runtime bridge 鍜屽叡浜井淇℃ˉ鎺ワ紱Windows / macOS / Linux 閮戒紭鍏堢敤杩欎釜鍏ュ彛
- `npm run shared:open`
  榛樿鎺ョ鏂瑰紡銆傝法骞冲彴鎺ュ叆褰撳墠寰俊缁戝畾鐨勯偅鏉″叡浜嚎绋?- `npm run shared:status`
  璺ㄥ钩鍙版煡鐪嬪叡浜?runtime 杩涚▼銆佸叡浜ˉ鎺ュ拰 `readyz` 鐘舵€?- `npm run doctor`
  鏌ョ湅褰撳墠閰嶇疆銆乧hannel/runtime 杈圭晫鍜岀嚎绋嬬姸鎬?- `npm run help`
  鏌ョ湅鍙洿鎺ユ墽琛岀殑鍛戒护鍏ュ彛

杩欓噷鐨?`checkin` 鎸囩殑灏辨槸鈥滈殢鏈鸿疆璇㈠敜閱掆€濊兘鍔涳紝涓嶆槸鍥哄畾鏁寸偣鎻愰啋銆?
鍒囨崲 runtime 鍙渶瑕佹敼 `CYBERBOSS_RUNTIME`銆備笉闇€瑕佷负 Claude Code 鍗曠嫭瀛︿範鍙︿竴濂楀懡浠ゃ€?
`npm run start` / `npm run start:checkin` 鍙互鐢ㄤ簬鏈湴鏈€灏忛摼璺皟璇曪紝浣嗕笉閫傚悎瑙傚療鍏变韩妗ョ殑鐪熷疄琛屼负锛屼篃涓嶉€傚悎浣滀负鍏变韩绾跨▼闂鐨勯粯璁ゆ帓鏌ュ叆鍙ｃ€傚洜姝?README 鍙妸鍏变韩妯″紡浣滀负榛樿鍏ュ彛銆?
### 鐢ㄦ埛鍦ㄥ井淇￠噷浼氱敤鍒扮殑鍛戒护

- `/bind /缁濆璺緞`
  缁戝畾褰撳墠鑱婂ぉ浣跨敤鐨勯」鐩洰褰?- `/status`
  鏌ョ湅褰撳墠缁戝畾椤圭洰銆佺嚎绋嬨€佹ā鍨嬪拰涓婁笅鏂囩姸鎬?- `/new`
  鍒囧埌鏂扮嚎绋嬭崏绋?- `/reread`
  璁╁綋鍓嶇嚎绋嬮噸鏂拌鍙栨渶鏂?instructions锛岄€傚悎鍒氭敼瀹屼汉鏍兼ā鏉挎垨鎿嶄綔妯℃澘鍚庝娇鐢?- `/compact`
  鍘嬬缉褰撳墠绾跨▼涓婁笅鏂囥€傛ˉ浼氬厛鍥炰竴鏉″紑濮嬫彁绀猴紝瀹屾垚鍚庡啀鍥炰竴鏉″畬鎴愭彁绀恒€?- `/switch <threadId>`
  鍒囨崲鍒版寚瀹氱嚎绋?- `/stop`
  鍋滄褰撳墠绾跨▼閲岀殑杩愯
- `/checkin <min>-<max>`
  璋冩暣褰撳墠椤圭洰鐨勯殢鏈?checkin 鍖洪棿
- `/chunk <number>`
  璋冩暣寰俊鐭洖澶嶇殑鏈€灏忓悎骞跺瓧绗︽暟
- `/yes`
  鍏佽褰撳墠寰呭鐞嗘巿鏉冧竴娆?- `/always`
  鍦ㄥ綋鍓嶉」鐩唴鎸佺画鍏佽鍚岀被鍛戒护
- `/no`
  鎷掔粷褰撳墠寰呭鐞嗘巿鏉?- `/model`
  鏌ョ湅褰撳墠妯″瀷
- `/model <id>`
  鍒囨崲妯″瀷
- `/star`
  鍦ㄥ井淇￠噷鏌ョ湅 GitHub star 寮曞
- `/help`
  鏌ョ湅寰俊鍐呭懡浠ゅ府鍔?
鏅€氭枃鏈秷鎭細鐩存帴鍙戦€佸埌褰撳墠缁戝畾绾跨▼銆傚鏋滃綋鍓嶈繕娌＄粦瀹氶」鐩紝鍏堟墽琛岋細

```text
/bind /缁濆璺緞
```

### 鍙岀鐩戞帶鍚屼竴鏉＄嚎绋?
濡傛灉浣犳兂鎶婂井淇￠噷褰撳墠缁戝畾鐨勫悓涓€鏉″叡浜嚎绋嬪悓姝ュ埌鏈満缁堢缁х画鐪嬶紝绋冲畾娴佺▼鏄細

绗竴涓粓绔細

```bash
npm run shared:start
```

淇濇寔杩欎釜缁堢涓嶈閫€鍑恒€傜浜屼釜缁堢锛?
```bash
npm run shared:open
```

杈呭姪璇婃柇锛?
- `npm run shared:status`

濡傛灉浣犳兂鍦ㄦ墜鏈轰笂閫氳繃 `Termius + tmux` 闀挎湡鏌ョ湅鍏变韩绾跨▼锛屽弬鑰冿細

- [docs/termius-tmux-shared-terminal.zh-CN.md](docs/termius-tmux-shared-terminal.zh-CN.md)

娉ㄦ剰锛?
- 鍏变韩鍚姩灏辨槸榛樿鍚姩鏂瑰紡锛汻EADME 閲岀殑鎵€鏈夋甯镐娇鐢ㄥ満鏅兘榛樿寤虹珛鍦?`npm run shared:start` / `npm run shared:open` 涔嬩笂
- 涓嶇搴曞眰 runtime 鏄?Codex 杩樻槸 Claude Code锛屽井淇￠噷鐨勫懡浠ゅ拰鏃ュ父琛屼负閮戒繚鎸佷竴鑷?- 濡傛灉 `CYBERBOSS_RUNTIME=claudecode`锛屾湰鍦?Claude 绐楀彛褰撳墠鏇撮€傚悎浣滀负鍏变韩绾跨▼鐨勭洃鍚獥鍙?- 涓嶈鍗曠嫭鎵ц `node ./bin/cyberboss.js start --checkin`锛岄櫎闈炲凡缁忔槑纭缃?`CYBERBOSS_CODEX_ENDPOINT=ws://127.0.0.1:8765`
- 涓嶈璁╁井淇℃ˉ鎺ヨ蛋 `spawn` 绉佹湁 runtime锛涘井淇″拰缁堢蹇呴』杩炴帴鍚屼竴濂楀叡浜?runtime 浼氳瘽
- 涓嶈鍚屾椂淇濈暀澶氬 `cyberboss` 杩涚▼
- 涓嶈鎶?`npm run shared:start` 鏀惧埌鍚庡彴璺戯紱瀹冨氨鏄叡浜ˉ鎺ヤ富杩涚▼
- Windows 鐢ㄦ埛涓嶈鍐嶄娇鐢?`.sh` 鍏ュ彛锛涘叡浜惎鍔ㄥ拰鎺ョ璇风粺涓€浣跨敤 `npm run shared:start` / `npm run shared:open`


## Docker 部署

如果你想在服务器（如 Debian/Ubuntu）上长期运行，而不是在个人电脑上使用，请参考 Docker 部署方式：

```bash
# 克隆并配置
git clone https://github.com/WenXiaoWendy/cyberboss.git
cd cyberboss
cp .codex/config.toml.example .codex/config.toml
# 编辑 .codex/config.toml 填入你的 API 配置

# 创建 .env 文件
cat <<EOF > .env
OPENAI_API_KEY=sk-xxx
CYBERBOSS_USER_NAME=你的名字
CYBERBOSS_USER_GENDER=female
CYBERBOSS_ALLOWED_USER_IDS=你的微信user id
CYBERBOSS_WORKSPACE_ROOT=/app
EOF

# 首次微信登录
docker compose run --rm cyberboss-gateway npm run login

# 启动服务
docker compose up -d
```

详细说明请参考 [DEPLOY_DOCKER.md](./DEPLOY_DOCKER.md)。
<a id="data-dir"></a>
## 鏈湴鏁版嵁鏀惧湪鍝噷

榛樿鐘舵€佺洰褰曟槸锛?
```text
${HOME}/.cyberboss
```

甯歌鍐呭锛?
- `accounts/`
  寰俊 bot 璐﹀彿淇℃伅
- `sessions.json`
  宸ヤ綔鍖恒€佺嚎绋嬨€佹ā鍨嬪拰瀹℃壒鐘舵€?- `sync-buffers/`
  寰俊闀胯疆璇㈠悓姝ョ紦鍐?- `inbox/`
  淇濆瓨鏀跺埌鐨勫井淇″浘鐗囧拰闄勪欢
- `stickers/`
  琛ㄦ儏鍖呰祫浜х洰褰曪紝鍖呭惈锛?  - `assets/`
    宸插叆搴撹〃鎯呭寘绱犳潗锛屽綋鍓嶇粺涓€瑙勮寖鍖栦负 GIF
  - `index.json`
    琛ㄦ儏鍖呯储寮曪紝缁存姢 `stickerId -> { tags, desc }`
  - `tags.json`
    琛ㄦ儏鍖呮爣绛捐〃锛孉I 璇诲彇杩欓噷锛岀敤鎴蜂篃鍙互鎵嬪姩缂栬緫杩欓噷
- `weixin-instructions.md`
  棣栨杩愯鑷姩鐢熸垚鐨勬湰鍦?instructions
- `reminder-queue.json`
  reminder 闃熷垪
- `system-message-queue.json`
  system / checkin 闃熷垪
- `deferred-system-replies.json`
  绛夊緟涓嬩竴涓彲鐢ㄥ井淇?context token 鐨勮ˉ鍙戞秷鎭?- `timeline-screenshot-queue.json`
  鎴浘浠诲姟闃熷垪
- `diary/`
  鏈湴鏃ヨ
- `timeline/`
  timeline 鏁版嵁銆乻ite銆乻hots
- `logs/`
  鍏变韩 bridge 鍜?shared runtime 鏃ュ織

杩欎釜鐩綍鍙槸鏈湴鐘舵€佺洰褰曪紝涓嶆槸绾跨▼宸ヤ綔鐩綍锛涘井淇＄嚎绋嬪拰缁堢绾跨▼浠嶇劧搴旇寮€鍦ㄤ綘鐨勯」鐩洰褰曢噷銆?
浠撳簱鏈韩涓嶅寘鍚綘鐨勫井淇¤处鍙枫€乣context_token`銆佷細璇濇枃浠舵垨鍏朵粬杩愯鎬佹暟鎹紱杩欎簺閮戒繚瀛樺湪鐘舵€佺洰褰曢噷銆?
### 琛岃釜鏈嶅姟璇存槑

- Cyberboss 宸插唴缃?`whereabouts-mcp`锛屽彲浠ョ洿鎺ユ帴鏀舵墜鏈轰笂浼犵殑瀹氫綅銆佺數閲忓拰瑙﹀彂鍘熷洜銆?- 濡傛灉瑕佸惎鐢ㄥ唴缃韪湇鍔★紝鑷冲皯闇€瑕侀厤缃細
  - `CYBERBOSS_ENABLE_LOCATION_SERVER=true`
  - `CYBERBOSS_LOCATION_TOKEN=<your_token>`
  - `CYBERBOSS_LOCATION_HOME_CENTER=lat,lng`
- 甯哥敤鍙€夐」锛?  - `CYBERBOSS_LOCATION_HOST`
  - `CYBERBOSS_LOCATION_WORK_CENTER`
  - `CYBERBOSS_LOCATION_KNOWN_PLACES`
  - `CYBERBOSS_LOCATION_PLACE_RADIUS_METERS`
  - `CYBERBOSS_LOCATION_BATTERY_HISTORY_LIMIT`
- 鍐呯疆鏈嶅姟榛樿鐩戝惉 `http://0.0.0.0:4318`锛屼笂浼犳帴鍙ｆ槸 `POST /location/ingest`锛屽仴搴锋鏌ユ槸 `GET /healthz`銆?- 琛岃釜鏁版嵁榛樿鍐欏叆 `~/.cyberboss/locations.json`锛屼笉鏄啓杩涢」鐩洰褰曘€?
### 琛ㄦ儏鍖呰鏄?
- 褰撳墠杩欐潯寰俊妗ラ摼璺噷锛屽井淇″嚭鍏ョ珯閮戒笉鑳芥妸鍔ㄥ浘灞曠ず鑳藉姏褰撴垚鍙潬鍓嶆彁銆備笉瑕佸亣璁惧彂鍑哄幓鎴栨敹杩涙潵鐨?GIF 浼氬湪鑱婂ぉ绐楀彛閲屾甯告挱鏀俱€?- 鍥犳锛岃〃鎯呭寘鍏ュ簱鏃跺綋鍓嶇粺涓€瑙勮寖鍖栦负 GIF锛岀洰鐨勬槸鍏堟妸璧勪骇鏍煎紡鏀舵暃濂姐€傝繖鏍峰悗缁鏋滃井淇″紑鏀炬洿瀹屾暣鐨勮〃鎯呰兘鍔涳紝鍙互鐩存帴澶嶇敤鐜版湁搴撳瓨鑰屼笉鐢ㄩ噸鏂版暣鐞嗐€?- 鏍囩琛ㄥ浐瀹氭斁鍦?`~/.cyberboss/stickers/tags.json`銆侫I 浼氫粠杩欓噷璇诲彇鍙敤鏍囩锛岀敤鎴蜂篃鍙互鐩存帴鎵嬪姩澧炲垹鏀广€?- 涓轰簡鏂逛究绠＄悊锛屽綋鍓嶈〃鎯呭寘妫€绱㈠彧鍋氭爣绛捐繃婊わ紝涓嶅仛鍚戦噺搴撳彫鍥炪€?
<a id="agent-guide"></a>
## Agent 鎺ュ叆

缁?agent 鏆撮湶鐨?Cyberboss 鑳藉姏鏄」鐩唴缁撴瀯鍖栧伐鍏枫€?
### 甯哥敤椤圭洰宸ュ叿

- `cyberboss_reminder_create`
- `cyberboss_diary_append`
- `cyberboss_timeline_write`
- `cyberboss_timeline_build`
- `cyberboss_timeline_serve`
- `cyberboss_timeline_dev`
- `cyberboss_timeline_screenshot`
- `cyberboss_channel_send_file`
- `whereabouts_current_stay`
- `whereabouts_recent_stays`
- `whereabouts_recent_moves`
- `whereabouts_snapshot`
- `whereabouts_summary`
- `cyberboss_sticker_tags`
- `cyberboss_sticker_pick`
- `cyberboss_sticker_send`
- `cyberboss_sticker_delete`
- `cyberboss_sticker_save_from_inbox`
- `cyberboss_sticker_update`
- `cyberboss_system_send`

### Agent 浣跨敤绾﹀畾

- diary銆乺eminder銆乼imeline銆乻creenshot銆乫ile-send 杩欑被 Cyberboss 鑳藉姏浣跨敤椤圭洰宸ュ叿
- 缁堢缁欎汉鎵嬪姩浣跨敤鐨勪粛鐒舵槸 `README`銆乣--help` 鍜?[docs/commands.md](./docs/commands.md) 涓殑鐢熷懡鍛ㄦ湡鍏ュ彛
- 绗竴娆℃墽琛屽け璐ユ椂锛屽厛鍙嶉鎶ラ敊锛屼笉瑕佺珛鍒昏婧愮爜

## 鏂囨。鍏ュ彛

- [docs/commands.md](./docs/commands.md)

<a id="faq"></a>
## FAQ

### 涓轰粈涔堜笉鏄洿鎺?`npm install cyberboss`锛?
鍥犱负褰撳墠娌℃湁鍙戝竷 npm package銆傛纭柟寮忔槸 `git clone` 浠撳簱鍚庯紝鍦ㄩ」鐩洰褰曢噷鎵ц `npm install`銆?
### `checkin` 鍒板簳鏄粈涔堬紵

`checkin` 灏辨槸鈥滈殢鏈鸿疆璇㈠敜閱掆€濊兘鍔涖€傜郴缁熶細鍦ㄤ竴涓殢鏈烘椂闂寸偣鍞ら啋妯″瀷锛岃瀹冭嚜宸卞垽鏂幇鍦ㄨ涓嶈涓诲姩鍑虹幇銆?
### 涓轰粈涔堣鍦ㄧ涓€娆¤繍琛屽墠灏辫缃敤鎴峰悕鍜屾€у埆锛?
鍥犱负绗竴娆¤繍琛屼换鎰?`cyberboss` 鍛戒护鏃讹紝浼氳嚜鍔ㄧ敓鎴?`~/.cyberboss/weixin-instructions.md`銆傚厛閰嶅ソ `CYBERBOSS_USER_NAME` 鍜?`CYBERBOSS_USER_GENDER`锛屽彲浠ラ伩鍏嶇敓鎴愭槑鏄句笉绗﹀悎鐜板疄鐨?instructions銆?
### 涓轰粈涔堜笉寤鸿涓€寮€濮嬪氨澶ф敼 instructions锛?
濡傛灉浣犳兂瑕佹洿寮虹殑鈥滆禌鍗氳€佹澘鈥濇晥鏋滐紝鏈€濂藉厛璁?agent 鍦ㄧ湡瀹炲璇濋噷鑷繁闀垮嚭鑺傚锛屽啀鍥炲ご淇鏄庢樉涓嶅鐨勯儴鍒嗐€傝繃鏃╂墜宸ュ啓姝昏涓猴紝閫氬父浼氳瀹冩洿鍍忚剼鏈紝涓嶅儚鐪熺殑鍦ㄧ洴浣犮€?
## License

鏈」鐩富瑕侀潰鍚戜釜浜烘湰鍦伴儴缃插満鏅璁°€傜敱浜庡畠浼氶暱鏈熷鐞嗗井淇℃秷鎭€佺嚎绋嬩笂涓嬫枃銆佹彁閱掋€佺敓娲昏建杩瑰拰鍏朵粬楂樺害绉佸瘑鐨勪釜浜轰俊鎭紝鎴戜笉甯屾湜瀹冭闂簮鍖呰鎴愪簯鏈嶅姟鍚庯紝鍐嶅弽鍚戝墺澶虹敤鎴峰浠ｇ爜鍜屾暟鎹祦鍚戠殑鐭ユ儏鏉冦€?
鍥犳锛屾湰椤圭洰閲囩敤 `AGPL-3.0-only` 鍗忚鍙戝竷銆備换浣曞熀浜庢湰椤圭洰杩涜淇敼銆佹墿灞曞苟閫氳繃缃戠粶鍚戠敤鎴锋彁渚涙湇鍔＄殑琛屼负锛岄兘蹇呴』鎸夌収 AGPL 鐨勮姹傚悜瀵瑰簲鐢ㄦ埛鎻愪緵瀹屾暣鐨勫搴旀簮浠ｇ爜銆?
鍟嗕笟浣跨敤骞堕潪澶╃劧琚姝紝浣嗗墠鎻愭槸蹇呴』瀹屾暣閬靛畧 AGPL銆傚浜庝换浣曞舰寮忕殑闂簮灏佽銆侀棴婧?SaaS 鍖栨垨鍙彁渚涙湇鍔′笉鎻愪緵婧愮爜鐨勫仛娉曪紝鏈」鐩兘鏄庣‘涓嶆杩庛€?
