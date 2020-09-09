
jq -r '.cards[] | select(.closed == false) | [.idList, .name, .desc] | @tsv' projects.json |
	while IFS=$'\t' read -r list name desc; do
		safeName="${name// /_}"
		safeName="${safeName//\//_}"
		f="${list}/${safeName}.md"
		echo "$f"
		mkdir -p $(dirname "${f}")
		cat <<- EOF 1>&"${f}"
		---
		layout: post
		title: "${name}"
		---
		$(echo -e $desc)
EOF
	done


jq -r '.lists[] | select(.closed == false) | [.name, .id]| @tsv' projects.json |
	while IFS=$'\t' read -r name id; do
		safeName="${name// /_}"
		safeName="${safeName//\//_}"
		mv ${id} "${safeName}";
	done
