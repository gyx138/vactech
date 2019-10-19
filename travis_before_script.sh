#!/bin/bash

sed -i "s~vactech.gitee.io~vactech.github.io~" _config.yml
# 替换 hexo-theme-Wikitten/_config.yml>history_control: gitee 为 github
sed -i "s~server_link: https://gitee.com~server_link: https://github.com~" theme/Wikitten/_config.yml
sed -i "s~repertory: vactech~repertory: vactech.github.io~" theme/Wikitten/_config.yml
sed -i "s~branch: hexo/wiki~branch: master~" theme/Wikitten/_config.yml
# 替换百度统计
sed -i "s~889e7313e1937fcadec1b944c9dd316a~0847191c64787500a81863beb4803445~" themes/Wikitten/_config.yml
