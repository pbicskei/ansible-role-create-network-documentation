#!/bin/bash
while read line;
do
  alias="$(echo $line | sed -e 's/()//')"
  settings="$(echo $line | sed -e 's/()/.php/')"
  file=$dir/$settings
  touch $file
  cat $api_tpl | sed -e "s/<call>/$line/" > $file
done < output.list
