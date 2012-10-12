



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!-- ViewVC :: http://www.viewvc.org/ -->
<head>
<title>[sources] Log of /emacs/emacs/lisp/progmodes/flymake.el</title>
<meta name="generator" content="ViewVC 1.0.7" />
<link rel="stylesheet" href="/viewcvs-doc/styles.css" type="text/css" />

</head>
<body>
<div style="float: right; padding: 5px;"><a href="http://savannah.gnu.org/"><img src="http://savannah.gnu.org/images/common/floating.png" alt="Provided by GNU Savannah" width="148" height="125" /></a></div>
<h3>Savannah CVS Surfing


- Log of /emacs/emacs/lisp/progmodes/flymake.el
</h3>
<table style="margin:0; border-spacing:0" class="vc_navheader">
<tr>
<td>
<strong>

<a href="/viewvc/">

[sources]</a>
/

<a href="/viewvc/emacs/">

emacs</a>
/

<a href="/viewvc/emacs/emacs/">

emacs</a>
/

<a href="/viewvc/emacs/emacs/lisp/">

lisp</a>
/

<a href="/viewvc/emacs/emacs/lisp/progmodes/">

progmodes</a>
/



flymake.el


</strong>

</td>
</tr>
</table>
<!-- It would be nice to detect a "web.cvs.s*.*gnu.org vhost, and use /web instead of /sources... -->






<p style="margin:0;">

<a href="/viewvc/emacs/emacs/lisp/progmodes/"><img src="/viewcvs-doc/images/back_small.png" width="16" height="16" alt="Parent Directory" /> Parent Directory</a>




</p>

<hr />
<table class="auto">



