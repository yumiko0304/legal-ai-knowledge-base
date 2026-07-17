# 法律 AI 高管知识库

公开只读订阅站原型，用于承载两个固定栏目：

- 每周法务AI权威资料更新
- 每周法律AI高管资讯周报

## 更新方式

自动化每周生成内容后，建议同步更新：

- `data/issues.json`
- `api/public/items.json`
- `api/public/latest.json`
- `api/public/fingerprint.json`
- `feed/all.xml`
- `feed/legal-ai-authority.xml`
- `feed/legal-ai-executive.xml`
- `index.html` 中的最新一期区域

## Agent 接入

- Skill: `legal-ai-skill/SKILL.md`
- Skill 下载包: `legal-ai-skill.zip`
- 安装脚本: `legal-ai-skill/scripts/install.sh`
- OpenAPI: `api/openapi/openapi.yaml`
- 验证问题：`请总结法律 AI 高管知识库过去 7 天最值得读的 3 条内容。`

## 推荐站点名

正式名称：法律 AI 高管知识库

说明：突出目标读者是法律行业和企业法务管理者，内容形态是可长期订阅和归档的知识库。
