---
name: legal-ai-executive-knowledge
description: Use when the user asks to read, summarize, monitor, or answer questions from the public Legal AI Executive Knowledge Base, including weekly legal AI official authority updates and legal AI executive intelligence. The skill uses only public read-only RSS, JSON, and source links and does not require an API key.
---

# Legal AI Executive Knowledge

Use the public read-only feeds for the “法律 AI 高管知识库”.

## Sources

Base URL is the deployed site URL. If the site is local, use the visible local path or file URL.

- All items RSS: `/feed/all.xml`
- Authority updates RSS: `/feed/legal-ai-authority.xml`
- Executive weekly RSS: `/feed/legal-ai-executive.xml`
- Public items JSON: `/api/public/items.json`
- Latest issue JSON: `/api/public/latest.json`
- Version JSON: `/api/public/version.json`
- OpenAPI: `/api/openapi/openapi.yaml`

Source Wiki pages:

- 每周法务 AI 权威资料更新: `https://aivigate.feishu.cn/wiki/VBGCwWyaMiRjJ0kf5pScn7xgnJK?from=from_copylink`
- 每周法律 AI 高管资讯周报: `https://aivigate.feishu.cn/wiki/A4h5wKHu0iaTNLk3nwwcw4jqnLg?from=from_copylink`

## Workflow

1. Prefer JSON for structured retrieval. Use RSS when the user wants subscription-style updates.
2. Treat source Wiki pages as upstream material; use the public site/RSS/API as the shareable surface.
3. For facts, policies, enforcement actions, standards, and reports, keep the original official link in the answer.
4. If the user asks for the latest weekly digest, use the most recent item in `/api/public/latest.json` or `/api/public/items.json`.
5. If a section has no meaningful new update, say so directly instead of filling with old material.

## Output Shape

For weekly summaries, group by:

- 精选内容
- 法规政策解读
- 监管动态
- 行业实务指引
- AI 治理前沿
- 调研报告
- 公务文章
- 活动预告
- 其他资料

Each item should include title, date, source organization, original link, concise summary, and practical value for enterprise legal or legal services leadership.

For regulations, guidelines, and standards, label status as one of:

- 正式生效
- 已发布待施行
- 征求意见
- 非强制性参考

## Validation Question

After installing or configuring this skill, ask:

`请总结法律 AI 高管知识库过去 7 天最值得读的 3 条内容。`

A successful answer should mention the 7-day window, return no more than 3 prioritized items, include links, and explain why legal or legal-service executives should read them.