<tr>
<td>Links to HEAD:</td>
<td>
(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=markup">view</a>)
(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=annotate">annotate</a>)
</td>
</tr>



<tr>
<td>Sticky Tag:</td>
<td><form method="get" action="/viewvc/emacs/emacs/lisp/progmodes/flymake.el" style="display: inline">
<div style="display: inline">
<input type="hidden" name="view" value="log" />


<select name="pathrev" onchange="submit()">
<option value=""></option>

<optgroup label="Branches">


<option>unicode-xft</option>



<option>rmail-mbox-branch</option>



<option>multi-tty</option>



<option>lexbind</option>



<option>gnus-5_10-branch</option>



<option>font-backend</option>



<option>emacs-unicode-2</option>



<option>cedet-branch</option>



<option>XFT_JHD_BRANCH</option>



<option>MAIN</option>



<option>EMACS_23_1_RC</option>



<option>EMACS_22_BASE</option>


</optgroup>

<optgroup label="Non-branch tags">


<option>unicode-xft-base</option>



<option>unicode-pre-font-backend</option>



<option>unicode-post-font-backend</option>



<option>small-dump-base</option>



<option>remove-vms</option>



<option>remove-carbon</option>



<option>multi-tty-base</option>



<option>merge-unicode-to-trunk</option>



<option>merge-multi-tty-to-trunk</option>



<option>lisp-bob</option>



<option>lexbind-base</option>



<option>gnus-5_10-pre-merge-yamaoka</option>



<option>gnus-5_10-pre-merge-josefsson</option>



<option>gnus-5_10-post-merge-yamaoka</option>



<option>gnus-5_10-post-merge-josefsson</option>



<option>gnus-5_10-branchpoint</option>



<option>font-backend-base</option>



<option>emacs-unicode-2-base</option>



<option>before-remove-vms</option>



<option>before-remove-carbon</option>



<option>before-merge-unicode-to-trunk</option>



<option>before-merge-multi-tty-to-trunk</option>



<option>before-merge-gnus-5_10</option>



<option>before-merge-emacs-app-to-trunk</option>



<option>after-merge-gnus-5_10</option>



<option>XFT_JHD_BRANCH_base</option>



<option>HEAD</option>



<option>EMACS_PRETEST_23_1_90</option>



<option>EMACS_PRETEST_23_0_96</option>



<option>EMACS_PRETEST_23_0_95</option>



<option>EMACS_PRETEST_23_0_94</option>



<option>EMACS_PRETEST_23_0_93</option>



<option>EMACS_PRETEST_23_0_92</option>



<option>EMACS_PRETEST_23_0_91</option>



<option>EMACS_PRETEST_23_0_90</option>



<option>EMACS_PRETEST_22_2_92</option>



<option>EMACS_PRETEST_22_2_91</option>



<option>EMACS_PRETEST_22_2_90</option>



<option>EMACS_PRETEST_22_1_92</option>



<option>EMACS_PRETEST_22_1_91</option>



<option>EMACS_PRETEST_22_1_90</option>



<option>EMACS_PRETEST_22_0_990</option>



<option>EMACS_PRETEST_22_0_99</option>



<option>EMACS_PRETEST_22_0_98</option>



<option>EMACS_PRETEST_22_0_97</option>



<option>EMACS_PRETEST_22_0_96</option>



<option>EMACS_PRETEST_22_0_95</option>



<option>EMACS_PRETEST_22_0_94</option>



<option>EMACS_PRETEST_22_0_93</option>



<option>EMACS_PRETEST_22_0_92</option>



<option>EMACS_PRETEST_22_0_91</option>



<option>EMACS_PRETEST_22_0_90</option>



<option>EMACS_23_1_BASE</option>



<option>EMACS_23_1</option>



<option>EMACS_22_BRANCHPOINT</option>



<option>EMACS_22_3</option>



<option>EMACS_22_2</option>



<option>EMACS_22_1</option>



<option>CEDET_BASE</option>


</optgroup>

</select>

<input type="submit" value="Set" />
</div>
</form>

</td>
</tr>
</table>
 








<div>
<hr />

<a name="rev1.2.4.41"></a>

<a name="lexbind"></a>

Revision <strong>1.2.4.41</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.41&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.41">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.41">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.41&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Sep 18 08:01:24 2009 UTC</em> (2 years, 11 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.40: +6 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.40&amp;r2=1.2.4.41">previous 1.2.4.40</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.41">branch point 1.2</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.2.4.41">next main 1.63</a>







<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-103
</pre>
</div>



<div>
<hr />

<a name="rev1.63"></a>
<a name="EMACS_PRETEST_23_1_90"></a>
<a name="HEAD"></a>


Revision <strong>1.63</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.63&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.63">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.63">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Sep  1 03:18:52 2009 UTC</em> (3 years ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_1_90"><strong>EMACS_PRETEST_23_1_90</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=HEAD"><strong>HEAD</strong></a>






<br />Changes since <strong>1.62: +6 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.62&amp;r2=1.63">previous 1.62</a>










<pre class="vc_log">Use forward-line rather than goto-line.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.40"></a>


Revision <strong>1.2.4.40</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.40&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.40">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.40">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.40&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Apr 10 07:08:50 2009 UTC</em> (3 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.39: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.39&amp;r2=1.2.4.40">previous 1.2.4.39</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.40">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-102
</pre>
</div>



<div>
<hr />

<a name="rev1.62"></a>
<a name="CEDET_BASE"></a>
<a name="EMACS_23_1"></a>
<a name="EMACS_23_1_BASE"></a>
<a name="EMACS_PRETEST_23_0_95"></a>
<a name="EMACS_PRETEST_23_0_96"></a>
<a name="EMACS_PRETEST_23_0_94"></a>
<a name="EMACS_PRETEST_23_0_93"></a>
<a name="EMACS_PRETEST_23_0_92"></a>


Revision <strong>1.62</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.62&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.62">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.62">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.62&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Mar 13 20:33:27 2009 UTC</em> (3 years, 6 months ago) by <em>deego</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=CEDET_BASE"><strong>CEDET_BASE</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_23_1"><strong>EMACS_23_1</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_23_1_BASE"><strong>EMACS_23_1_BASE</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_92"><strong>EMACS_PRETEST_23_0_92</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_93"><strong>EMACS_PRETEST_23_0_93</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_94"><strong>EMACS_PRETEST_23_0_94</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_95"><strong>EMACS_PRETEST_23_0_95</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_96"><strong>EMACS_PRETEST_23_0_96</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_23_1_RC"><strong>EMACS_23_1_RC</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=cedet-branch"><strong>cedet-branch</strong></a>





<br />Changes since <strong>1.61: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.61&amp;r2=1.62">previous 1.61</a>










<pre class="vc_log">m-v corrections.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.39"></a>


Revision <strong>1.2.4.39</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.39&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.39">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.39">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.39&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Mar  9 05:52:10 2009 UTC</em> (3 years, 6 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.38: +5 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.38&amp;r2=1.2.4.39">previous 1.2.4.38</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.39">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-101
</pre>
</div>



<div>
<hr />

<a name="rev1.61"></a>
<a name="lexbind-base"></a>
<a name="EMACS_PRETEST_23_0_91"></a>


Revision <strong>1.61</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.61&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.61">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.61">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.61&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Feb 18 07:41:13 2009 UTC</em> (3 years, 6 months ago) by <em>m061211</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_91"><strong>EMACS_PRETEST_23_0_91</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind-base"><strong>lexbind-base</strong></a>






<br />Changes since <strong>1.60: +5 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.60&amp;r2=1.61">previous 1.60</a>










<pre class="vc_log">(flymake): Add defgroup.  (Bug#2356)
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.38"></a>


Revision <strong>1.2.4.38</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.38&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.38">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.38">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.38&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jan 22 07:59:13 2009 UTC</em> (3 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.37: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.37&amp;r2=1.2.4.38">previous 1.2.4.37</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.38">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-99
</pre>
</div>



<div>
<hr />

<a name="rev1.60"></a>
<a name="EMACS_PRETEST_23_0_90"></a>


Revision <strong>1.60</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.60&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.60">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.60">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.60&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan  5 03:23:34 2009 UTC</em> (3 years, 8 months ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_23_0_90"><strong>EMACS_PRETEST_23_0_90</strong></a>






<br />Changes since <strong>1.59: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.59&amp;r2=1.60">previous 1.59</a>










<pre class="vc_log">Add 2009 to copyright years.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.37"></a>


Revision <strong>1.2.4.37</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.37&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.37">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.37">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.37&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Dec 22 09:13:22 2008 UTC</em> (3 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.36: +1 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.36&amp;r2=1.2.4.37">previous 1.2.4.36</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.37">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-97
</pre>
</div>



<div>
<hr />

<a name="rev1.59"></a>
<a name="small-dump-base"></a>


Revision <strong>1.59</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.59&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.59">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.59">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.59&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Oct 25 15:18:54 2008 UTC</em> (3 years, 10 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=small-dump-base"><strong>small-dump-base</strong></a>






<br />Changes since <strong>1.58: +1 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.58&amp;r2=1.59">previous 1.58</a>










<pre class="vc_log">* files.el (locate-dominating-stop-dir-regexp): New var.
(locate-dominating-file): Change arg from a regexp to a file name.
Rewrite using the vc-find-root code to avoid directory-files which is
too slow.  Obey locate-dominating-stop-dir-regexp.
Don't pay attention to changes in owner.
(project-find-settings-file): Adjust call to locate-dominating-file.

* progmodes/flymake.el (flymake-find-buildfile):
Adjust call to locate-dominating-file.

* vc-hooks.el (vc-find-root): Use locate-dominating-file.
(vc-ignore-dir-regexp): Use locate-dominating-stop-dir-regexp.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.36"></a>


Revision <strong>1.2.4.36</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.36&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.36">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.36">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.36&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Oct  7 04:42:58 2008 UTC</em> (3 years, 11 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.35: +3 -5 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.35&amp;r2=1.2.4.36">previous 1.2.4.35</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.36">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-96
</pre>
</div>



<div>
<hr />

<a name="rev1.58"></a>


Revision <strong>1.58</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.58&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.58">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.58">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.58&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Sep  7 19:05:05 2008 UTC</em> (4 years ago) by <em>cyd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.57: +3 -5 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.57&amp;r2=1.58">previous 1.57</a>










<pre class="vc_log">(flymake-parse-err-lines): Filter out errors occurring in different
files.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.35"></a>


Revision <strong>1.2.4.35</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.35&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.35">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.35">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.35&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Jul 26 14:16:13 2008 UTC</em> (4 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.34: +4 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.34&amp;r2=1.2.4.35">previous 1.2.4.34</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.35">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-94
</pre>
</div>



<div>
<hr />

<a name="rev1.57"></a>
<a name="before-remove-carbon"></a>
<a name="remove-carbon"></a>
<a name="remove-vms"></a>
<a name="before-remove-vms"></a>


Revision <strong>1.57</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.57&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.57">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.57">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.57&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul 23 22:03:40 2008 UTC</em> (4 years, 1 month ago) by <em>cyd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-remove-carbon"><strong>before-remove-carbon</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-remove-vms"><strong>before-remove-vms</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=remove-carbon"><strong>remove-carbon</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=remove-vms"><strong>remove-vms</strong></a>






<br />Changes since <strong>1.56: +4 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.56&amp;r2=1.57">previous 1.56</a>










<pre class="vc_log">Add terminal class check to faces in last change.
</pre>
</div>



<div>
<hr />

<a name="rev1.46.2.4"></a>
<a name="EMACS_22_3"></a>
<a name="EMACS_PRETEST_22_2_92"></a>
<a name="EMACS_PRETEST_22_2_90"></a>
<a name="EMACS_PRETEST_22_2_91"></a>

<a name="EMACS_22_BASE"></a>

Revision <strong>1.46.2.4</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.4&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.4">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.2.4">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.4&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul 23 22:02:06 2008 UTC</em> (4 years, 1 month ago) by <em>cyd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BASE"><strong>EMACS_22_BASE</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_3"><strong>EMACS_22_3</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_2_90"><strong>EMACS_PRETEST_22_2_90</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_2_91"><strong>EMACS_PRETEST_22_2_91</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_2_92"><strong>EMACS_PRETEST_22_2_92</strong></a>






<br />Changes since <strong>1.46.2.3: +4 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.3&amp;r2=1.46.2.4">previous 1.46.2.3</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.2.4">branch point 1.46</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.46.2.4">next main 1.63</a>







<pre class="vc_log">(flymake-errline, flymake-warnline): Use more suitable colors on dark
displays.
</pre>
</div>



<div>
<hr />

<a name="rev1.56"></a>


Revision <strong>1.56</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.56&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.56">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.56">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.56&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul 23 21:54:48 2008 UTC</em> (4 years, 1 month ago) by <em>cyd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.55: +4 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.55&amp;r2=1.56">previous 1.55</a>










<pre class="vc_log">(flymake-errline, flymake-warnline): Use more suitable colors on dark
displays.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.34"></a>


Revision <strong>1.2.4.34</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.34&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.34">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.34">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.34&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jun  3 16:05:58 2008 UTC</em> (4 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.33: +3 -5 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.33&amp;r2=1.2.4.34">previous 1.2.4.33</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.34">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-85
</pre>
</div>



<div>
<hr />

<a name="rev1.55"></a>
<a name="before-merge-emacs-app-to-trunk"></a>


Revision <strong>1.55</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.55&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.55">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.55">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.55&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jun  3 08:12:02 2008 UTC</em> (4 years, 3 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-merge-emacs-app-to-trunk"><strong>before-merge-emacs-app-to-trunk</strong></a>






<br />Changes since <strong>1.54: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.54&amp;r2=1.55">previous 1.54</a>










<pre class="vc_log">(flymake-process-filter): Make sure the source buffer isn't dead.
</pre>
</div>



<div>
<hr />

<a name="rev1.54"></a>


Revision <strong>1.54</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.54&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.54">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.54">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.54&amp;view=log">[select for diffs]</a>




<br />

<em>Wed May 28 17:35:34 2008 UTC</em> (4 years, 3 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.53: +2 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.53&amp;r2=1.54">previous 1.53</a>










<pre class="vc_log">* progmodes/flymake.el (flymake-save-buffer-in-file):
* shadowfile.el (shadow-copy-file):
* arc-mode.el (archive-*-write-file-member):
* files.el (diff-buffer-with-file):
* subr.el (with-temp-file): Pass nil to write-region.
* jka-compr.el (jka-compr-write-region): Preserve `start's nullness.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.33"></a>


Revision <strong>1.2.4.33</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.33&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.33">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.33">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.33&amp;view=log">[select for diffs]</a>




<br />

<em>Thu May  8 11:47:07 2008 UTC</em> (4 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.32: +4 -6 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.32&amp;r2=1.2.4.33">previous 1.2.4.32</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.33">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-82
</pre>
</div>



<div>
<hr />

<a name="rev1.53"></a>


Revision <strong>1.53</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.53&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.53">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.53">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.53&amp;view=log">[select for diffs]</a>




<br />

<em>Tue May  6 07:18:24 2008 UTC</em> (4 years, 4 months ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.52: +4 -6 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.52&amp;r2=1.53">previous 1.52</a>










<pre class="vc_log">Switch to recommended form of GPLv3 permissions notice.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.32"></a>


Revision <strong>1.2.4.32</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.32&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.32">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.32">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.32&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Feb 25 09:55:52 2008 UTC</em> (4 years, 6 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.31: +13 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.31&amp;r2=1.2.4.32">previous 1.2.4.31</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.32">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-76
</pre>
</div>



<div>
<hr />

<a name="rev1.52"></a>
<a name="font-backend-base"></a>
<a name="lisp-bob"></a>


Revision <strong>1.52</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.52&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.52">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.52">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.52&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Feb 13 19:30:58 2008 UTC</em> (4 years, 7 months ago) by <em>hexmode</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=font-backend-base"><strong>font-backend-base</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lisp-bob"><strong>lisp-bob</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=font-backend"><strong>font-backend</strong></a>





<br />Changes since <strong>1.51: +13 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.51&amp;r2=1.52">previous 1.51</a>










<pre class="vc_log">add support to flymake for php, add support to flymake for perl module files (.pm)
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.31"></a>


Revision <strong>1.2.4.31</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.31&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.31">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.31">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.31&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jan  9 11:17:29 2008 UTC</em> (4 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.30: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.30&amp;r2=1.2.4.31">previous 1.2.4.30</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.31">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-69
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.29"></a>

<a name="emacs-unicode-2"></a>

Revision <strong>1.2.2.29</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.29&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.29">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.29">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.29&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jan  9 01:19:36 2008 UTC</em> (4 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.28: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.28&amp;r2=1.2.2.29">previous 1.2.2.28</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.29">branch point 1.2</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.2.2.29">next main 1.63</a>







<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-312
</pre>
</div>



<div>
<hr />

<a name="rev1.51"></a>
<a name="merge-unicode-to-trunk"></a>
<a name="before-merge-unicode-to-trunk"></a>
<a name="emacs-unicode-2-base"></a>


Revision <strong>1.51</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.51&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.51">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.51">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.51&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan  8 20:46:13 2008 UTC</em> (4 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-merge-unicode-to-trunk"><strong>before-merge-unicode-to-trunk</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2-base"><strong>emacs-unicode-2-base</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=merge-unicode-to-trunk"><strong>merge-unicode-to-trunk</strong></a>






<br />Changes since <strong>1.50: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.50&amp;r2=1.51">previous 1.50</a>










<pre class="vc_log">Merge from emacs--rel--22

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--devo--0--patch-987
</pre>
</div>



<div>
<hr />

<a name="rev1.46.2.3"></a>
<a name="EMACS_PRETEST_22_1_91"></a>
<a name="EMACS_22_2"></a>
<a name="EMACS_PRETEST_22_1_90"></a>
<a name="EMACS_PRETEST_22_1_92"></a>


Revision <strong>1.46.2.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.2.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.3&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan  7 02:10:52 2008 UTC</em> (4 years, 8 months ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BASE"><strong>EMACS_22_BASE</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_2"><strong>EMACS_22_2</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_1_90"><strong>EMACS_PRETEST_22_1_90</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_1_91"><strong>EMACS_PRETEST_22_1_91</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_1_92"><strong>EMACS_PRETEST_22_1_92</strong></a>






<br />Changes since <strong>1.46.2.2: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.2&amp;r2=1.46.2.3">previous 1.46.2.2</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.2.3">branch point 1.46</a>








<pre class="vc_log">Add 2008 to copyright years.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.30"></a>


Revision <strong>1.2.4.30</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.30&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.30">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.30">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.30&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Dec  6 23:42:52 2007 UTC</em> (4 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.29: +3 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.29&amp;r2=1.2.4.30">previous 1.2.4.29</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.30">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-63
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.28"></a>


Revision <strong>1.2.2.28</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.28&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.28">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.28">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.28&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Dec  6 09:51:00 2007 UTC</em> (4 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.27: +3 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.27&amp;r2=1.2.2.28">previous 1.2.2.27</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.28">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-294
</pre>
</div>



<div>
<hr />

<a name="rev1.50"></a>


Revision <strong>1.50</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.50&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.50">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.50">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.50&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Nov 17 09:46:37 2007 UTC</em> (4 years, 9 months ago) by <em>m061211</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.49: +3 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.49&amp;r2=1.50">previous 1.49</a>










<pre class="vc_log">(flymake-goto-file-and-line): Fix typo in string.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.29"></a>


Revision <strong>1.2.4.29</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.29&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.29">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.29">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.29&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Oct 27 09:40:32 2007 UTC</em> (4 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.28: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.28&amp;r2=1.2.4.29">previous 1.2.4.28</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.29">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 839-851)

   - Update from CVS
   - Change capitalization of VC backend names for new backends
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 84-92)

   - Update from CVS
   - Change capitalization of VC backend names for new backends
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 242-244)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-54
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.28"></a>


Revision <strong>1.2.4.28</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.28&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.28">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.28">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.28&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Oct 27 09:38:51 2007 UTC</em> (4 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.27: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.27&amp;r2=1.2.4.28">previous 1.2.4.27</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.28">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 824-838)

   - Update from CVS
   - Merge from emacs--rel--22
   - Remove lisp/erc/erc-nicklist.el
   - Update some .arch-inventory files
   - Fix void function definition error in cus-edit.el
   - Restore lisp/emacs-lisp/cl-loaddefs.el

 * emacs--rel--22  (patch 70-83)

   - Update from CVS
   - Remove lisp/erc/erc-nicklist.el
   - Update some .arch-inventory files
   - Indicate that emacs--devo--0--patch-834 does not need to be applied
   - Merge from gnus--rel--5.10
   - Restore lisp/emacs-lisp/cl-loaddefs.el

 * gnus--rel--5.10  (patch 239-241)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-53
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.27"></a>


Revision <strong>1.2.4.27</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.27&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.27">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.27">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.27&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Oct 27 09:34:21 2007 UTC</em> (4 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.26: +8 -17 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.26&amp;r2=1.2.4.27">previous 1.2.4.26</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.27">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 816-823)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 59-69)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 237-238)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-52
</pre>
</div>



<div>
<hr />

<a name="rev1.46.4.3"></a>

<a name="multi-tty"></a>

Revision <strong>1.46.4.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.4.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.4.3&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Aug 13 13:50:15 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=multi-tty"><strong>multi-tty</strong></a>







<br />Changes since <strong>1.46.4.2: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.4.2&amp;r2=1.46.4.3">previous 1.46.4.2</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.4.3">branch point 1.46</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.46.4.3">next main 1.63</a>







<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 846-851)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 88-92)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 242-244)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--multi-tty--0--patch-31
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.27"></a>


Revision <strong>1.2.2.27</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.27&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.27">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.27">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.27&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Aug 13 13:47:25 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.26: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.26&amp;r2=1.2.2.27">previous 1.2.2.26</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.27">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 846-851)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 88-92)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 242-244)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-246
</pre>
</div>



<div>
<hr />

<a name="rev1.49"></a>
<a name="multi-tty-base"></a>
<a name="before-merge-multi-tty-to-trunk"></a>
<a name="merge-multi-tty-to-trunk"></a>


Revision <strong>1.49</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.49&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.49">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.49">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.49&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Aug 13 13:40:54 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-merge-multi-tty-to-trunk"><strong>before-merge-multi-tty-to-trunk</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=merge-multi-tty-to-trunk"><strong>merge-multi-tty-to-trunk</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=multi-tty-base"><strong>multi-tty-base</strong></a>






<br />Changes since <strong>1.48: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.48&amp;r2=1.49">previous 1.48</a>










<pre class="vc_log">Merge from emacs--rel--22

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--devo--0--patch-851
</pre>
</div>



<div>
<hr />

<a name="rev1.46.2.2"></a>


Revision <strong>1.46.2.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.2.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.2&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Aug 12 18:01:29 2007 UTC</em> (5 years, 1 month ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BASE"><strong>EMACS_22_BASE</strong></a>







<br />Changes since <strong>1.46.2.1: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.1&amp;r2=1.46.2.2">previous 1.46.2.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.2.2">branch point 1.46</a>








<pre class="vc_log">(flymake-err-line-patterns): Fix infloop in javac regexp.
</pre>
</div>



<div>
<hr />

<a name="rev1.46.4.2"></a>


Revision <strong>1.46.4.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.4.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.4.2&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jul 31 05:49:18 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=multi-tty"><strong>multi-tty</strong></a>







<br />Changes since <strong>1.46.4.1: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.4.1&amp;r2=1.46.4.2">previous 1.46.4.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.4.2">branch point 1.46</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 824-838)

   - Update from CVS
   - Merge from emacs--rel--22
   - Remove lisp/erc/erc-nicklist.el
   - Update some .arch-inventory files
   - Fix void function definition error in cus-edit.el
   - Restore lisp/emacs-lisp/cl-loaddefs.el

 * emacs--rel--22  (patch 70-83)

   - Update from CVS
   - Remove lisp/erc/erc-nicklist.el
   - Update some .arch-inventory files
   - Indicate that emacs--devo--0--patch-834 does not need to be applied
   - Merge from gnus--rel--5.10
   - Restore lisp/emacs-lisp/cl-loaddefs.el

 * gnus--rel--5.10  (patch 239-241)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--multi-tty--0--patch-28
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.26"></a>


Revision <strong>1.2.2.26</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.26&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.26">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.26">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.26&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Jul 27 10:51:12 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.25: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.25&amp;r2=1.2.2.26">previous 1.2.2.25</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.26">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 824-831)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 70-74)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-238
</pre>
</div>



<div>
<hr />

<a name="rev1.48"></a>


Revision <strong>1.48</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.48&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.48">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.48">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.48&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jul 26 05:27:26 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.47: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.47&amp;r2=1.48">previous 1.47</a>










<pre class="vc_log">Merge from emacs--rel--22

Patches applied:

 * emacs--rel--22  (patch 70-73)

   - Update from CVS

2007-07-25  Glenn Morris  &lt;<a href="mailto:rgm&#64;gnu.org">rgm&#64;gnu.org</a>&gt;

   * Relicense all FSF files to GPLv3 or later.

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--devo--0--patch-828
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19.2.5"></a>

<a name="unicode-xft"></a>

Revision <strong>1.2.2.19.2.5</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.5&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.5">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19.2.5">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.5&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul 25 05:45:51 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>







<br />Changes since <strong>1.2.2.19.2.4: +8 -17 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.4&amp;r2=1.2.2.19.2.5">previous 1.2.2.19.2.4</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.19.2.5">branch point 1.2.2.19</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.29&amp;r2=1.2.2.19.2.5">next main 1.2.2.29</a>







<pre class="vc_log">Merge from emacs--unicode--0

Patches applied:

 * emacs--devo--0  (patch 814-823)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 59-69)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * emacs--unicode--0  (patch 232-235)

   - Merge from emacs--devo--0
   - Update from CVS

 * gnus--rel--5.10  (patch 237-238)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode-xft--0--patch-66
</pre>
</div>



<div>
<hr />

<a name="rev1.46.2.1"></a>


Revision <strong>1.46.2.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.2.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.2.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.2.1&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul 25 04:29:32 2007 UTC</em> (5 years, 1 month ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BASE"><strong>EMACS_22_BASE</strong></a>







<br />Changes since <strong>1.46: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.2.1">previous 1.46</a>










<pre class="vc_log">Switch license to GPLv3 or later.
</pre>
</div>



<div>
<hr />

<a name="rev1.46.4.1"></a>


Revision <strong>1.46.4.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46.4.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46.4.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46.4.1&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jul 24 01:24:58 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=multi-tty"><strong>multi-tty</strong></a>







<br />Changes since <strong>1.46: +8 -17 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.46.4.1">previous 1.46</a>










<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 814-823)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 59-69)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 237-238)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--multi-tty--0--patch-26
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.25"></a>
<a name="unicode-xft-base"></a>


Revision <strong>1.2.2.25</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.25&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.25">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.25">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.25&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jul 24 01:23:29 2007 UTC</em> (5 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft-base"><strong>unicode-xft-base</strong></a>






<br />Changes since <strong>1.2.2.24: +8 -17 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.24&amp;r2=1.2.2.25">previous 1.2.2.24</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.25">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 816-823)

   - Update from CVS
   - Merge from emacs--rel--22

 * emacs--rel--22  (patch 59-69)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 237-238)

   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-235
</pre>
</div>



<div>
<hr />

<a name="rev1.47"></a>


Revision <strong>1.47</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.47&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.47">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.47">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.47&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Jul 20 04:09:07 2007 UTC</em> (5 years, 1 month ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.46: +8 -17 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;r2=1.47">previous 1.46</a>










<pre class="vc_log">(flymake-buildfile-dirs): Remove.
(flymake-find-buildfile): Use locate-dominating-file.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.26"></a>


Revision <strong>1.2.4.26</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.26&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.26">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.26">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.26&amp;view=log">[select for diffs]</a>




<br />

<em>Tue May  1 23:51:39 2007 UTC</em> (5 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.25: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.25&amp;r2=1.2.4.26">previous 1.2.4.25</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.26">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 676-697)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Release ERC 5.2.

 * gnus--rel--5.10  (patch 211-215)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-45
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19.2.4"></a>


Revision <strong>1.2.2.19.2.4</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.4&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.4">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19.2.4">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.4&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Apr 11 00:40:31 2007 UTC</em> (5 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>







<br />Changes since <strong>1.2.2.19.2.3: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.3&amp;r2=1.2.2.19.2.4">previous 1.2.2.19.2.3</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.19.2.4">branch point 1.2.2.19</a>








<pre class="vc_log">Merge from emacs--unicode--0

Patches applied:

 * emacs--devo--0  (patch 670-697)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Release ERC 5.2.

 * emacs--unicode--0  (patch 185-189)

   - Merge from emacs--devo--0
   - Update from CVS
   - vc-bzr.el: New file.

 * gnus--rel--5.10  (patch 209-215)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode-xft--0--patch-59
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.24"></a>


Revision <strong>1.2.2.24</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.24&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.24">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.24">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.24&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Apr 11 00:17:21 2007 UTC</em> (5 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.23: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.23&amp;r2=1.2.2.24">previous 1.2.2.23</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.24">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 675-697)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Release ERC 5.2.

 * gnus--rel--5.10  (patch 211-215)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-189
</pre>
</div>



<div>
<hr />

<a name="rev1.46"></a>
<a name="EMACS_22_1"></a>
<a name="EMACS_PRETEST_22_0_990"></a>
<a name="EMACS_22_BRANCHPOINT"></a>
<a name="EMACS_PRETEST_22_0_98"></a>
<a name="EMACS_PRETEST_22_0_99"></a>
<a name="EMACS_PRETEST_22_0_97"></a>


Revision <strong>1.46</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.46">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.46">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.46&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Mar 31 09:36:58 2007 UTC</em> (5 years, 5 months ago) by <em>eliz</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_1"><strong>EMACS_22_1</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BRANCHPOINT"><strong>EMACS_22_BRANCHPOINT</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_97"><strong>EMACS_PRETEST_22_0_97</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_98"><strong>EMACS_PRETEST_22_0_98</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_99"><strong>EMACS_PRETEST_22_0_99</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_990"><strong>EMACS_PRETEST_22_0_990</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_22_BASE"><strong>EMACS_22_BASE</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=multi-tty"><strong>multi-tty</strong></a>





<br />Changes since <strong>1.45: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.45&amp;r2=1.46">previous 1.45</a>










<pre class="vc_log">(flymake-err-line-patterns): Doc fix.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.25"></a>


Revision <strong>1.2.4.25</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.25&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.25">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.25">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.25&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Feb 11 14:41:52 2007 UTC</em> (5 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.24: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.24&amp;r2=1.2.4.25">previous 1.2.4.24</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.25">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 615-622)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 197-199)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-40
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.24"></a>


Revision <strong>1.2.4.24</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.24&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.24">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.24">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.24&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Feb 11 14:34:42 2007 UTC</em> (5 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.23: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.23&amp;r2=1.2.4.24">previous 1.2.4.23</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.24">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 586-614)

   - Update from CVS
   - Update from erc--emacs--22
   - Merge from gnus--rel--5.10
   - Merge from erc--main--0
   - Make byte compiler correctly write circular constants

 * gnus--rel--5.10  (patch 186-196)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-39
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19.2.3"></a>


Revision <strong>1.2.2.19.2.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19.2.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.3&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan 30 23:02:39 2007 UTC</em> (5 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>







<br />Changes since <strong>1.2.2.19.2.2: +3 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.2&amp;r2=1.2.2.19.2.3">previous 1.2.2.19.2.2</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.19.2.3">branch point 1.2.2.19</a>








<pre class="vc_log">Merge from emacs--unicode--0

Patches applied:

 * emacs--devo--0  (patch 586-621)

   - Update from CVS
   - Update from erc--emacs--22
   - Merge from gnus--rel--5.10
   - Merge from erc--main--0
   - Make byte compiler correctly write circular constants

 * emacs--unicode--0  (patch 161-166)
 * gnus--rel--5.10  (patch 186-199)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode-xft--0--patch-53
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.23"></a>


Revision <strong>1.2.2.23</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.23&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.23">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.23">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.23&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan 30 22:22:28 2007 UTC</em> (5 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.22: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.22&amp;r2=1.2.2.23">previous 1.2.2.22</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.23">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 615-621)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 197-199)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-166
</pre>
</div>



<div>
<hr />

<a name="rev1.45"></a>
<a name="EMACS_PRETEST_22_0_94"></a>
<a name="EMACS_PRETEST_22_0_95"></a>
<a name="EMACS_PRETEST_22_0_96"></a>


Revision <strong>1.45</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.45&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.45">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.45">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.45&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan 29 16:18:04 2007 UTC</em> (5 years, 7 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_94"><strong>EMACS_PRETEST_22_0_94</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_95"><strong>EMACS_PRETEST_22_0_95</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_96"><strong>EMACS_PRETEST_22_0_96</strong></a>






<br />Changes since <strong>1.44: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.44&amp;r2=1.45">previous 1.44</a>










<pre class="vc_log">(flymake-init-create-temp-source-and-master-buffer-copy): Fix typo in docstring.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.22"></a>


Revision <strong>1.2.2.22</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.22&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.22">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.22">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.22&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Jan 26 06:15:49 2007 UTC</em> (5 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.21: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.21&amp;r2=1.2.2.22">previous 1.2.2.21</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.22">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 586-614)

   - Update from CVS
   - Update from erc--emacs--22
   - Merge from gnus--rel--5.10
   - Merge from erc--main--0
   - Make byte compiler correctly write circular constants

 * gnus--rel--5.10  (patch 186-196)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-162
</pre>
</div>



<div>
<hr />

<a name="rev1.44"></a>
<a name="EMACS_PRETEST_22_0_93"></a>


Revision <strong>1.44</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.44&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.44">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.44">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.44&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Jan 21 03:20:45 2007 UTC</em> (5 years, 7 months ago) by <em>gm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_93"><strong>EMACS_PRETEST_22_0_93</strong></a>






<br />Changes since <strong>1.43: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.43&amp;r2=1.44">previous 1.43</a>










<pre class="vc_log">Add 2007 to copyright years.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19.2.2"></a>


Revision <strong>1.2.2.19.2.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19.2.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.2&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan  2 01:41:55 2007 UTC</em> (5 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>







<br />Changes since <strong>1.2.2.19.2.1: +27 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.1&amp;r2=1.2.2.19.2.2">previous 1.2.2.19.2.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.19.2.2">branch point 1.2.2.19</a>








<pre class="vc_log">Merge from emacs--unicode--0

Patches applied:

 * emacs--devo--0  (patch 523-582)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Update from erc--emacs--22
   - erc-iswitchb: Temporarily enable iswitchb mode

 * emacs--unicode--0  (patch 150-159)

   - Merge from emacs--devo--0
   - Update from CVS
   - Fix ChangeLog
   - Update from CVS: src/regex.c (regex_compile): Synch with HEAD.
   - Regenerate configure with autoconf 2.61

 * gnus--rel--5.10  (patch 168-185)

   - Update from CVS
   - Merge from emacs--devo--0
   - Update from CVS: lisp/legacy-gnus-agent.el: Add Copyright notice.

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode-xft--0--patch-51
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.23"></a>


Revision <strong>1.2.4.23</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.23&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.23">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.23">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.23&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Dec 16 03:52:31 2006 UTC</em> (5 years, 8 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.22: +27 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.22&amp;r2=1.2.4.23">previous 1.2.4.22</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.23">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 523-544)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 168-171)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-35
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.21"></a>


Revision <strong>1.2.2.21</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.21&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.21">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.21">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.21&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Dec  7 04:13:58 2006 UTC</em> (5 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.20: +27 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.20&amp;r2=1.2.2.21">previous 1.2.2.20</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.21">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 523-544)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 168-171)

   - Update from CVS
   - Merge from emacs--devo--0

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-150
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.22"></a>


Revision <strong>1.2.4.22</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.22&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.22">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.22">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.22&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Dec  4 12:13:23 2006 UTC</em> (5 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.21: +3 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.21&amp;r2=1.2.4.22">previous 1.2.4.21</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.22">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 476-490)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 153-160)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-31
</pre>
</div>



<div>
<hr />

<a name="rev1.43"></a>
<a name="EMACS_PRETEST_22_0_92"></a>


Revision <strong>1.43</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.43&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.43">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.43">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.43&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Nov 25 13:28:43 2006 UTC</em> (5 years, 9 months ago) by <em>eliz</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_92"><strong>EMACS_PRETEST_22_0_92</strong></a>






<br />Changes since <strong>1.42: +27 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.42&amp;r2=1.43">previous 1.42</a>










<pre class="vc_log">(flymake-posn-at-point-as-event): New function.
(flymake-popup-menu): Use it instead of posn-at-point.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.20"></a>


Revision <strong>1.2.2.20</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.20&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.20">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.20">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.20&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Oct 30 08:54:31 2006 UTC</em> (5 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.19: +3 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.20">previous 1.2.2.19</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.20">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 476-489)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 153-160)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-127
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19.2.1"></a>


Revision <strong>1.2.2.19.2.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19.2.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19.2.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19.2.1&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Oct 30 08:35:40 2006 UTC</em> (5 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>







<br />Changes since <strong>1.2.2.19: +3 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;r2=1.2.2.19.2.1">previous 1.2.2.19</a>










<pre class="vc_log">Merge from emacs--unicode--0

Patches applied:

 * emacs--devo--0  (patch 476-489)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * emacs--unicode--0  (patch 126-127)

   - Update from CVS
   - Merge from emacs--devo--0

 * gnus--rel--5.10  (patch 153-160)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode-xft--0--patch-44
</pre>
</div>



<div>
<hr />

<a name="rev1.42"></a>
<a name="EMACS_PRETEST_22_0_90"></a>
<a name="EMACS_PRETEST_22_0_91"></a>


Revision <strong>1.42</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.42&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.42">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.42">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.42&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Oct 15 20:42:28 2006 UTC</em> (5 years, 10 months ago) by <em>kfstorm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_90"><strong>EMACS_PRETEST_22_0_90</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=EMACS_PRETEST_22_0_91"><strong>EMACS_PRETEST_22_0_91</strong></a>






<br />Changes since <strong>1.41: +3 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.41&amp;r2=1.42">previous 1.41</a>










<pre class="vc_log">2006-10-15  Lennart Borgman  &lt;<a href="mailto:lennart.borgman.073&#64;student.lu.se">lennart.borgman.073&#64;student.lu.se</a>&gt;
(flymake-get-project-include-dirs-imp): Use shell-quote-argument.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.21"></a>


Revision <strong>1.2.4.21</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.21&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.21">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.21">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.21&amp;view=log">[select for diffs]</a>




<br />

<em>Wed May 17 06:17:09 2006 UTC</em> (6 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.20: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.20&amp;r2=1.2.4.21">previous 1.2.4.20</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.21">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 81-96)

   - Update from CVS
   - Fix compiler error in erc-dcc.el.
   - Merge from erc--emacs--0
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 30-36)

   - Merge from emacs--devo--0
   - Update from CVS

Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--lexbind--0--patch-9
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.20"></a>


Revision <strong>1.2.4.20</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.20&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.20">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.20">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.20&amp;view=log">[select for diffs]</a>




<br />

<em>Wed May 17 05:49:06 2006 UTC</em> (6 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.19: +148 -215 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.19&amp;r2=1.2.4.20">previous 1.2.4.19</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.20">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 685-697)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Checkout man/cc-mode.texi from CVS with RCS keywords disabled

 * gnus--rel--5.10  (patch 174-181)

   - Update from CVS
   - Update from CVS: texi/gnus.texi (RSS): Addition.

Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-63
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.19"></a>


Revision <strong>1.2.4.19</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.19&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.19">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.19">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.19&amp;view=log">[select for diffs]</a>




<br />

<em>Wed May 17 05:42:14 2006 UTC</em> (6 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.18: +383 -463 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.18&amp;r2=1.2.4.19">previous 1.2.4.18</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.19">branch point 1.2</a>








<pre class="vc_log">Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 675-684)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 169-173)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS

Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-62
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.18"></a>


Revision <strong>1.2.4.18</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.18&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.18">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.18">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.18&amp;view=log">[select for diffs]</a>




<br />

<em>Wed May 17 04:38:59 2006 UTC</em> (6 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.17: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.17&amp;r2=1.2.4.18">previous 1.2.4.17</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.18">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-51

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 542-553)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 116-121)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.19"></a>
<a name="unicode-post-font-backend"></a>
<a name="unicode-pre-font-backend"></a>


Revision <strong>1.2.2.19</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.19">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.19">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.19&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Feb 17 09:10:22 2006 UTC</em> (6 years, 6 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-post-font-backend"><strong>unicode-post-font-backend</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-pre-font-backend"><strong>unicode-pre-font-backend</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=unicode-xft"><strong>unicode-xft</strong></a>





<br />Changes since <strong>1.2.2.18: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.18&amp;r2=1.2.2.19">previous 1.2.2.18</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.19">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:emacs&#64;sv.gnu.org">emacs&#64;sv.gnu.org</a>/emacs--unicode--0--patch-17

Merge from emacs--devo--0

Patches applied:

 * emacs--devo--0  (patch 85-96)

   - Update from CVS
   - Merge from erc--emacs--0
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 30-36)

   - Merge from emacs--devo--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.41"></a>


Revision <strong>1.41</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.41&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.41">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.41">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.41&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Feb 16 11:40:51 2006 UTC</em> (6 years, 6 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.40: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.40&amp;r2=1.41">previous 1.40</a>










<pre class="vc_log">(flymake-fix-file-name): Fix typo in docstring.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.18"></a>


Revision <strong>1.2.2.18</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.18&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.18">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.18">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.18&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan 16 08:37:15 2006 UTC</em> (6 years, 7 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.17: +519 -666 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.17&amp;r2=1.2.2.18">previous 1.2.2.17</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.18">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-97

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 616-696)

   - Add lisp/mh-e/.arch-inventory
   - Update from CVS
   - Merge from gnus--rel--5.10
   - Update from CVS: lisp/smerge-mode.el: Add 'tools' to file keywords.
   - lisp/gnus/ChangeLog: Remove duplicate entry

 * gnus--rel--5.10  (patch 147-181)

   - Update from CVS
   - Merge from emacs--cvs-trunk--0
   - Update from CVS: lisp/mml.el (mml-preview): Doc fix.
   - Update from CVS: texi/message.texi: Fix default values.
   - Update from CVS: texi/gnus.texi (RSS): Addition.
</pre>
</div>



<div>
<hr />

<a name="rev1.40.2.1"></a>

<a name="rmail-mbox-branch"></a>

Revision <strong>1.40.2.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.40.2.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.40.2.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.40.2.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.40.2.1&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan 16 00:03:33 2006 UTC</em> (6 years, 7 months ago) by <em>enberg</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=rmail-mbox-branch"><strong>rmail-mbox-branch</strong></a>







<br />Changes since <strong>1.40: +0 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.40&amp;r2=1.40.2.1">previous 1.40</a>






, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.40.2.1">next main 1.63</a>







<pre class="vc_log">sync with trunk
</pre>
</div>



<div>
<hr />

<a name="rev1.7.2.2"></a>

<a name="XFT_JHD_BRANCH"></a>

Revision <strong>1.7.2.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7.2.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7.2.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.7.2.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7.2.2&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jan 12 10:25:27 2006 UTC</em> (6 years, 8 months ago) by <em>jhd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=XFT_JHD_BRANCH"><strong>XFT_JHD_BRANCH</strong></a>







<br />Changes since <strong>1.7.2.1: +587 -738 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7.2.1&amp;r2=1.7.2.2">previous 1.7.2.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7&amp;r2=1.7.2.2">branch point 1.7</a>




, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.63&amp;r2=1.7.2.2">next main 1.63</a>







<pre class="vc_log">Update from HEAD
</pre>
</div>



<div>
<hr />

<a name="rev1.40"></a>


Revision <strong>1.40</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.40&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.40">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.40">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.40&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan 10 19:16:02 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>




<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=rmail-mbox-branch"><strong>rmail-mbox-branch</strong></a>





<br />Changes since <strong>1.39: +5 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.39&amp;r2=1.40">previous 1.39</a>










<pre class="vc_log">Add bugs/todo entry.
</pre>
</div>



<div>
<hr />

<a name="rev1.39"></a>


Revision <strong>1.39</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.39&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.39">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.39">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.39&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan 10 18:46:07 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.38: +110 -132 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.38&amp;r2=1.39">previous 1.38</a>










<pre class="vc_log">(flymake-split-string): Remove &gt;1 empty strings at beg/end of the result.
(flymake-find-buildfile, flymake-find-possible-master-files):
Use expand-file-name.
(flymake-fix-file-name): Don't replace \ with / and don't remove ./
since expand-file-name does it for us.  Use directory-file-name.
(flymake-ler-get-full-file, flymake-ler-get-file, flymake-ler-get-line)
(flymake-ler-get-type, flymake-ler-get-text)
(flymake-ler-make-ler): Remove.  Replace by defstruct.  Update callers.
(flymake-current-line-no): Remove spurious interactive spec.
(flymake-delete-temp-directory): Remove unused var `slash-pos'.
(flymake-check-include): Remove arg inc-path merged into inc-name.
(flymake-check-patch-master-file-buffer): Fit in 80 columns.
Arg regexp-list replaced by a simple regexp.
(flymake-master-make-header-init, flymake-master-tex-init):
Correspondingly replace regexp-list with a regexp.  Fix regexp.
</pre>
</div>



<div>
<hr />

<a name="rev1.38"></a>


Revision <strong>1.38</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.38&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.38">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.38">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.38&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan 10 04:05:46 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.37: +22 -24 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.37&amp;r2=1.38">previous 1.37</a>










<pre class="vc_log">(flymake-find-buildfile): Remove invariant arg `dirs'.  Adjust callers.
</pre>
</div>



<div>
<hr />

<a name="rev1.37"></a>


Revision <strong>1.37</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.37&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.37">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.37">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.37&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jan  9 19:11:28 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.36: +14 -62 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.36&amp;r2=1.37">previous 1.36</a>










<pre class="vc_log">Use `require' rather than autoload for XEmacs's overlays.
(flymake-get-common-file-prefix, flymake-build-relative-filename):
Delete.  Use file-relative-name instead.
(flymake-get-syntax-check-program-args, flymake-perl-init):
Simplify the resulting code.
</pre>
</div>



<div>
<hr />

<a name="rev1.36"></a>


Revision <strong>1.36</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.36&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.36">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.36">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.36&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jan  5 18:50:48 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.35: +73 -76 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.35&amp;r2=1.36">previous 1.35</a>










<pre class="vc_log">(flymake-get-cleanup-function): Default to flymake-simple-cleanup.
(flymake-allowed-file-name-masks): Use this new default.
All the functions are now called in the right buffer rather than
passing the buffer as argument.
(flymake-process-sentinel): Switch to buffer before calling cleanup.
(flymake-parse-err-lines): Remove redundant buffer arg.
(flymake-get-program-dir): Comment out unused function.
(flymake-start-syntax-check, flymake-start-syntax-check-process):
Remove redundant buffer argument.
(flymake-get-real-file-name, flymake-simple-java-cleanup)
(flymake-simple-cleanup, flymake-master-cleanup): Remove buffer arg.
</pre>
</div>



<div>
<hr />

<a name="rev1.35"></a>


Revision <strong>1.35</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.35&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.35">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.35">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.35&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan  3 19:59:00 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.34: +79 -94 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.34&amp;r2=1.35">previous 1.34</a>










<pre class="vc_log">(flymake-create-temp-with-folder-structure): Use expand-file-name.
(flymake-delete-temp-directory): Use expand-file-name,
file-name-directory, and directory-file-name.
(flymake-strrchr): Delete.
(flymake-start-syntax-check): Don't pass the redundant buffer argument
to the init-f function.
(flymake-init-find-buildfile-dir, flymake-init-create-temp-buffer-copy)
(flymake-init-create-temp-source-and-master-buffer-copy, flymake-perl-init)
(flymake-save-buffer-in-file, flymake-simple-make-init-impl, flymake-xml-init)
(flymake-simple-make-init, flymake-master-make-init, flymake-master-tex-init)
(flymake-master-make-header-init, flymake-simple-make-java-init)
(flymake-simple-ant-java-init, flymake-simple-tex-init):
Remove corresponding redundant buffer argument.
(flymake-allowed-file-name-masks): Remove last elems that are equal to
the default anyway.  Clean up regexps.
</pre>
</div>



<div>
<hr />

<a name="rev1.34"></a>


Revision <strong>1.34</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.34&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.34">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.34">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.34&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan  3 19:05:06 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.33: +44 -44 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.33&amp;r2=1.34">previous 1.33</a>










<pre class="vc_log">(flymake-base-dir, flymake-master-file-name, flymake-temp-master-file-name)
(flymake-temp-source-file-name): New buffer-local vars.
(flymake-buffer-data, flymake-get-buffer-value, flymake-set-buffer-value):
Replace those hash-tables by the new buffer-local vars.  Update callers.
</pre>
</div>



<div>
<hr />

<a name="rev1.33"></a>


Revision <strong>1.33</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.33&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.33">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.33">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.33&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jan  3 18:44:42 2006 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.32: +107 -139 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.32&amp;r2=1.33">previous 1.32</a>










<pre class="vc_log">(flymake-check-start-time, flymake-check-was-interrupted, flymake-err-info)
(flymake-is-running, flymake-last-change-time, flymake-new-err-info)
(flymake-timer): Move definitions, so we can remove earlier declarations.
(flymake-replace-regexp-in-string, flymake-split-string)
(flymake-get-temp-dir): Use defalias.
(flymake-popup-menu): Remove `pos' argument.  Use posn-at-point.
(flymake-xemacs-window-edges): Remove unused function.
(flymake-get-point-pixel-pos): Move.
(flymake-pid-to-names, flymake-reg-names)
(flymake-get-source-buffer-name, flymake-unreg-names): Remove.
Replace by a simple list flymake-processes and by process-buffer.
Update callers.  Other than simplify the code, it uses buffers rather
than buffer-names so it doesn't get confused by uniquify.
(flymake-buffer-data): The global value should just be nil.
</pre>
</div>



<div>
<hr />

<a name="rev1.32"></a>


Revision <strong>1.32</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.32&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.32">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.32">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.32&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Dec 30 17:28:29 2005 UTC</em> (6 years, 8 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.31: +126 -156 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.31&amp;r2=1.32">previous 1.31</a>










<pre class="vc_log">(flymake-copy-buffer-to-temp-buffer): Simplify.
(flymake-parse-output-and-residual): Remove `source-buffer' argument.
(flymake-process-filter): Switch to buffer before calling it instead.
(flymake-post-syntax-check, flymake-highlight-err-lines)
(flymake-delete-own-overlays, flymake-parse-err-lines)
(flymake-start-syntax-check, flymake-start-syntax-check-process)
(flymake-count-lines, flymake-parse-residual): Remove constant buffer argument.
(flymake-start-syntax-check-for-current-buffer): Remove.
Update callers to use flymake-start-syntax-check instead.
(flymake-display-err-menu-for-current-line): Remove unused var `mouse-pos'.
(flymake-restore-formatting): Comment out unused function.
(flymake-report-status, flymake-report-fatal-status): Remove buffer
argument, use current-buffer instead.  Update callers.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.17"></a>


Revision <strong>1.2.2.17</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.17&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.17">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.17">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.17&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Sep 19 10:20:08 2005 UTC</em> (6 years, 11 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.16: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.16&amp;r2=1.2.2.17">previous 1.2.2.16</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.17">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-82

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 542-553)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 116-121)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.31"></a>


Revision <strong>1.31</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.31&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.31">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.31">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.31&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Sep 18 12:31:27 2005 UTC</em> (6 years, 11 months ago) by <em>deego</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.30: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.30&amp;r2=1.31">previous 1.30</a>










<pre class="vc_log">Message format fixes, commit no. 3
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.17"></a>


Revision <strong>1.2.4.17</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.17&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.17">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.17">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.17&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Sep 12 05:54:32 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.16: +1 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.16&amp;r2=1.2.4.17">previous 1.2.4.16</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.17">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-50

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 532-541)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 112-115)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.16"></a>


Revision <strong>1.2.4.16</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.16&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.16">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.16">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.16&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Sep 12 05:52:21 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.15: +4 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.15&amp;r2=1.2.4.16">previous 1.2.4.15</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.16">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-48

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 519-530)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 106-111)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.16"></a>


Revision <strong>1.2.2.16</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.16&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.16">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.16">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.16&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Sep 11 22:20:51 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.15: +1 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.15&amp;r2=1.2.2.16">previous 1.2.2.15</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.16">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-81

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 532-541)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 112-115)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.30"></a>


Revision <strong>1.30</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.30&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.30">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.30">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.30&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Sep  9 01:24:15 2005 UTC</em> (7 years ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.29: +1 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.29&amp;r2=1.30">previous 1.29</a>










<pre class="vc_log">Require `compile' unconditionally.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.15"></a>


Revision <strong>1.2.2.15</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.15&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.15">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.15">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.15&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Sep  6 00:25:07 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.14: +4 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.14&amp;r2=1.2.2.15">previous 1.2.2.14</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.15">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-79

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 519-530)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 106-111)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.29"></a>


Revision <strong>1.29</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.29&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.29">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.29">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.29&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug 26 13:48:33 2005 UTC</em> (7 years ago) by <em>eliz</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.28: +4 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.28&amp;r2=1.29">previous 1.28</a>










<pre class="vc_log">(flymake-highlight-err-lines): Use save-excursion around
flymake-highlight-line to preserve point.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.15"></a>


Revision <strong>1.2.4.15</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.15&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.15">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.15">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.15&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug 26 10:24:34 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.14: +0 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.14&amp;r2=1.2.4.15">previous 1.2.4.14</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.15">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-47

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 514-518)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 104-105)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.14"></a>


Revision <strong>1.2.4.14</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.14&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.14">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.14">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.14&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug 26 10:18:19 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.13: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.13&amp;r2=1.2.4.14">previous 1.2.4.13</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.14">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-46

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 504-513)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Update from CVS: .cvsignore: Add `lock'.

 * gnus--rel--5.10  (patch 99-103)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.13"></a>


Revision <strong>1.2.4.13</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.13&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.13">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.13">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.13&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug 26 10:01:11 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.12: +74 -79 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.12&amp;r2=1.2.4.13">previous 1.2.4.12</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.13">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-42

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 459-473)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 86-87)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.14"></a>


Revision <strong>1.2.2.14</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.14&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.14">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.14">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.14&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug 26 09:49:36 2005 UTC</em> (7 years ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.13: +0 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.13&amp;r2=1.2.2.14">previous 1.2.2.13</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.14">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-78

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 514-518)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 104-105)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.28"></a>


Revision <strong>1.28</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.28&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.28">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.28">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.28&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Aug 15 21:29:32 2005 UTC</em> (7 years ago) by <em>dann</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.27: +0 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.27&amp;r2=1.28">previous 1.27</a>










<pre class="vc_log">* mh-customize.el: Do not use face-alias compatibility for
faces that did not appear in the previous Emacs release.

* buff-menu.el:
* compare-w.el:
* emacs-lisp/testcover.el:
* play/gomoku.el:
* play/mpuz.el:
* progmodes/flymake.el:
* progmodes/gdb-ui.el:
* progmodes/idlw-help.el:
* progmodes/idlw-shell.el:
* progmodes/ld-script.el:
* progmodes/which-func.el:
* ruler-mode.el:
* strokes.el:
* textmodes/sgml-mode.el:
* textmodes/table.el: Do not use face-alias for backward
compatibility for faces that did not appear in the previous Emacs
release.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.13"></a>


Revision <strong>1.2.2.13</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.13&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.13">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.13">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.13&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Aug  5 10:57:30 2005 UTC</em> (7 years, 1 month ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.12: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.12&amp;r2=1.2.2.13">previous 1.2.2.12</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.13">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-77

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 504-513)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Update from CVS: .cvsignore: Add `lock'.

 * gnus--rel--5.10  (patch 99-103)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.27"></a>


Revision <strong>1.27</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.27&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.27">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.27">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.27&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Aug  1 08:37:48 2005 UTC</em> (7 years, 1 month ago) by <em>nickrob</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.26: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.26&amp;r2=1.27">previous 1.26</a>










<pre class="vc_log">Update copyright for release of 22.1 for progmodes directory.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.12"></a>


Revision <strong>1.2.2.12</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.12&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.12">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.12">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.12&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jul  7 12:39:35 2005 UTC</em> (7 years, 2 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.11: +74 -79 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.11&amp;r2=1.2.2.12">previous 1.2.2.11</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.12">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-68

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 459-473)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 86-87)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.26"></a>


Revision <strong>1.26</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.26&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.26">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.26">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.26&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jul  6 19:00:21 2005 UTC</em> (7 years, 2 months ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.25: +7 -7 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.25&amp;r2=1.26">previous 1.25</a>










<pre class="vc_log">(flymake-float-time): Instead of with-no-warnings, test for xemacs.
(flymake-replace-regexp-in-string): Test fboundp of replace-in-string
to avoid warning.
</pre>
</div>



<div>
<hr />

<a name="rev1.25"></a>


Revision <strong>1.25</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.25&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.25">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.25">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.25&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jul  4 18:54:30 2005 UTC</em> (7 years, 2 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.24: +6 -7 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.24&amp;r2=1.25">previous 1.24</a>










<pre class="vc_log">Remove useless eval-when-compile.
</pre>
</div>



<div>
<hr />

<a name="rev1.24"></a>


Revision <strong>1.24</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.24&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.24">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.24">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.24&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jul  4 16:59:19 2005 UTC</em> (7 years, 2 months ago) by <em>lute</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.23: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.23&amp;r2=1.24">previous 1.23</a>










<pre class="vc_log">Update FSF's address.
</pre>
</div>



<div>
<hr />

<a name="rev1.23"></a>


Revision <strong>1.23</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.23&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.23">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.23">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.23&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Jul  3 23:18:19 2005 UTC</em> (7 years, 2 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.22: +17 -22 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.22&amp;r2=1.23">previous 1.22</a>










<pre class="vc_log">(flymake-find-file): Remove.
(flymake-float-time): Use `with-no-warnings'.
(flymake-check-start-time, flymake-check-was-interrupted, flymake-err-info,
flymake-is-running, flymake-last-change-time, flymake-new-err-info):
`defvar' at compile time.
</pre>
</div>



<div>
<hr />

<a name="rev1.22"></a>


Revision <strong>1.22</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.22&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.22">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.22">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.22&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Jul  2 21:12:19 2005 UTC</em> (7 years, 2 months ago) by <em>teirllm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.21: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.21&amp;r2=1.22">previous 1.21</a>










<pre class="vc_log">(flymake-mode, flymake-mode-off): Fix unbalanced parentheses.
From David Hunter (tiny change).
</pre>
</div>



<div>
<hr />

<a name="rev1.21"></a>


Revision <strong>1.21</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.21&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.21">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.21">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.21&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Jul  2 19:36:38 2005 UTC</em> (7 years, 2 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.20: +42 -41 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.20&amp;r2=1.21">previous 1.20</a>










<pre class="vc_log">(flymake-mode-on, flymake-mode-off): Move body into flymake-mode and
delegate to flymake-mode.
</pre>
</div>



<div>
<hr />

<a name="rev1.20"></a>


Revision <strong>1.20</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.20&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.20">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.20">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.20&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Jul  1 14:13:12 2005 UTC</em> (7 years, 2 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.19: +13 -13 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.19&amp;r2=1.20">previous 1.19</a>










<pre class="vc_log">(flymake-find-possible-master-files, flymake-master-file-compare,
flymake-get-line-err-count, flymake-highlight-line,
flymake-gui-warnings-enabled): Fix typos in docstrings.
(flymake-parse-line, flymake-get-project-include-dirs-function,
flymake-get-prev-err-line-no, flymake-goto-prev-error): Doc fixes.
(flymake-get-project-include-dirs-function, flymake-make-err-menu-data): Improve
argument/docstring consistency.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.12"></a>


Revision <strong>1.2.4.12</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.12&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.12">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.12">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.12&amp;view=log">[select for diffs]</a>




<br />

<em>Sun Jun 26 01:50:52 2005 UTC</em> (7 years, 2 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.11: +11 -7 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.11&amp;r2=1.2.4.12">previous 1.2.4.11</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.12">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-37

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 401-422)

   - Update from CVS
   - Merge from gnus--rel--5.10
   - Remove "-face" suffix from Buffer-menu-buffer face
   - Remove "-face" suffix from antlr-mode faces
   - Remove "-face" suffix from ebrowse faces
   - Remove "-face" suffix from flymake faces
   - Remove "-face" suffix from idlwave faces
   - Remove "-face" suffix from sh-script faces
   - Remove "-face" suffix from vhdl-mode faces
   - Remove "-face" suffix from which-func face
   - Remove "-face" suffix from cperl-mode faces
   - Remove "-face" suffix from ld-script faces
   - Fix cperl-mode font-lock problem
   - Tweak which-func face

 * gnus--rel--5.10  (patch 80-82)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.11"></a>


Revision <strong>1.2.2.11</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.11&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.11">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.11">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.11&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Jun 15 23:32:09 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.10: +11 -7 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.10&amp;r2=1.2.2.11">previous 1.2.2.10</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.11">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-63

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 358-423)

   - Update from CVS
   - Remove "-face" suffix from widget faces
   - Remove "-face" suffix from custom faces
   - Remove "-face" suffix from change-log faces
   - Remove "-face" suffix from compilation faces
   - Remove "-face" suffix from diff-mode faces
   - lisp/longlines.el (longlines-visible-face): Face removed
   - Remove "-face" suffix from woman faces
   - Remove "-face" suffix from whitespace-highlight face
   - Remove "-face" suffix from ruler-mode faces
   - Remove "-face" suffix from show-paren faces
   - Remove "-face" suffix from log-view faces
   - Remove "-face" suffix from smerge faces
   - Remove "-face" suffix from show-tabs faces
   - Remove "-face" suffix from highlight-changes faces
   - Remove "-face" suffix from and downcase info faces
   - Remove "-face" suffix from pcvs faces
   - Update uses of renamed pcvs faces
   - Tweak ChangeLog
   - Remove "-face" suffix from strokes-char face
   - Remove "-face" suffix from compare-windows face
   - Remove "-face" suffix from calendar faces
   - Remove "-face" suffix from diary-button face
   - Remove "-face" suffix from testcover faces
   - Remove "-face" suffix from viper faces
   - Remove "-face" suffix from org faces
   - Remove "-face" suffix from sgml-namespace face
   - Remove "-face" suffix from table-cell face
   - Remove "-face" suffix from tex-mode faces
   - Remove "-face" suffix from texinfo-heading face
   - Remove "-face" suffix from flyspell faces
   - Remove "-face" suffix from gomoku faces
   - Remove "-face" suffix from mpuz faces
   - Merge from gnus--rel--5.10
   - Remove "-face" suffix from Buffer-menu-buffer face
   - Remove "-face" suffix from antlr-mode faces
   - Remove "-face" suffix from ebrowse faces
   - Remove "-face" suffix from flymake faces
   - Remove "-face" suffix from idlwave faces
   - Remove "-face" suffix from sh-script faces
   - Remove "-face" suffix from vhdl-mode faces
   - Remove "-face" suffix from which-func face
   - Remove "-face" suffix from cperl-mode faces
   - Remove "-face" suffix from ld-script faces
   - Fix cperl-mode font-lock problem
   - Tweak which-func face

 * gnus--rel--5.10  (patch 80-82)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.19"></a>


Revision <strong>1.19</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.19&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.19">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.19">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.19&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jun 14 23:20:37 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.18: +8 -4 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.18&amp;r2=1.19">previous 1.18</a>










<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--cvs-trunk--0--patch-412

Remove "-face" suffix from flymake faces

2005-06-14  Miles Bader  &lt;<a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>&gt;

   * lisp/progmodes/flymake.el (flymake-errline, flymake-warnline):
   Remove "-face" suffix from face names.
   (flymake-errline-face, flymake-warnline-face):
   New backward-compatibility aliases for renamed faces.
   (flymake-highlight-line): Use renamed flymake faces.
</pre>
</div>



<div>
<hr />

<a name="rev1.18"></a>


Revision <strong>1.18</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.18&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.18">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.18">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.18&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jun 14 11:32:58 2005 UTC</em> (7 years, 3 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.17: +3 -3 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.17&amp;r2=1.18">previous 1.17</a>










<pre class="vc_log">(flymake-new-err-info, flymake-start-syntax-check-for-current-buffer,
flymake-simple-cleanup): Fix quoting in docstring.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.11"></a>


Revision <strong>1.2.4.11</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.11&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.11">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.11">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.11&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Jun  9 05:23:31 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.10: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.10&amp;r2=1.2.4.11">previous 1.2.4.10</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.11">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-33

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 320-323)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.7.2.1"></a>


Revision <strong>1.7.2.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7.2.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7.2.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.7.2.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7.2.1&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jun  6 08:36:04 2005 UTC</em> (7 years, 3 months ago) by <em>jhd</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=XFT_JHD_BRANCH"><strong>XFT_JHD_BRANCH</strong></a>







<br />Changes since <strong>1.7: +322 -448 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7&amp;r2=1.7.2.1">previous 1.7</a>










<pre class="vc_log">Merged from HEAD
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.10"></a>


Revision <strong>1.2.2.10</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.10&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.10">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.10">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.10&amp;view=log">[select for diffs]</a>




<br />

<em>Thu May 26 05:42:17 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.9: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.9&amp;r2=1.2.2.10">previous 1.2.2.9</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.10">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-55

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 320-323)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.17"></a>


Revision <strong>1.17</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.17&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.17">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.17">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.17&amp;view=log">[select for diffs]</a>




<br />

<em>Sat May 21 04:53:14 2005 UTC</em> (7 years, 3 months ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.16: +2 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.16&amp;r2=1.17">previous 1.16</a>










<pre class="vc_log">(flymake-makehash): Use with-no-warnings.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.9"></a>


Revision <strong>1.2.2.9</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.9&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.9">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.9">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.9&amp;view=log">[select for diffs]</a>




<br />

<em>Fri May 20 04:21:54 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.8: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.8&amp;r2=1.2.2.9">previous 1.2.2.8</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.9">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-53

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 302-319)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 69)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.10"></a>


Revision <strong>1.2.4.10</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.10&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.10">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.10">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.10&amp;view=log">[select for diffs]</a>




<br />

<em>Fri May 20 03:39:18 2005 UTC</em> (7 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.9: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.9&amp;r2=1.2.4.10">previous 1.2.4.9</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.10">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-32

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 302-319)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 69)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.16"></a>


Revision <strong>1.16</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.16&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.16">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.16">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.16&amp;view=log">[select for diffs]</a>




<br />

<em>Mon May 16 11:26:54 2005 UTC</em> (7 years, 4 months ago) by <em>lektu</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.15: +1 -1 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.15&amp;r2=1.16">previous 1.15</a>










<pre class="vc_log">Replace `string-to-int' by `string-to-number'.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.9"></a>


Revision <strong>1.2.4.9</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.9&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.9">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.9">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.9&amp;view=log">[select for diffs]</a>




<br />

<em>Thu May  5 00:28:53 2005 UTC</em> (7 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.8: +108 -170 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.8&amp;r2=1.2.4.9">previous 1.2.4.8</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.9">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-30

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 272-286)

   - src/xdisp.c (dump_glyph_row): Don't display overlay_arrow_p field.
   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 67)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.8"></a>


Revision <strong>1.2.4.8</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.8&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.8">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.8">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.8&amp;view=log">[select for diffs]</a>




<br />

<em>Thu May  5 00:26:32 2005 UTC</em> (7 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.7: +3 -8 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.7&amp;r2=1.2.4.8">previous 1.2.4.7</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.8">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-29

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 259-271)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 66)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.8"></a>


Revision <strong>1.2.2.8</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.8&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.8">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.8">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.8&amp;view=log">[select for diffs]</a>




<br />

<em>Thu May  5 00:04:47 2005 UTC</em> (7 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.7: +108 -170 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.7&amp;r2=1.2.2.8">previous 1.2.2.7</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.8">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-44

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 272-288)

   - src/xdisp.c (dump_glyph_row): Don't display overlay_arrow_p field.
   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 67)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.15"></a>


Revision <strong>1.15</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.15&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.15">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.15">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.15&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Apr 30 20:13:39 2005 UTC</em> (7 years, 4 months ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.14: +108 -170 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.14&amp;r2=1.15">previous 1.14</a>










<pre class="vc_log">(flymake-split-string)
(flymake-split-string, flymake-log, flymake-pid-to-names)
(flymake-reg-names, flymake-get-source-buffer-name)
(flymake-unreg-names, flymake-add-line-err-info)
(flymake-add-err-info): Clarify docstrings.
(flymake-popup-menu, flymake-make-emacs-menu)
(flymake-make-xemacs-menu): Add docstrings.
(flymake-get-buffer-*, flymake-set-buffer-*): Functions deleted.
Set variables directly throughout.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.7"></a>


Revision <strong>1.2.2.7</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.7&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.7">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.7">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.7&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Apr 21 05:59:47 2005 UTC</em> (7 years, 4 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.6: +3 -8 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.6&amp;r2=1.2.2.7">previous 1.2.2.6</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.7">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-39

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 258-271)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 66)

   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.14"></a>


Revision <strong>1.14</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.14&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.14">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.14">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.14&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Apr 19 18:19:14 2005 UTC</em> (7 years, 4 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.13: +3 -8 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.13&amp;r2=1.14">previous 1.13</a>










<pre class="vc_log">(flymake-get-absolute-file-name-basedir): Remove.  Update callers to use
expand-file-name instead.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.6"></a>


Revision <strong>1.2.2.6</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.6&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.6">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.6">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.6&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Apr  9 02:16:27 2005 UTC</em> (7 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.5: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.5&amp;r2=1.2.2.6">previous 1.2.2.5</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.6">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-35

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 228-240)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 53-58)

   - Merge from emacs--cvs-trunk--0
   - Update from CVS
   - Collapse feature addition/removal within single ChangeLog entry
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.7"></a>


Revision <strong>1.2.4.7</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.7&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.7">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.7">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.7&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Apr  9 01:15:26 2005 UTC</em> (7 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.6: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.6&amp;r2=1.2.4.7">previous 1.2.4.6</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.7">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-27

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 231-240)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 56-58)

   - Update from CVS
   - Collapse feature addition/removal within single ChangeLog entry
</pre>
</div>



<div>
<hr />

<a name="rev1.13"></a>


Revision <strong>1.13</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.13&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.13">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.13">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.13&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Apr  4 09:22:59 2005 UTC</em> (7 years, 5 months ago) by <em>lute</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.12: +2 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.12&amp;r2=1.13">previous 1.12</a>










<pre class="vc_log">(flymake-mode): Specify :group.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.6"></a>


Revision <strong>1.2.4.6</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.6&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.6">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.6">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.6&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Apr  4 05:29:11 2005 UTC</em> (7 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.5: +1 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.5&amp;r2=1.2.4.6">previous 1.2.4.5</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.6">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-25

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 213-222)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 45-52)

   - Update from CVS
   - Update from CVS: texi Makefile.in CVS keyw cruft
   - Update from CVS: ChangeLog tweaks
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.5"></a>


Revision <strong>1.2.2.5</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.5&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.5">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.5">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.5&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Mar 31 09:58:08 2005 UTC</em> (7 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.4: +213 -273 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.4&amp;r2=1.2.2.5">previous 1.2.2.4</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.5">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--unicode--0--patch-31

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 206-222)

   - Update from CVS
   - Merge from gnus--rel--5.10

 * gnus--rel--5.10  (patch 45-52)

   - Update from CVS
   - Update from CVS: texi Makefile.in CVS keyw cruft
   - Update from CVS: ChangeLog tweaks
</pre>
</div>



<div>
<hr />

<a name="rev1.12"></a>


Revision <strong>1.12</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.12&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.12">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.12">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.12&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Mar 26 15:33:33 2005 UTC</em> (7 years, 5 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.11: +1 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.11&amp;r2=1.12">previous 1.11</a>










<pre class="vc_log">(flymake-mode): Add autoload cookie.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.5"></a>


Revision <strong>1.2.4.5</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.5&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.5">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.5">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.5&amp;view=log">[select for diffs]</a>




<br />

<em>Sat Mar 26 01:57:38 2005 UTC</em> (7 years, 5 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.4: +212 -273 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.4&amp;r2=1.2.4.5">previous 1.2.4.4</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.5">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2005/emacs--lexbind--0--patch-24

Merge from emacs--cvs-trunk--0

Patches applied:

 * emacs--cvs-trunk--0  (patch 204-212)

   - Clean up gdb-ui breakpoint faces
   - Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.11"></a>


Revision <strong>1.11</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.11&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.11">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.11">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.11&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Mar 25 00:17:42 2005 UTC</em> (7 years, 5 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.10: +39 -46 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.10&amp;r2=1.11">previous 1.10</a>










<pre class="vc_log">(flymake-get-file-name-mode-and-masks)
(flymake-find-buildfile, flymake-find-possible-master-files)
(flymake-check-include, flymake-parse-line): Replace loops over the
length of lists, by loops over lists, to remove silly O(n²) behavior.
</pre>
</div>



<div>
<hr />

<a name="rev1.10"></a>


Revision <strong>1.10</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.10&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.10">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.10">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.10&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Mar 25 00:06:07 2005 UTC</em> (7 years, 5 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.9: +35 -67 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.9&amp;r2=1.10">previous 1.9</a>










<pre class="vc_log">(flymake-ensure-ends-with-slash): Remove.
Substitute file-name-as-directory in the rest of the file.
(flymake-get-common-file-prefix): Rewrite, using compare-strings.
(flymake-replace-region): Remove unused arg `buffer'.
(flymake-check-patch-master-file-buffer): Update calls to it.
(flymake-add-err-info): Remove unused var `count'.
(flymake-mode): Use define-minor-mode.
</pre>
</div>



<div>
<hr />

<a name="rev1.9"></a>


Revision <strong>1.9</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.9&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.9">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.9">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.9&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Mar 24 22:55:54 2005 UTC</em> (7 years, 5 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.8: +60 -87 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.8&amp;r2=1.9">previous 1.8</a>










<pre class="vc_log">Use with-current-buffer.
(flymake-float-time, flymake-get-temp-dir, flymake-replace-regexp-in-string)
(flymake-line-beginning-position, flymake-current-row, flymake-selected-frame)
(flymake-line-end-position, flymake-popup-menu): Avoid testing for `xemacs'.
(flymake-nop): Move.
(flymake-region-has-flymake-overlays): Return the computed value.
(flymake-reformat-err-line-patterns-from-compile-el): Use dolist.
Remove unused var `endline'.
(flymake-get-line-count): Remove unused function.
(flymake-display-err-menu-for-current-line): Unused var `move-mouse-pos'.
</pre>
</div>



<div>
<hr />

<a name="rev1.8"></a>


Revision <strong>1.8</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.8&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.8">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.8">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.8&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Mar 24 22:42:42 2005 UTC</em> (7 years, 5 months ago) by <em>monnier</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.7: +78 -73 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7&amp;r2=1.8">previous 1.7</a>










<pre class="vc_log">Misc fix up of comments and docstrings.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.4"></a>


Revision <strong>1.2.4.4</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.4&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.4">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.4">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.4&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Dec  8 23:36:36 2004 UTC</em> (7 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.3: +1814 -2332 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.3&amp;r2=1.2.4.4">previous 1.2.4.3</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.4">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--lexbind--0--patch-77

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-708
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-709
   Update from CVS: src/indent.c (Fvertical_motion): Fix last change.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-710
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-715
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-716
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-717
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-718
   RCS keyword removal

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-719
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-720
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-74
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.4"></a>


Revision <strong>1.2.2.4</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.4&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.4">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.4">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.4&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Dec  8 05:02:27 2004 UTC</em> (7 years, 9 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.3: +1814 -2332 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.3&amp;r2=1.2.2.4">previous 1.2.2.3</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.4">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--unicode--0--patch-74

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-709
   Update from CVS: src/indent.c (Fvertical_motion): Fix last change.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-710
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-715
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-716
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-74
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.7"></a>
<a name="XFT_JHD_BRANCH_base"></a>


Revision <strong>1.7</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.7">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.7">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.7&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Nov 26 23:56:39 2004 UTC</em> (7 years, 9 months ago) by <em>kfstorm</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=XFT_JHD_BRANCH_base"><strong>XFT_JHD_BRANCH_base</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=XFT_JHD_BRANCH"><strong>XFT_JHD_BRANCH</strong></a>





<br />Changes since <strong>1.6: +49 -62 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.6&amp;r2=1.7">previous 1.6</a>










<pre class="vc_log">Use (featurep 'xemacs).
(flymake-makehash): Change to defsubst. Use fboundp.
(flymake-time-to-float): Remove.
(flymake-float-time): Merge code from flymake-time-to-float here.
(flymake-replace-regexp-in-string): Change to defsubst.
(flymake-split-string-remove-empty-edges): Rename to flymake-split-string.
(flymake-split-string): Remove previous defalias.
(flymake-get-temp-dir): Change to defsubst.
(flymake-make-xemacs-menu, flymake-xemacs-window-edges): Define
for xemacs only.
(flymake-master-file-count-limit): Change into compiler defvar only.
(flymake-find-possible-master-files): Let-bind it dynamically while
sorting files using flymake-master-file-compare.
</pre>
</div>



<div>
<hr />

<a name="rev1.6"></a>


Revision <strong>1.6</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.6&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.6">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.6">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.6&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Nov 25 16:43:32 2004 UTC</em> (7 years, 9 months ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.5: +1462 -1477 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.5&amp;r2=1.6">previous 1.5</a>










<pre class="vc_log">Reindent.
(flymake-split-string):	Turn into defalias.
(flymake-fix-file-name): Renamed from flymake-fix-path-name.
(flymake-ensure-ends-with-slash): Rename arg to FILENAME.
(flymake-get-common-file-prefix): Renamed from ...path...  Doc fix.
(flymake-build-relative-filename): Renamed from ...path.
Fix error message.
</pre>
</div>



<div>
<hr />

<a name="rev1.5"></a>


Revision <strong>1.5</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.5&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.5">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.5">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.5&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Nov 25 16:33:53 2004 UTC</em> (7 years, 9 months ago) by <em>rms</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.4: +712 -1202 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.4&amp;r2=1.5">previous 1.4</a>










<pre class="vc_log">Much whitespace and capitalization change.
Move `provide' to end.  Require `compile' only when compiling.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.3"></a>


Revision <strong>1.2.4.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.3&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Nov  4 13:12:42 2004 UTC</em> (7 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.2: +38 -11 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.2&amp;r2=1.2.4.3">previous 1.2.4.2</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.3">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--lexbind--0--patch-73

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-651
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-655
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-656
   Update from CVS: lisp/man.el (Man-xref-normal-file): Fix help-echo.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-657
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-658
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-659
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-660
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-661
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-667
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-668
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-64
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-68
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.3"></a>


Revision <strong>1.2.2.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.3&amp;view=log">[select for diffs]</a>




<br />

<em>Thu Nov  4 08:55:38 2004 UTC</em> (7 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.2: +38 -11 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.2&amp;r2=1.2.2.3">previous 1.2.2.2</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.3">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--unicode--0--patch-69

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-643
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-649
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-650
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-651
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-655
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-656
   Update from CVS: lisp/man.el (Man-xref-normal-file): Fix help-echo.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-657
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-658
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-659
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-660
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-661
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-667
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-668
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-61
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-68
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.4"></a>


Revision <strong>1.4</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.4&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.4">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.4">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.4&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Nov  1 17:42:31 2004 UTC</em> (7 years, 10 months ago) by <em>jet</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.3: +38 -11 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.3&amp;r2=1.4">previous 1.3</a>










<pre class="vc_log">2004-11-2  Pavel Kobiakov &lt;<a href="mailto:pk_at_work&#64;yahoo.com">pk_at_work&#64;yahoo.com</a>&gt;

	* progmodes/flymake.el (flymake-err-line-patterns): Use
	`flymake-reformat-err-line-patterns-from-compile-el' to convert
	`compilation-error-regexp-alist-alist' to internal Flymake format.

	* progmodes/flymake.el: eliminated byte-compiler warnings.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.2"></a>


Revision <strong>1.2.4.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.2&amp;view=log">[select for diffs]</a>




<br />

<em>Fri Oct 29 02:05:13 2004 UTC</em> (7 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2.4.1: +3 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.1&amp;r2=1.2.4.2">previous 1.2.4.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.2">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--lexbind--0--patch-72

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-639
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-640
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-641
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-649
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-650
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-59
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-63
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.2"></a>


Revision <strong>1.2.2.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.2&amp;view=log">[select for diffs]</a>




<br />

<em>Wed Oct 27 05:42:03 2004 UTC</em> (7 years, 10 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2.2.1: +3 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.1&amp;r2=1.2.2.2">previous 1.2.2.1</a>





, to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.2">branch point 1.2</a>








<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--unicode--0--patch-65

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-634
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-639
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-640
   Merge from gnus--rel--5.10

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-641
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-59
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/gnus--rel--5.10--patch-60
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.3"></a>


Revision <strong>1.3</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.3&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.3">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.3">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.3&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Oct 25 16:58:46 2004 UTC</em> (7 years, 10 months ago) by <em>jet</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>







<br />Changes since <strong>1.2: +3 -2 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.3">previous 1.2</a>










<pre class="vc_log">* progmodes/flymake.el (flymake-split-string): Use
  `flymake-split-string-remove-empty-edges' in any case.

* progmodes/flymake.el (flymake-err-line-patterns):
  Use `compilation-error-regexp-alist-alist' instead of
  `compilation-error-regexp-alist'.
</pre>
</div>



<div>
<hr />

<a name="rev1.2.4.1"></a>


Revision <strong>1.2.4.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.4.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.4.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.4.1&amp;view=log">[select for diffs]</a>




<br />

<em>Tue Jul  6 09:31:23 2004 UTC</em> (8 years, 2 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>







<br />Changes since <strong>1.2: +0 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.4.1">previous 1.2</a>










<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--lexbind--0--patch-36

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-339
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-344
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-345
   Tweak source regexps so that building in place won't cause problems

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-346
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-351
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-352
   Update from CVS: lisp/flymake.el: New file.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-353
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-354
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2.2.1"></a>


Revision <strong>1.2.2.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2.2.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2.2.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2.2.1&amp;view=log">[select for diffs]</a>




<br />

<em>Mon Jun 28 07:29:41 2004 UTC</em> (8 years, 2 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>







<br />Changes since <strong>1.2: +0 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;r2=1.2.2.1">previous 1.2</a>










<pre class="vc_log">Revision: <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--unicode--0--patch-15

Merge from emacs--cvs-trunk--0

Patches applied:

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-218
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-220
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-221
   Restore deleted tagline in etc/TUTORIAL.ru

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-222
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-228
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-229
   Remove TeX output files from the archive

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-230
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-247
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-248
   src/lisp.h (CYCLE_CHECK): Macro moved from xfaces.c

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-249
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-256
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-258
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-263
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-264
   Update from CVS: lispref/display.texi: emacs -&gt; Emacs.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-265
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-274
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-275
   Update from CVS: man/makefile.w32-in: Revert last change

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-276
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-295
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-296
   Allow restarting an existing debugger session that's exited

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-297
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-299
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-300
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-327
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-328
   Update from CVS: src/.gdbinit (xsymbol): Fix last change.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-329
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-344
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-345
   Tweak source regexps so that building in place won't cause problems

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-346
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-351
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-352
   Update from CVS: lisp/flymake.el: New file.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-353
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-361
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-362
   Support " [...]" style defaults in minibuffer-electric-default-mode

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-363
   (read-number): Use canonical format for default in prompt.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-364
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-367
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-368
   Improve display-supports-face-attributes-p on non-ttys

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-369
   Rewrite face-differs-from-default-p

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-370
   Move `display-supports-face-attributes-p' entirely into C code

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-371
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-372
   Simplify face-differs-from-default-p; don't consider :stipple.

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-373
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-374
   (tty_supports_face_attributes_p): Ensure attributes differ from default

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-375
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-376
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-377
   (Fdisplay_supports_face_attributes_p): Work around bootstrapping problem

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-378
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-380
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-381
   Face merging cleanups

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-382
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-384
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-385
   src/xfaces.c (push_named_merge_point): Return 0 if a cycle is detected

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-386
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-395
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-396
   Tweak arch tagging to make build/install-in-place less annoying

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-397
   Work around vc-arch problems when building eshell

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-398
   Tweak permissions

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-399
   Tweak directory permissions

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-400
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-401
   More build-in-place tweaking of arch tagging

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-402
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-403
   Yet more build-in-place tweaking of arch tagging

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-404
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-409
   Update from CVS

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-410
   Make sure image types are initialized for lookup too

 * <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-411
 - <a href="mailto:miles&#64;gnu.org">miles&#64;gnu.org</a>--gnu-2004/emacs--cvs-trunk--0--patch-416
   Update from CVS
</pre>
</div>



<div>
<hr />

<a name="rev1.2"></a>
<a name="gnus-5_10-post-merge-yamaoka"></a>
<a name="gnus-5_10-post-merge-josefsson"></a>
<a name="after-merge-gnus-5_10"></a>
<a name="gnus-5_10-pre-merge-josefsson"></a>
<a name="gnus-5_10-pre-merge-yamaoka"></a>
<a name="before-merge-gnus-5_10"></a>
<a name="gnus-5_10-branchpoint"></a>


Revision <strong>1.2</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.2">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.2">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.2&amp;view=log">[select for diffs]</a>




<br />

<em>Sat May 29 21:02:20 2004 UTC</em> (8 years, 3 months ago) by <em>miles</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=after-merge-gnus-5_10"><strong>after-merge-gnus-5_10</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=before-merge-gnus-5_10"><strong>before-merge-gnus-5_10</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-branchpoint"><strong>gnus-5_10-branchpoint</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-post-merge-josefsson"><strong>gnus-5_10-post-merge-josefsson</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-post-merge-yamaoka"><strong>gnus-5_10-post-merge-yamaoka</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-pre-merge-josefsson"><strong>gnus-5_10-pre-merge-josefsson</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-pre-merge-yamaoka"><strong>gnus-5_10-pre-merge-yamaoka</strong></a>



<br />Branch point for:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=emacs-unicode-2"><strong>emacs-unicode-2</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=gnus-5_10-branch"><strong>gnus-5_10-branch</strong></a>,

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=lexbind"><strong>lexbind</strong></a>





<br />Changes since <strong>1.1: +1 -0 lines</strong>







<br />Diff to <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.1&amp;r2=1.2">previous 1.1</a>










<pre class="vc_log">Changes from arch/CVS synchronization
</pre>
</div>



<div>
<hr />

<a name="rev1.1"></a>


Revision <strong>1.1</strong> -

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?revision=1.1&amp;view=markup">view</a>)

(<a href="/viewvc/*checkout*/emacs/emacs/lisp/progmodes/flymake.el?revision=1.1">download</a>)

(<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?annotate=1.1">annotate</a>)



- <a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?r1=1.1&amp;view=log">[select for diffs]</a>




<br />

<em>Sat May 29 12:07:02 2004 UTC</em> (8 years, 3 months ago) by <em>eliz</em>


<br />Branch:

<a href="/viewvc/emacs/emacs/lisp/progmodes/flymake.el?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>
















<pre class="vc_log">New file.
</pre>
</div>

 



 <hr />
<p><a name="diff"></a>
This form allows you to request diffs between any two revisions of this file.
For each of the two "sides" of the diff,

select a symbolic revision name using the selection box, or choose
'Use Text Field' and enter a numeric revision.

</p>
<form method="get" action="/viewvc/emacs/emacs/lisp/progmodes/flymake.el" id="diff_select">
<table cellpadding="2" cellspacing="0" class="auto">
<tr>
<td>&nbsp;</td>
<td>
<input type="hidden" name="view" value="diff" />
Diffs between

<select name="r1">
<option value="text" selected="selected">Use Text Field</option>

<option value="1.2.2.25:unicode-xft-base">unicode-xft-base</option>

<option value="1.2.2.19.2.5:unicode-xft">unicode-xft</option>

<option value="1.2.2.19:unicode-pre-font-backend">unicode-pre-font-backend</option>

<option value="1.2.2.19:unicode-post-font-backend">unicode-post-font-backend</option>

<option value="1.59:small-dump-base">small-dump-base</option>

<option value="1.40.2.1:rmail-mbox-branch">rmail-mbox-branch</option>

<option value="1.57:remove-vms">remove-vms</option>

<option value="1.57:remove-carbon">remove-carbon</option>

<option value="1.49:multi-tty-base">multi-tty-base</option>

<option value="1.46.4.3:multi-tty">multi-tty</option>

<option value="1.51:merge-unicode-to-trunk">merge-unicode-to-trunk</option>

<option value="1.49:merge-multi-tty-to-trunk">merge-multi-tty-to-trunk</option>

<option value="1.52:lisp-bob">lisp-bob</option>

<option value="1.61:lexbind-base">lexbind-base</option>

<option value="1.2.4.41:lexbind">lexbind</option>

<option value="1.2:gnus-5_10-pre-merge-yamaoka">gnus-5_10-pre-merge-yamaoka</option>

<option value="1.2:gnus-5_10-pre-merge-josefsson">gnus-5_10-pre-merge-josefsson</option>

<option value="1.2:gnus-5_10-post-merge-yamaoka">gnus-5_10-post-merge-yamaoka</option>

<option value="1.2:gnus-5_10-post-merge-josefsson">gnus-5_10-post-merge-josefsson</option>

<option value="1.2:gnus-5_10-branchpoint">gnus-5_10-branchpoint</option>

<option value="1.2:gnus-5_10-branch">gnus-5_10-branch</option>

<option value="1.52:font-backend-base">font-backend-base</option>

<option value="1.52:font-backend">font-backend</option>

<option value="1.51:emacs-unicode-2-base">emacs-unicode-2-base</option>

<option value="1.2.2.29:emacs-unicode-2">emacs-unicode-2</option>

<option value="1.62:cedet-branch">cedet-branch</option>

<option value="1.57:before-remove-vms">before-remove-vms</option>

<option value="1.57:before-remove-carbon">before-remove-carbon</option>

<option value="1.51:before-merge-unicode-to-trunk">before-merge-unicode-to-trunk</option>

<option value="1.49:before-merge-multi-tty-to-trunk">before-merge-multi-tty-to-trunk</option>

<option value="1.2:before-merge-gnus-5_10">before-merge-gnus-5_10</option>

<option value="1.55:before-merge-emacs-app-to-trunk">before-merge-emacs-app-to-trunk</option>

<option value="1.2:after-merge-gnus-5_10">after-merge-gnus-5_10</option>

<option value="1.7:XFT_JHD_BRANCH_base">XFT_JHD_BRANCH_base</option>

<option value="1.7.2.2:XFT_JHD_BRANCH">XFT_JHD_BRANCH</option>

<option value="1.63:MAIN">MAIN</option>

<option value="1.63:HEAD">HEAD</option>

<option value="1.63:EMACS_PRETEST_23_1_90">EMACS_PRETEST_23_1_90</option>

<option value="1.62:EMACS_PRETEST_23_0_96">EMACS_PRETEST_23_0_96</option>

<option value="1.62:EMACS_PRETEST_23_0_95">EMACS_PRETEST_23_0_95</option>

<option value="1.62:EMACS_PRETEST_23_0_94">EMACS_PRETEST_23_0_94</option>

<option value="1.62:EMACS_PRETEST_23_0_93">EMACS_PRETEST_23_0_93</option>

<option value="1.62:EMACS_PRETEST_23_0_92">EMACS_PRETEST_23_0_92</option>

<option value="1.61:EMACS_PRETEST_23_0_91">EMACS_PRETEST_23_0_91</option>

<option value="1.60:EMACS_PRETEST_23_0_90">EMACS_PRETEST_23_0_90</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_92">EMACS_PRETEST_22_2_92</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_91">EMACS_PRETEST_22_2_91</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_90">EMACS_PRETEST_22_2_90</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_92">EMACS_PRETEST_22_1_92</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_91">EMACS_PRETEST_22_1_91</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_90">EMACS_PRETEST_22_1_90</option>

<option value="1.46:EMACS_PRETEST_22_0_990">EMACS_PRETEST_22_0_990</option>

<option value="1.46:EMACS_PRETEST_22_0_99">EMACS_PRETEST_22_0_99</option>

<option value="1.46:EMACS_PRETEST_22_0_98">EMACS_PRETEST_22_0_98</option>

<option value="1.46:EMACS_PRETEST_22_0_97">EMACS_PRETEST_22_0_97</option>

<option value="1.45:EMACS_PRETEST_22_0_96">EMACS_PRETEST_22_0_96</option>

<option value="1.45:EMACS_PRETEST_22_0_95">EMACS_PRETEST_22_0_95</option>

<option value="1.45:EMACS_PRETEST_22_0_94">EMACS_PRETEST_22_0_94</option>

<option value="1.44:EMACS_PRETEST_22_0_93">EMACS_PRETEST_22_0_93</option>

<option value="1.43:EMACS_PRETEST_22_0_92">EMACS_PRETEST_22_0_92</option>

<option value="1.42:EMACS_PRETEST_22_0_91">EMACS_PRETEST_22_0_91</option>

<option value="1.42:EMACS_PRETEST_22_0_90">EMACS_PRETEST_22_0_90</option>

<option value="1.62:EMACS_23_1_RC">EMACS_23_1_RC</option>

<option value="1.62:EMACS_23_1_BASE">EMACS_23_1_BASE</option>

<option value="1.62:EMACS_23_1">EMACS_23_1</option>

<option value="1.46:EMACS_22_BRANCHPOINT">EMACS_22_BRANCHPOINT</option>

<option value="1.46.2.4:EMACS_22_BASE">EMACS_22_BASE</option>

<option value="1.46.2.4:EMACS_22_3">EMACS_22_3</option>

<option value="1.46.2.3:EMACS_22_2">EMACS_22_2</option>

<option value="1.46:EMACS_22_1">EMACS_22_1</option>

<option value="1.62:CEDET_BASE">CEDET_BASE</option>

</select>
<input type="text" size="12" name="tr1"
value="1.2.4.41"
onchange="document.getElementById('diff_select').r1.selectedIndex=0" />

and

<select name="r2">
<option value="text" selected="selected">Use Text Field</option>

<option value="1.2.2.25:unicode-xft-base">unicode-xft-base</option>

<option value="1.2.2.19.2.5:unicode-xft">unicode-xft</option>

<option value="1.2.2.19:unicode-pre-font-backend">unicode-pre-font-backend</option>

<option value="1.2.2.19:unicode-post-font-backend">unicode-post-font-backend</option>

<option value="1.59:small-dump-base">small-dump-base</option>

<option value="1.40.2.1:rmail-mbox-branch">rmail-mbox-branch</option>

<option value="1.57:remove-vms">remove-vms</option>

<option value="1.57:remove-carbon">remove-carbon</option>

<option value="1.49:multi-tty-base">multi-tty-base</option>

<option value="1.46.4.3:multi-tty">multi-tty</option>

<option value="1.51:merge-unicode-to-trunk">merge-unicode-to-trunk</option>

<option value="1.49:merge-multi-tty-to-trunk">merge-multi-tty-to-trunk</option>

<option value="1.52:lisp-bob">lisp-bob</option>

<option value="1.61:lexbind-base">lexbind-base</option>

<option value="1.2.4.41:lexbind">lexbind</option>

<option value="1.2:gnus-5_10-pre-merge-yamaoka">gnus-5_10-pre-merge-yamaoka</option>

<option value="1.2:gnus-5_10-pre-merge-josefsson">gnus-5_10-pre-merge-josefsson</option>

<option value="1.2:gnus-5_10-post-merge-yamaoka">gnus-5_10-post-merge-yamaoka</option>

<option value="1.2:gnus-5_10-post-merge-josefsson">gnus-5_10-post-merge-josefsson</option>

<option value="1.2:gnus-5_10-branchpoint">gnus-5_10-branchpoint</option>

<option value="1.2:gnus-5_10-branch">gnus-5_10-branch</option>

<option value="1.52:font-backend-base">font-backend-base</option>

<option value="1.52:font-backend">font-backend</option>

<option value="1.51:emacs-unicode-2-base">emacs-unicode-2-base</option>

<option value="1.2.2.29:emacs-unicode-2">emacs-unicode-2</option>

<option value="1.62:cedet-branch">cedet-branch</option>

<option value="1.57:before-remove-vms">before-remove-vms</option>

<option value="1.57:before-remove-carbon">before-remove-carbon</option>

<option value="1.51:before-merge-unicode-to-trunk">before-merge-unicode-to-trunk</option>

<option value="1.49:before-merge-multi-tty-to-trunk">before-merge-multi-tty-to-trunk</option>

<option value="1.2:before-merge-gnus-5_10">before-merge-gnus-5_10</option>

<option value="1.55:before-merge-emacs-app-to-trunk">before-merge-emacs-app-to-trunk</option>

<option value="1.2:after-merge-gnus-5_10">after-merge-gnus-5_10</option>

<option value="1.7:XFT_JHD_BRANCH_base">XFT_JHD_BRANCH_base</option>

<option value="1.7.2.2:XFT_JHD_BRANCH">XFT_JHD_BRANCH</option>

<option value="1.63:MAIN">MAIN</option>

<option value="1.63:HEAD">HEAD</option>

<option value="1.63:EMACS_PRETEST_23_1_90">EMACS_PRETEST_23_1_90</option>

<option value="1.62:EMACS_PRETEST_23_0_96">EMACS_PRETEST_23_0_96</option>

<option value="1.62:EMACS_PRETEST_23_0_95">EMACS_PRETEST_23_0_95</option>

<option value="1.62:EMACS_PRETEST_23_0_94">EMACS_PRETEST_23_0_94</option>

<option value="1.62:EMACS_PRETEST_23_0_93">EMACS_PRETEST_23_0_93</option>

<option value="1.62:EMACS_PRETEST_23_0_92">EMACS_PRETEST_23_0_92</option>

<option value="1.61:EMACS_PRETEST_23_0_91">EMACS_PRETEST_23_0_91</option>

<option value="1.60:EMACS_PRETEST_23_0_90">EMACS_PRETEST_23_0_90</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_92">EMACS_PRETEST_22_2_92</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_91">EMACS_PRETEST_22_2_91</option>

<option value="1.46.2.4:EMACS_PRETEST_22_2_90">EMACS_PRETEST_22_2_90</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_92">EMACS_PRETEST_22_1_92</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_91">EMACS_PRETEST_22_1_91</option>

<option value="1.46.2.3:EMACS_PRETEST_22_1_90">EMACS_PRETEST_22_1_90</option>

<option value="1.46:EMACS_PRETEST_22_0_990">EMACS_PRETEST_22_0_990</option>

<option value="1.46:EMACS_PRETEST_22_0_99">EMACS_PRETEST_22_0_99</option>

<option value="1.46:EMACS_PRETEST_22_0_98">EMACS_PRETEST_22_0_98</option>

<option value="1.46:EMACS_PRETEST_22_0_97">EMACS_PRETEST_22_0_97</option>

<option value="1.45:EMACS_PRETEST_22_0_96">EMACS_PRETEST_22_0_96</option>

<option value="1.45:EMACS_PRETEST_22_0_95">EMACS_PRETEST_22_0_95</option>

<option value="1.45:EMACS_PRETEST_22_0_94">EMACS_PRETEST_22_0_94</option>

<option value="1.44:EMACS_PRETEST_22_0_93">EMACS_PRETEST_22_0_93</option>

<option value="1.43:EMACS_PRETEST_22_0_92">EMACS_PRETEST_22_0_92</option>

<option value="1.42:EMACS_PRETEST_22_0_91">EMACS_PRETEST_22_0_91</option>

<option value="1.42:EMACS_PRETEST_22_0_90">EMACS_PRETEST_22_0_90</option>

<option value="1.62:EMACS_23_1_RC">EMACS_23_1_RC</option>

<option value="1.62:EMACS_23_1_BASE">EMACS_23_1_BASE</option>

<option value="1.62:EMACS_23_1">EMACS_23_1</option>

<option value="1.46:EMACS_22_BRANCHPOINT">EMACS_22_BRANCHPOINT</option>

<option value="1.46.2.4:EMACS_22_BASE">EMACS_22_BASE</option>

<option value="1.46.2.4:EMACS_22_3">EMACS_22_3</option>

<option value="1.46.2.3:EMACS_22_2">EMACS_22_2</option>

<option value="1.46:EMACS_22_1">EMACS_22_1</option>

<option value="1.62:CEDET_BASE">CEDET_BASE</option>

</select>
<input type="text" size="12" name="tr2"
value="1.1"
onchange="document.getElementById('diff_select').r2.selectedIndex=0" />

</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
Type of Diff should be a
<select name="diff_format" onchange="submit()">
<option value="h" selected="selected">Colored Diff</option>
<option value="l" >Long Colored Diff</option>
<option value="u" >Unidiff</option>
<option value="c" >Context Diff</option>
<option value="s" >Side by Side</option>
</select>
<input type="submit" value=" Get Diffs " />
</td>
</tr>
</table>
</form>


<form method="get" action="/viewvc/emacs/emacs/lisp/progmodes/flymake.el">
<div>
<hr />
<a name="logsort"></a>
<input type="hidden" name="view" value="log" />
Sort log by:
<select name="logsort" onchange="submit()">
<option value="cvs" >Not sorted</option>
<option value="date" selected="selected">Commit date</option>
<option value="rev" >Revision</option>
</select>
<input type="submit" value=" Sort " />
</div>
</form>


<hr />
<table>
<tr>
<td><address>Send suggestions and report system problems to the <a href="https://savannah.gnu.org/support/?group=administration">Savannah Hackers</a>.</address></td>
<td style="text-align: right;"><strong><a href="/viewcvs-doc/help_log.html">ViewVC Help</a></strong></td>
</tr>
<tr>
<td>Powered by <a href="http://viewvc.tigris.org/">ViewVC 1.0.7</a></td>
<td style="text-align: right;">&nbsp;</td>
</tr>
</table>
</body>
</html>


