# 将文件复制到对应的目标位置
mkdir -p i18n/en/docusaurus-plugin-content-docs/current/
cp -rf i18n/connector-translated/en/blog/* i18n/en/docusaurus-plugin-content-blog/
cp -rf i18n/connector-translated/en/docs/* i18n/en/docusaurus-plugin-content-docs/current/
npm run build && npm run serve