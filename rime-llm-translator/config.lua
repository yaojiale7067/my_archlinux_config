-- =========================================================
-- 文件名：config.lua
-- 存放位置：/home/yaojiale/.config/rime-llm-translator
-- 由 rime-llm-config 自动生成，请勿手动修改此文件！
-- 思考档 / 厂商私有字段已经解析成每个节点的 request_extra，Lua 只负责拼接。
-- =========================================================

return {
    active_profile = "opencodezenshare",
    profiles = {
        ["opencodezenshare"] = {
            name = "opencodezen",
            protocol = "openai-chat",
            api_url = "https://opencode.ai/zen/v1/chat/completions",
            api_key = "sk-Ol1VX7IiknlhWk5kMfOK6ltkB34qR7e3RkirMd5xhAxdGmuhsGvSMzCbLNLftDIM",
            model = "big-pickle",
            thinking = "",
            binary = "",
        },
        ["anthropic"] = {
            name = "Anthropic Claude",
            protocol = "anthropic",
            api_url = "https://api.anthropic.com/v1/messages",
            api_key = "",
            model = "",
            thinking = "",
            binary = "",
        },
        ["deepseek"] = {
            name = "DeepSeek",
            protocol = "openai-chat",
            api_url = "https://api.deepseek.com/chat/completions",
            api_key = "",
            model = "deepseek-v4-flash",
            thinking = "",
            binary = "",
            request_extra = [=[{"thinking": {"type": "disabled"}}]=],
        },
        ["gemini"] = {
            name = "Gemini",
            protocol = "openai-chat",
            api_url = "https://generativelanguage.googleapis.com/v1beta/openai/chat/completions",
            api_key = "",
            model = "gemini-3.1-flash-lite-preview",
            thinking = "",
            binary = "",
            request_extra = [=[{"reasoning_effort": "low"}]=],
        },
        ["xiaomi"] = {
            name = "Xiaomi",
            protocol = "openai-chat",
            api_url = "https://token-plan-sgp.xiaomimimo.com/v1/chat/completions",
            api_key = "",
            model = "mimo-v2.5",
            thinking = "",
            binary = "",
            request_extra = [=[{"thinking": {"type": "disabled"}}]=],
        },
        ["minimax"] = {
            name = "Minimax",
            protocol = "openai-chat",
            api_url = "https://api.minimaxi.com/v1/chat/completions",
            api_key = "",
            model = "MiniMax-M2.7",
            thinking = "",
            binary = "",
        },
        ["openrouter"] = {
            name = "OpenRouter",
            protocol = "openai-chat",
            api_url = "https://openrouter.ai/api/v1/chat/completions",
            api_key = "",
            model = "",
            thinking = "",
            binary = "",
        },
        ["ollama"] = {
            name = "Ollama",
            protocol = "openai-chat",
            api_url = "http://localhost:11434/v1/chat/completions",
            api_key = "ollama",
            model = "",
            thinking = "",
            binary = "",
        },
        ["lmstudio"] = {
            name = "LMStudio",
            protocol = "openai-chat",
            api_url = "http://localhost:1234/v1/chat/completions",
            api_key = "",
            model = "",
            thinking = "",
            binary = "",
        },
        ["miyu"] = {
            name = "Miyu CLI",
            protocol = "miyu",
            api_url = "",
            api_key = "",
            model = "auto",
            thinking = "",
            binary = "miyu",
        },
    },
    ai_trigger = "vv",
    prompt = [=[# 职责
你是中文拼音输入法引擎，把用户输入的拼音转换成通顺、合理的句子。拼音可能错拼、漏拼、乱序，请通过切分推理出正确的句子。
# 注意点
1. 准确还原语境中的英文词汇。
2. 高度重视纯首字母简拼（如 mrfz=明日方舟）。
3. 前后鼻音用户常常输错，按上下文判断正确的那个。
4. 拼音里的数字读音按语境转成阿拉伯数字：yibai=100、san=3、erlingerliu=2026、shalujiantaer=杀戮尖塔2、kimierdianliu=kimi2.6。
5. 按语境补上标点；遇到游戏、书籍、影视等作品名加《》。
6. 收到「历史输入」时它只是上文参考，「当前输入」才是这次要处理的拼音。
# 严格遵守
1. 你的输出直接作为用户的打字内容上屏，绝对不许有前置客套话（如“好的，这是…”）或后置询问（如“需要我帮忙吗？”）。
2. 保持精简，纯文本，不留多余空行，禁止使用 Markdown 的加粗（**）和标题（#）。
# 附加信息
- 用户使用的是 ArchLinux 系统。]=],
    prompt_core = [=[# 职责
你是中文拼音输入法引擎，把用户输入的拼音转换成通顺、合理的句子。拼音可能错拼、漏拼、乱序，请通过切分推理出正确的句子。
# 注意点
1. 准确还原语境中的英文词汇。
2. 高度重视纯首字母简拼（如 mrfz=明日方舟）。
3. 前后鼻音用户常常输错，按上下文判断正确的那个。
4. 拼音里的数字读音按语境转成阿拉伯数字：yibai=100、san=3、erlingerliu=2026、shalujiantaer=杀戮尖塔2、kimierdianliu=kimi2.6。
5. 按语境补上标点；遇到游戏、书籍、影视等作品名加《》。
6. 收到「历史输入」时它只是上文参考，「当前输入」才是这次要处理的拼音。
# 严格遵守
1. 你的输出直接作为用户的打字内容上屏，绝对不许有前置客套话（如“好的，这是…”）或后置询问（如“需要我帮忙吗？”）。
2. 保持精简，纯文本，不留多余空行，禁止使用 Markdown 的加粗（**）和标题（#）。
# 附加信息
- 用户使用的是 ArchLinux 系统。]=],
    prompt_rules = {
        ["call"] = [=[- `call:` 不要输出拼音转换的结果。把还原出的句子当作用户向你提出的问题，直接输出答案本身，不说废话。]=],
        ["cn"] = [=[- `cn:` 正常执行拼音转换，输出中文。]=],
        ["eng"] = [=[- `eng:` 只输出英文译文。不要输出中间的中文，不要附带原文。]=],
        ["jp"] = [=[- `jp:` 只输出日文译文。不要输出中间的中文，不要附带原文。]=],
        ["cmd"] = [=[- `cmd:` 不要输出拼音转换的结果。把还原出的句子当作需求，只输出可直接运行的命令本身，前后不许有解释、说明或代码块标记。]=],
        ["sh"] = [=[- `sh:` 不要输出拼音转换的结果。把还原出的句子当作需求，只输出 shell 脚本正文，不要用代码块包裹，不要任何解释。]=],
        ["moe"] = [=[- `moe:` 把结果改写成猫娘的语气和用词，只输出改写后的结果。]=],
    },
    prompt_rules_head = "# 本次要求",
    prompt_combo = [=[多个前缀可以组合，请举一反三：`jpmoe:`（或 `moejp:`）是日文译文加猫娘语气；`moesh:` 是生成脚本且注释用猫娘语气。多个语言前缀表示分行输出，每行一种语言，顺序与前缀顺序一致（`jpcnrs:` 即第一行日文、第二行中文、第三行俄文），行首不许出现“日文：”这类标签。前缀也可以拆开写，`jp:moe:` 等价于 `jpmoe:`。]=],
    rule_words = { "call", "cn", "eng", "jp", "cmd", "sh", "moe", "base" },
    prefix_inject = "auto",
    vocab_prompt = [=[
# 用户词库
以下是用户常用的英文词/网络黑话，拼音中出现时按原样保留，不要当拼音切分：
vibecoding、rime、bootloader、wm、de、dpi、niri、dms-shel、dms、noctalia
以下是用户约定的简拼/缩写映射，遇到时优先按映射输出：
yyds=永远的神
mrfz=明日方舟
srwc=是人我吃
yihuan=异环
sm=什么
zm=怎么
ky=可以
juele=绝了]=],
    vocab = {
        title = "# 用户词库",
        terms_head = "以下是用户常用的英文词/网络黑话，拼音中出现时按原样保留，不要当拼音切分：",
        maps_head = "以下是用户约定的简拼/缩写映射，遇到时优先按映射输出：",
        terms = { "vibecoding", "rime", "bootloader", "wm", "de", "dpi", "niri", "dms-shel", "dms", "noctalia" },
        maps = { { "yyds", "永远的神" }, { "mrfz", "明日方舟" }, { "srwc", "是人我吃" }, { "yihuan", "异环" }, { "sm", "什么" }, { "zm", "怎么" }, { "ky", "可以" }, { "juele", "绝了" } },
    },
    vocab_inject = "auto",
    no_history_prefixes = { "call", "cmd", "sh" },
    adaptive_max_tokens = false,
    prompt_cache_mark = true,
    reply_cache_disk = true,
    reply_cache_file = "/home/yaojiale/.cache/rime-llm-translator/replies.json",
    prompt_stamp = "38167ca28787",
    reply_cache_max = 500,
    reply_cache_min_len = 8,
    usage_file = "/home/yaojiale/.cache/rime-llm-translator/usage.json",
    max_tokens = 4000,
    temperature = 0.1,
    connect_timeout = 2.0,
    max_time = 30.0,
    max_history_bytes = 120,
    cli_timeout = 60.0,
    miyu_prefix = "miyu:",
    prompt_fallback = [=[输入以 `{p}:` 开头，这是没有预先定义的前缀，请按它的字面含义处理：两个字母通常是语言代码（kr=韩语、fr=法语、de=德语、es=西班牙语、rs=俄语…），这时只输出该语言的译文，不要输出中间的中文。前缀本身绝不能出现在输出里。]=],
    prefix_position = "user_after",
    prefix_words = { "call", "cn", "eng", "jp", "cmd", "sh", "moe", "base" },
    config_tool = "/usr/bin/rime-llm-config",
    tmp_dirs = { "/home/yaojiale/.config/rime-llm-translator/tmp" },
    debug_flag = "/home/yaojiale/.cache/rime-llm-translator/rime-llm-debug.flag",
    debug_log = "/home/yaojiale/.cache/rime-llm-translator/debug.log",
}
