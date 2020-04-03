#!/bin/bash

PWD=/ssd_home/averissimo/work/rpackages/pt.covid19/vignettes

rm $PWD/../README.md
rm -rf $PWD/../README_files
sudo -u averissimo -H /usr/local/bin/Rscript -e "rmarkdown::render(input = '$PWD/index.Rmd', output_format = rmarkdown::github_document(), output_file = 'README.md')"
sudo -u averissimo -H cp -r $PWD/README.md $PWD/../
sudo -u averissimo -H cp -r $PWD/README_files $PWD/../
rm -rf $PWD/README*

cd $PWD
sudo -u averissimo -H /usr/local/bin/Rscript -e "rmarkdown::clean_site('$PWD')"
sleep 3
sudo -u averissimo -H /usr/local/bin/Rscript -e "rmarkdown::render_site('$PWD')"
