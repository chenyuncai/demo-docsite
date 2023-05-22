git checkout .
git checkout l10n_master
git pull
# 将文件复制到对应的目标位置
mv i18n/connector-translated/en/blog i18n/en/docusaurus-plugin-content-blog/
mv i18n/connector-translated/en/docs i18n/en/docusaurus-plugin-content-docs/
npm run build && npm run serve