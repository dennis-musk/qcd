# changed by zengxianbo @Mon Dec 28 14:20:13 CST 2015
qcd ()
{
	local tmp_path=$HOME/.qcd/tmp
	local tmp_file="$tmp_path/qcd_tmp"
    mkdir -p $tmp_path
	[ -x "$tmp_file" ] || touch $tmp_file 
	chmod 770 $tmp_path
	QD=$tmp_file
	export QD
	$HOME/bin/qcd "$@"
	[ ! `cat $QD` ] || cd "`cat $QD`"
	rm -f "$QD"
    unset QD;
}
