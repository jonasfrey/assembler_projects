# installation
this is a handy script to create a file structure for assembler projects/scripts 

```bash
#create file structure
./create_new_assembly_script.sh my_new_test_script 
# cd into folder
cd my_new_test_script 
# make and execute 
./make_make_and_execute.sh
```

 # syscall helper 
 
 
 <!DOCTYPE html>
<html lang='en'>
<head>
<title>syscall_64.tbl « syscalls « entry « x86 « arch - kernel/git/stable/linux.git - Linux kernel stable tree</title>
<meta name='generator' content='cgit 1.2.3-1.el7'/>
<meta name='robots' content='noindex, nofollow'/>
<link rel='stylesheet' type='text/css' href='/cgit-data/cgit.css'/>
<link rel='shortcut icon' href='/favicon.ico'/>
<link rel='alternate' title='Atom feed' href='http://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/atom/arch/x86/entry/syscalls/syscall_64.tbl?h=master' type='application/atom+xml'/>
<link rel='vcs-git' href='git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git' title='kernel/git/stable/linux.git Git repository'/>
<link rel='vcs-git' href='https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git' title='kernel/git/stable/linux.git Git repository'/>
<link rel='vcs-git' href='https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux.git' title='kernel/git/stable/linux.git Git repository'/>
</head>
<body>
<div id='cgit'><table id='header'>
<tr>
<td class='logo' rowspan='2'><a href='/'><img src='/cgit-data/cgit.png' alt='cgit logo'/></a></td>
<td class='main'><a href='/'>index</a> : <a title='kernel/git/stable/linux.git' href='/pub/scm/linux/kernel/git/stable/linux.git/'>kernel/git/stable/linux.git</a></td><td class='form'><form method='get'>
<select name='h' onchange='this.form.submit();'>
<option value='linux-2.6.11.y'>linux-2.6.11.y</option>
<option value='linux-2.6.12.y'>linux-2.6.12.y</option>
<option value='linux-2.6.13.y'>linux-2.6.13.y</option>
<option value='linux-2.6.14.y'>linux-2.6.14.y</option>
<option value='linux-2.6.15.y'>linux-2.6.15.y</option>
<option value='linux-2.6.16.y'>linux-2.6.16.y</option>
<option value='linux-2.6.17.y'>linux-2.6.17.y</option>
<option value='linux-2.6.18.y'>linux-2.6.18.y</option>
<option value='linux-2.6.19.y'>linux-2.6.19.y</option>
<option value='linux-2.6.20.y'>linux-2.6.20.y</option>
<option value='linux-2.6.21.y'>linux-2.6.21.y</option>
<option value='linux-2.6.22.y'>linux-2.6.22.y</option>
<option value='linux-2.6.23.y'>linux-2.6.23.y</option>
<option value='linux-2.6.24.y'>linux-2.6.24.y</option>
<option value='linux-2.6.25.y'>linux-2.6.25.y</option>
<option value='linux-2.6.26.y'>linux-2.6.26.y</option>
<option value='linux-2.6.27.y'>linux-2.6.27.y</option>
<option value='linux-2.6.28.y'>linux-2.6.28.y</option>
<option value='linux-2.6.29.y'>linux-2.6.29.y</option>
<option value='linux-2.6.30.y'>linux-2.6.30.y</option>
<option value='linux-2.6.31.y'>linux-2.6.31.y</option>
<option value='linux-2.6.32.y'>linux-2.6.32.y</option>
<option value='linux-2.6.33.y'>linux-2.6.33.y</option>
<option value='linux-2.6.34.y'>linux-2.6.34.y</option>
<option value='linux-2.6.35.y'>linux-2.6.35.y</option>
<option value='linux-2.6.36.y'>linux-2.6.36.y</option>
<option value='linux-2.6.37.y'>linux-2.6.37.y</option>
<option value='linux-2.6.38.y'>linux-2.6.38.y</option>
<option value='linux-2.6.39.y'>linux-2.6.39.y</option>
<option value='linux-3.0.y'>linux-3.0.y</option>
<option value='linux-3.1.y'>linux-3.1.y</option>
<option value='linux-3.10.y'>linux-3.10.y</option>
<option value='linux-3.11.y'>linux-3.11.y</option>
<option value='linux-3.12.y'>linux-3.12.y</option>
<option value='linux-3.13.y'>linux-3.13.y</option>
<option value='linux-3.14.y'>linux-3.14.y</option>
<option value='linux-3.15.y'>linux-3.15.y</option>
<option value='linux-3.16.y'>linux-3.16.y</option>
<option value='linux-3.17.y'>linux-3.17.y</option>
<option value='linux-3.18.y'>linux-3.18.y</option>
<option value='linux-3.19.y'>linux-3.19.y</option>
<option value='linux-3.2.y'>linux-3.2.y</option>
<option value='linux-3.3.y'>linux-3.3.y</option>
<option value='linux-3.4.y'>linux-3.4.y</option>
<option value='linux-3.5.y'>linux-3.5.y</option>
<option value='linux-3.6.y'>linux-3.6.y</option>
<option value='linux-3.7.y'>linux-3.7.y</option>
<option value='linux-3.8.y'>linux-3.8.y</option>
<option value='linux-3.9.y'>linux-3.9.y</option>
<option value='linux-4.0.y'>linux-4.0.y</option>
<option value='linux-4.1.y'>linux-4.1.y</option>
<option value='linux-4.10.y'>linux-4.10.y</option>
<option value='linux-4.11.y'>linux-4.11.y</option>
<option value='linux-4.12.y'>linux-4.12.y</option>
<option value='linux-4.13.y'>linux-4.13.y</option>
<option value='linux-4.14.y'>linux-4.14.y</option>
<option value='linux-4.15.y'>linux-4.15.y</option>
<option value='linux-4.16.y'>linux-4.16.y</option>
<option value='linux-4.17.y'>linux-4.17.y</option>
<option value='linux-4.18.y'>linux-4.18.y</option>
<option value='linux-4.19.y'>linux-4.19.y</option>
<option value='linux-4.2.y'>linux-4.2.y</option>
<option value='linux-4.20.y'>linux-4.20.y</option>
<option value='linux-4.3.y'>linux-4.3.y</option>
<option value='linux-4.4.y'>linux-4.4.y</option>
<option value='linux-4.5.y'>linux-4.5.y</option>
<option value='linux-4.6.y'>linux-4.6.y</option>
<option value='linux-4.7.y'>linux-4.7.y</option>
<option value='linux-4.8.y'>linux-4.8.y</option>
<option value='linux-4.9.y'>linux-4.9.y</option>
<option value='linux-5.0.y'>linux-5.0.y</option>
<option value='linux-5.1.y'>linux-5.1.y</option>
<option value='linux-5.10.y'>linux-5.10.y</option>
<option value='linux-5.11.y'>linux-5.11.y</option>
<option value='linux-5.12.y'>linux-5.12.y</option>
<option value='linux-5.13.y'>linux-5.13.y</option>
<option value='linux-5.14.y'>linux-5.14.y</option>
<option value='linux-5.2.y'>linux-5.2.y</option>
<option value='linux-5.3.y'>linux-5.3.y</option>
<option value='linux-5.4.y'>linux-5.4.y</option>
<option value='linux-5.5.y'>linux-5.5.y</option>
<option value='linux-5.6.y'>linux-5.6.y</option>
<option value='linux-5.7.y'>linux-5.7.y</option>
<option value='linux-5.8.y'>linux-5.8.y</option>
<option value='linux-5.9.y'>linux-5.9.y</option>
<option value='linux-rolling-lts'>linux-rolling-lts</option>
<option value='linux-rolling-stable'>linux-rolling-stable</option>
<option value='master' selected='selected'>master</option>
</select> <input type='submit' value='switch'/></form></td></tr>
<tr><td class='sub'>Linux kernel stable tree</td><td class='sub right'>Stable Group</td></tr></table>
<table class='tabs'><tr><td>
<a href='/pub/scm/linux/kernel/git/stable/linux.git/about/'>about</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/'>summary</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/refs/'>refs</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/log/arch/x86/entry/syscalls/syscall_64.tbl'>log</a><a class='active' href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/entry/syscalls/syscall_64.tbl'>tree</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/commit/arch/x86/entry/syscalls/syscall_64.tbl'>commit</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/diff/arch/x86/entry/syscalls/syscall_64.tbl'>diff</a><a href='/pub/scm/linux/kernel/git/stable/linux.git/stats/arch/x86/entry/syscalls/syscall_64.tbl'>stats</a></td><td class='form'><form class='right' method='get' action='/pub/scm/linux/kernel/git/stable/linux.git/log/arch/x86/entry/syscalls/syscall_64.tbl'>
<select name='qt'>
<option value='grep'>log msg</option>
<option value='author'>author</option>
<option value='committer'>committer</option>
<option value='range'>range</option>
</select>
<input class='txt' type='search' size='10' name='q' value=''/>
<input type='submit' value='search'/>
</form>
</td></tr></table>
<div class='path'>path: <a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/'>root</a>/<a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch'>arch</a>/<a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86'>x86</a>/<a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/entry'>entry</a>/<a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/entry/syscalls'>syscalls</a>/<a href='/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/entry/syscalls/syscall_64.tbl'>syscall_64.tbl</a></div><div class='content'>blob: 18b5500ea8bfd5fc1f240f1b4527bb641ca3b5f8 (<a href='/pub/scm/linux/kernel/git/stable/linux.git/plain/arch/x86/entry/syscalls/syscall_64.tbl'>plain</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a id='n1' href='#n1'>1</a>
<a id='n2' href='#n2'>2</a>
<a id='n3' href='#n3'>3</a>
<a id='n4' href='#n4'>4</a>
<a id='n5' href='#n5'>5</a>
<a id='n6' href='#n6'>6</a>
<a id='n7' href='#n7'>7</a>
<a id='n8' href='#n8'>8</a>
<a id='n9' href='#n9'>9</a>
<a id='n10' href='#n10'>10</a>
<a id='n11' href='#n11'>11</a>
<a id='n12' href='#n12'>12</a>
<a id='n13' href='#n13'>13</a>
<a id='n14' href='#n14'>14</a>
<a id='n15' href='#n15'>15</a>
<a id='n16' href='#n16'>16</a>
<a id='n17' href='#n17'>17</a>
<a id='n18' href='#n18'>18</a>
<a id='n19' href='#n19'>19</a>
<a id='n20' href='#n20'>20</a>
<a id='n21' href='#n21'>21</a>
<a id='n22' href='#n22'>22</a>
<a id='n23' href='#n23'>23</a>
<a id='n24' href='#n24'>24</a>
<a id='n25' href='#n25'>25</a>
<a id='n26' href='#n26'>26</a>
<a id='n27' href='#n27'>27</a>
<a id='n28' href='#n28'>28</a>
<a id='n29' href='#n29'>29</a>
<a id='n30' href='#n30'>30</a>
<a id='n31' href='#n31'>31</a>
<a id='n32' href='#n32'>32</a>
<a id='n33' href='#n33'>33</a>
<a id='n34' href='#n34'>34</a>
<a id='n35' href='#n35'>35</a>
<a id='n36' href='#n36'>36</a>
<a id='n37' href='#n37'>37</a>
<a id='n38' href='#n38'>38</a>
<a id='n39' href='#n39'>39</a>
<a id='n40' href='#n40'>40</a>
<a id='n41' href='#n41'>41</a>
<a id='n42' href='#n42'>42</a>
<a id='n43' href='#n43'>43</a>
<a id='n44' href='#n44'>44</a>
<a id='n45' href='#n45'>45</a>
<a id='n46' href='#n46'>46</a>
<a id='n47' href='#n47'>47</a>
<a id='n48' href='#n48'>48</a>
<a id='n49' href='#n49'>49</a>
<a id='n50' href='#n50'>50</a>
<a id='n51' href='#n51'>51</a>
<a id='n52' href='#n52'>52</a>
<a id='n53' href='#n53'>53</a>
<a id='n54' href='#n54'>54</a>
<a id='n55' href='#n55'>55</a>
<a id='n56' href='#n56'>56</a>
<a id='n57' href='#n57'>57</a>
<a id='n58' href='#n58'>58</a>
<a id='n59' href='#n59'>59</a>
<a id='n60' href='#n60'>60</a>
<a id='n61' href='#n61'>61</a>
<a id='n62' href='#n62'>62</a>
<a id='n63' href='#n63'>63</a>
<a id='n64' href='#n64'>64</a>
<a id='n65' href='#n65'>65</a>
<a id='n66' href='#n66'>66</a>
<a id='n67' href='#n67'>67</a>
<a id='n68' href='#n68'>68</a>
<a id='n69' href='#n69'>69</a>
<a id='n70' href='#n70'>70</a>
<a id='n71' href='#n71'>71</a>
<a id='n72' href='#n72'>72</a>
<a id='n73' href='#n73'>73</a>
<a id='n74' href='#n74'>74</a>
<a id='n75' href='#n75'>75</a>
<a id='n76' href='#n76'>76</a>
<a id='n77' href='#n77'>77</a>
<a id='n78' href='#n78'>78</a>
<a id='n79' href='#n79'>79</a>
<a id='n80' href='#n80'>80</a>
<a id='n81' href='#n81'>81</a>
<a id='n82' href='#n82'>82</a>
<a id='n83' href='#n83'>83</a>
<a id='n84' href='#n84'>84</a>
<a id='n85' href='#n85'>85</a>
<a id='n86' href='#n86'>86</a>
<a id='n87' href='#n87'>87</a>
<a id='n88' href='#n88'>88</a>
<a id='n89' href='#n89'>89</a>
<a id='n90' href='#n90'>90</a>
<a id='n91' href='#n91'>91</a>
<a id='n92' href='#n92'>92</a>
<a id='n93' href='#n93'>93</a>
<a id='n94' href='#n94'>94</a>
<a id='n95' href='#n95'>95</a>
<a id='n96' href='#n96'>96</a>
<a id='n97' href='#n97'>97</a>
<a id='n98' href='#n98'>98</a>
<a id='n99' href='#n99'>99</a>
<a id='n100' href='#n100'>100</a>
<a id='n101' href='#n101'>101</a>
<a id='n102' href='#n102'>102</a>
<a id='n103' href='#n103'>103</a>
<a id='n104' href='#n104'>104</a>
<a id='n105' href='#n105'>105</a>
<a id='n106' href='#n106'>106</a>
<a id='n107' href='#n107'>107</a>
<a id='n108' href='#n108'>108</a>
<a id='n109' href='#n109'>109</a>
<a id='n110' href='#n110'>110</a>
<a id='n111' href='#n111'>111</a>
<a id='n112' href='#n112'>112</a>
<a id='n113' href='#n113'>113</a>
<a id='n114' href='#n114'>114</a>
<a id='n115' href='#n115'>115</a>
<a id='n116' href='#n116'>116</a>
<a id='n117' href='#n117'>117</a>
<a id='n118' href='#n118'>118</a>
<a id='n119' href='#n119'>119</a>
<a id='n120' href='#n120'>120</a>
<a id='n121' href='#n121'>121</a>
<a id='n122' href='#n122'>122</a>
<a id='n123' href='#n123'>123</a>
<a id='n124' href='#n124'>124</a>
<a id='n125' href='#n125'>125</a>
<a id='n126' href='#n126'>126</a>
<a id='n127' href='#n127'>127</a>
<a id='n128' href='#n128'>128</a>
<a id='n129' href='#n129'>129</a>
<a id='n130' href='#n130'>130</a>
<a id='n131' href='#n131'>131</a>
<a id='n132' href='#n132'>132</a>
<a id='n133' href='#n133'>133</a>
<a id='n134' href='#n134'>134</a>
<a id='n135' href='#n135'>135</a>
<a id='n136' href='#n136'>136</a>
<a id='n137' href='#n137'>137</a>
<a id='n138' href='#n138'>138</a>
<a id='n139' href='#n139'>139</a>
<a id='n140' href='#n140'>140</a>
<a id='n141' href='#n141'>141</a>
<a id='n142' href='#n142'>142</a>
<a id='n143' href='#n143'>143</a>
<a id='n144' href='#n144'>144</a>
<a id='n145' href='#n145'>145</a>
<a id='n146' href='#n146'>146</a>
<a id='n147' href='#n147'>147</a>
<a id='n148' href='#n148'>148</a>
<a id='n149' href='#n149'>149</a>
<a id='n150' href='#n150'>150</a>
<a id='n151' href='#n151'>151</a>
<a id='n152' href='#n152'>152</a>
<a id='n153' href='#n153'>153</a>
<a id='n154' href='#n154'>154</a>
<a id='n155' href='#n155'>155</a>
<a id='n156' href='#n156'>156</a>
<a id='n157' href='#n157'>157</a>
<a id='n158' href='#n158'>158</a>
<a id='n159' href='#n159'>159</a>
<a id='n160' href='#n160'>160</a>
<a id='n161' href='#n161'>161</a>
<a id='n162' href='#n162'>162</a>
<a id='n163' href='#n163'>163</a>
<a id='n164' href='#n164'>164</a>
<a id='n165' href='#n165'>165</a>
<a id='n166' href='#n166'>166</a>
<a id='n167' href='#n167'>167</a>
<a id='n168' href='#n168'>168</a>
<a id='n169' href='#n169'>169</a>
<a id='n170' href='#n170'>170</a>
<a id='n171' href='#n171'>171</a>
<a id='n172' href='#n172'>172</a>
<a id='n173' href='#n173'>173</a>
<a id='n174' href='#n174'>174</a>
<a id='n175' href='#n175'>175</a>
<a id='n176' href='#n176'>176</a>
<a id='n177' href='#n177'>177</a>
<a id='n178' href='#n178'>178</a>
<a id='n179' href='#n179'>179</a>
<a id='n180' href='#n180'>180</a>
<a id='n181' href='#n181'>181</a>
<a id='n182' href='#n182'>182</a>
<a id='n183' href='#n183'>183</a>
<a id='n184' href='#n184'>184</a>
<a id='n185' href='#n185'>185</a>
<a id='n186' href='#n186'>186</a>
<a id='n187' href='#n187'>187</a>
<a id='n188' href='#n188'>188</a>
<a id='n189' href='#n189'>189</a>
<a id='n190' href='#n190'>190</a>
<a id='n191' href='#n191'>191</a>
<a id='n192' href='#n192'>192</a>
<a id='n193' href='#n193'>193</a>
<a id='n194' href='#n194'>194</a>
<a id='n195' href='#n195'>195</a>
<a id='n196' href='#n196'>196</a>
<a id='n197' href='#n197'>197</a>
<a id='n198' href='#n198'>198</a>
<a id='n199' href='#n199'>199</a>
<a id='n200' href='#n200'>200</a>
<a id='n201' href='#n201'>201</a>
<a id='n202' href='#n202'>202</a>
<a id='n203' href='#n203'>203</a>
<a id='n204' href='#n204'>204</a>
<a id='n205' href='#n205'>205</a>
<a id='n206' href='#n206'>206</a>
<a id='n207' href='#n207'>207</a>
<a id='n208' href='#n208'>208</a>
<a id='n209' href='#n209'>209</a>
<a id='n210' href='#n210'>210</a>
<a id='n211' href='#n211'>211</a>
<a id='n212' href='#n212'>212</a>
<a id='n213' href='#n213'>213</a>
<a id='n214' href='#n214'>214</a>
<a id='n215' href='#n215'>215</a>
<a id='n216' href='#n216'>216</a>
<a id='n217' href='#n217'>217</a>
<a id='n218' href='#n218'>218</a>
<a id='n219' href='#n219'>219</a>
<a id='n220' href='#n220'>220</a>
<a id='n221' href='#n221'>221</a>
<a id='n222' href='#n222'>222</a>
<a id='n223' href='#n223'>223</a>
<a id='n224' href='#n224'>224</a>
<a id='n225' href='#n225'>225</a>
<a id='n226' href='#n226'>226</a>
<a id='n227' href='#n227'>227</a>
<a id='n228' href='#n228'>228</a>
<a id='n229' href='#n229'>229</a>
<a id='n230' href='#n230'>230</a>
<a id='n231' href='#n231'>231</a>
<a id='n232' href='#n232'>232</a>
<a id='n233' href='#n233'>233</a>
<a id='n234' href='#n234'>234</a>
<a id='n235' href='#n235'>235</a>
<a id='n236' href='#n236'>236</a>
<a id='n237' href='#n237'>237</a>
<a id='n238' href='#n238'>238</a>
<a id='n239' href='#n239'>239</a>
<a id='n240' href='#n240'>240</a>
<a id='n241' href='#n241'>241</a>
<a id='n242' href='#n242'>242</a>
<a id='n243' href='#n243'>243</a>
<a id='n244' href='#n244'>244</a>
<a id='n245' href='#n245'>245</a>
<a id='n246' href='#n246'>246</a>
<a id='n247' href='#n247'>247</a>
<a id='n248' href='#n248'>248</a>
<a id='n249' href='#n249'>249</a>
<a id='n250' href='#n250'>250</a>
<a id='n251' href='#n251'>251</a>
<a id='n252' href='#n252'>252</a>
<a id='n253' href='#n253'>253</a>
<a id='n254' href='#n254'>254</a>
<a id='n255' href='#n255'>255</a>
<a id='n256' href='#n256'>256</a>
<a id='n257' href='#n257'>257</a>
<a id='n258' href='#n258'>258</a>
<a id='n259' href='#n259'>259</a>
<a id='n260' href='#n260'>260</a>
<a id='n261' href='#n261'>261</a>
<a id='n262' href='#n262'>262</a>
<a id='n263' href='#n263'>263</a>
<a id='n264' href='#n264'>264</a>
<a id='n265' href='#n265'>265</a>
<a id='n266' href='#n266'>266</a>
<a id='n267' href='#n267'>267</a>
<a id='n268' href='#n268'>268</a>
<a id='n269' href='#n269'>269</a>
<a id='n270' href='#n270'>270</a>
<a id='n271' href='#n271'>271</a>
<a id='n272' href='#n272'>272</a>
<a id='n273' href='#n273'>273</a>
<a id='n274' href='#n274'>274</a>
<a id='n275' href='#n275'>275</a>
<a id='n276' href='#n276'>276</a>
<a id='n277' href='#n277'>277</a>
<a id='n278' href='#n278'>278</a>
<a id='n279' href='#n279'>279</a>
<a id='n280' href='#n280'>280</a>
<a id='n281' href='#n281'>281</a>
<a id='n282' href='#n282'>282</a>
<a id='n283' href='#n283'>283</a>
<a id='n284' href='#n284'>284</a>
<a id='n285' href='#n285'>285</a>
<a id='n286' href='#n286'>286</a>
<a id='n287' href='#n287'>287</a>
<a id='n288' href='#n288'>288</a>
<a id='n289' href='#n289'>289</a>
<a id='n290' href='#n290'>290</a>
<a id='n291' href='#n291'>291</a>
<a id='n292' href='#n292'>292</a>
<a id='n293' href='#n293'>293</a>
<a id='n294' href='#n294'>294</a>
<a id='n295' href='#n295'>295</a>
<a id='n296' href='#n296'>296</a>
<a id='n297' href='#n297'>297</a>
<a id='n298' href='#n298'>298</a>
<a id='n299' href='#n299'>299</a>
<a id='n300' href='#n300'>300</a>
<a id='n301' href='#n301'>301</a>
<a id='n302' href='#n302'>302</a>
<a id='n303' href='#n303'>303</a>
<a id='n304' href='#n304'>304</a>
<a id='n305' href='#n305'>305</a>
<a id='n306' href='#n306'>306</a>
<a id='n307' href='#n307'>307</a>
<a id='n308' href='#n308'>308</a>
<a id='n309' href='#n309'>309</a>
<a id='n310' href='#n310'>310</a>
<a id='n311' href='#n311'>311</a>
<a id='n312' href='#n312'>312</a>
<a id='n313' href='#n313'>313</a>
<a id='n314' href='#n314'>314</a>
<a id='n315' href='#n315'>315</a>
<a id='n316' href='#n316'>316</a>
<a id='n317' href='#n317'>317</a>
<a id='n318' href='#n318'>318</a>
<a id='n319' href='#n319'>319</a>
<a id='n320' href='#n320'>320</a>
<a id='n321' href='#n321'>321</a>
<a id='n322' href='#n322'>322</a>
<a id='n323' href='#n323'>323</a>
<a id='n324' href='#n324'>324</a>
<a id='n325' href='#n325'>325</a>
<a id='n326' href='#n326'>326</a>
<a id='n327' href='#n327'>327</a>
<a id='n328' href='#n328'>328</a>
<a id='n329' href='#n329'>329</a>
<a id='n330' href='#n330'>330</a>
<a id='n331' href='#n331'>331</a>
<a id='n332' href='#n332'>332</a>
<a id='n333' href='#n333'>333</a>
<a id='n334' href='#n334'>334</a>
<a id='n335' href='#n335'>335</a>
<a id='n336' href='#n336'>336</a>
<a id='n337' href='#n337'>337</a>
<a id='n338' href='#n338'>338</a>
<a id='n339' href='#n339'>339</a>
<a id='n340' href='#n340'>340</a>
<a id='n341' href='#n341'>341</a>
<a id='n342' href='#n342'>342</a>
<a id='n343' href='#n343'>343</a>
<a id='n344' href='#n344'>344</a>
<a id='n345' href='#n345'>345</a>
<a id='n346' href='#n346'>346</a>
<a id='n347' href='#n347'>347</a>
<a id='n348' href='#n348'>348</a>
<a id='n349' href='#n349'>349</a>
<a id='n350' href='#n350'>350</a>
<a id='n351' href='#n351'>351</a>
<a id='n352' href='#n352'>352</a>
<a id='n353' href='#n353'>353</a>
<a id='n354' href='#n354'>354</a>
<a id='n355' href='#n355'>355</a>
<a id='n356' href='#n356'>356</a>
<a id='n357' href='#n357'>357</a>
<a id='n358' href='#n358'>358</a>
<a id='n359' href='#n359'>359</a>
<a id='n360' href='#n360'>360</a>
<a id='n361' href='#n361'>361</a>
<a id='n362' href='#n362'>362</a>
<a id='n363' href='#n363'>363</a>
<a id='n364' href='#n364'>364</a>
<a id='n365' href='#n365'>365</a>
<a id='n366' href='#n366'>366</a>
<a id='n367' href='#n367'>367</a>
<a id='n368' href='#n368'>368</a>
<a id='n369' href='#n369'>369</a>
<a id='n370' href='#n370'>370</a>
<a id='n371' href='#n371'>371</a>
<a id='n372' href='#n372'>372</a>
<a id='n373' href='#n373'>373</a>
<a id='n374' href='#n374'>374</a>
<a id='n375' href='#n375'>375</a>
<a id='n376' href='#n376'>376</a>
<a id='n377' href='#n377'>377</a>
<a id='n378' href='#n378'>378</a>
<a id='n379' href='#n379'>379</a>
<a id='n380' href='#n380'>380</a>
<a id='n381' href='#n381'>381</a>
<a id='n382' href='#n382'>382</a>
<a id='n383' href='#n383'>383</a>
<a id='n384' href='#n384'>384</a>
<a id='n385' href='#n385'>385</a>
<a id='n386' href='#n386'>386</a>
<a id='n387' href='#n387'>387</a>
<a id='n388' href='#n388'>388</a>
<a id='n389' href='#n389'>389</a>
<a id='n390' href='#n390'>390</a>
<a id='n391' href='#n391'>391</a>
<a id='n392' href='#n392'>392</a>
<a id='n393' href='#n393'>393</a>
<a id='n394' href='#n394'>394</a>
<a id='n395' href='#n395'>395</a>
<a id='n396' href='#n396'>396</a>
<a id='n397' href='#n397'>397</a>
<a id='n398' href='#n398'>398</a>
<a id='n399' href='#n399'>399</a>
<a id='n400' href='#n400'>400</a>
<a id='n401' href='#n401'>401</a>
<a id='n402' href='#n402'>402</a>
<a id='n403' href='#n403'>403</a>
<a id='n404' href='#n404'>404</a>
<a id='n405' href='#n405'>405</a>
<a id='n406' href='#n406'>406</a>
<a id='n407' href='#n407'>407</a>
<a id='n408' href='#n408'>408</a>
<a id='n409' href='#n409'>409</a>
<a id='n410' href='#n410'>410</a>
<a id='n411' href='#n411'>411</a>
<a id='n412' href='#n412'>412</a>
<a id='n413' href='#n413'>413</a>
<a id='n414' href='#n414'>414</a>
<a id='n415' href='#n415'>415</a>
<a id='n416' href='#n416'>416</a>
<a id='n417' href='#n417'>417</a>
</pre></td>
<td class='lines'><pre><code><style>.highlight .hll { background-color: #ffffcc }
.highlight .c { color: #888888 } /* Comment */
.highlight .err { color: #a61717; background-color: #e3d2d2 } /* Error */
.highlight .k { color: #008800; font-weight: bold } /* Keyword */
.highlight .ch { color: #888888 } /* Comment.Hashbang */
.highlight .cm { color: #888888 } /* Comment.Multiline */
.highlight .cp { color: #cc0000; font-weight: bold } /* Comment.Preproc */
.highlight .cpf { color: #888888 } /* Comment.PreprocFile */
.highlight .c1 { color: #888888 } /* Comment.Single */
.highlight .cs { color: #cc0000; font-weight: bold; background-color: #fff0f0 } /* Comment.Special */
.highlight .gd { color: #000000; background-color: #ffdddd } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #aa0000 } /* Generic.Error */
.highlight .gh { color: #333333 } /* Generic.Heading */
.highlight .gi { color: #000000; background-color: #ddffdd } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #555555 } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #666666 } /* Generic.Subheading */
.highlight .gt { color: #aa0000 } /* Generic.Traceback */
.highlight .kc { color: #008800; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008800; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008800; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008800 } /* Keyword.Pseudo */
.highlight .kr { color: #008800; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #888888; font-weight: bold } /* Keyword.Type */
.highlight .m { color: #0000DD; font-weight: bold } /* Literal.Number */
.highlight .s { color: #dd2200; background-color: #fff0f0 } /* Literal.String */
.highlight .na { color: #336699 } /* Name.Attribute */
.highlight .nb { color: #003388 } /* Name.Builtin */
.highlight .nc { color: #bb0066; font-weight: bold } /* Name.Class */
.highlight .no { color: #003366; font-weight: bold } /* Name.Constant */
.highlight .nd { color: #555555 } /* Name.Decorator */
.highlight .ne { color: #bb0066; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0066bb; font-weight: bold } /* Name.Function */
.highlight .nl { color: #336699; font-style: italic } /* Name.Label */
.highlight .nn { color: #bb0066; font-weight: bold } /* Name.Namespace */
.highlight .py { color: #336699; font-weight: bold } /* Name.Property */
.highlight .nt { color: #bb0066; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #336699 } /* Name.Variable */
.highlight .ow { color: #008800 } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #0000DD; font-weight: bold } /* Literal.Number.Bin */
.highlight .mf { color: #0000DD; font-weight: bold } /* Literal.Number.Float */
.highlight .mh { color: #0000DD; font-weight: bold } /* Literal.Number.Hex */
.highlight .mi { color: #0000DD; font-weight: bold } /* Literal.Number.Integer */
.highlight .mo { color: #0000DD; font-weight: bold } /* Literal.Number.Oct */
.highlight .sa { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Affix */
.highlight .sb { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Backtick */
.highlight .sc { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Char */
.highlight .dl { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Delimiter */
.highlight .sd { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Doc */
.highlight .s2 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Double */
.highlight .se { color: #0044dd; background-color: #fff0f0 } /* Literal.String.Escape */
.highlight .sh { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Heredoc */
.highlight .si { color: #3333bb; background-color: #fff0f0 } /* Literal.String.Interpol */
.highlight .sx { color: #22bb22; background-color: #f0fff0 } /* Literal.String.Other */
.highlight .sr { color: #008800; background-color: #fff0ff } /* Literal.String.Regex */
.highlight .s1 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Single */
.highlight .ss { color: #aa6600; background-color: #fff0f0 } /* Literal.String.Symbol */
.highlight .bp { color: #003388 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0066bb; font-weight: bold } /* Name.Function.Magic */
.highlight .vc { color: #336699 } /* Name.Variable.Class */
.highlight .vg { color: #dd7700 } /* Name.Variable.Global */
.highlight .vi { color: #3333bb } /* Name.Variable.Instance */
.highlight .vm { color: #336699 } /* Name.Variable.Magic */
.highlight .il { color: #0000DD; font-weight: bold } /* Literal.Number.Integer.Long */</style><div class="highlight"><pre><span></span>#
# 64-bit system call numbers and entry vectors
#
# The format is:
# &lt;number&gt; &lt;abi&gt; &lt;name&gt; &lt;entry point&gt;
#
# The __x64_sys_*() stubs are created on-the-fly for sys_*() system calls
#
# The abi is &quot;common&quot;, &quot;64&quot; or &quot;x32&quot; for this file.
#
0	common	read			sys_read
1	common	write			sys_write
2	common	open			sys_open
3	common	close			sys_close
4	common	stat			sys_newstat
5	common	fstat			sys_newfstat
6	common	lstat			sys_newlstat
7	common	poll			sys_poll
8	common	lseek			sys_lseek
9	common	mmap			sys_mmap
10	common	mprotect		sys_mprotect
11	common	munmap			sys_munmap
12	common	brk			sys_brk
13	64	rt_sigaction		sys_rt_sigaction
14	common	rt_sigprocmask		sys_rt_sigprocmask
15	64	rt_sigreturn		sys_rt_sigreturn
16	64	ioctl			sys_ioctl
17	common	pread64			sys_pread64
18	common	pwrite64		sys_pwrite64
19	64	readv			sys_readv
20	64	writev			sys_writev
21	common	access			sys_access
22	common	pipe			sys_pipe
23	common	select			sys_select
24	common	sched_yield		sys_sched_yield
25	common	mremap			sys_mremap
26	common	msync			sys_msync
27	common	mincore			sys_mincore
28	common	madvise			sys_madvise
29	common	shmget			sys_shmget
30	common	shmat			sys_shmat
31	common	shmctl			sys_shmctl
32	common	dup			sys_dup
33	common	dup2			sys_dup2
34	common	pause			sys_pause
35	common	nanosleep		sys_nanosleep
36	common	getitimer		sys_getitimer
37	common	alarm			sys_alarm
38	common	setitimer		sys_setitimer
39	common	getpid			sys_getpid
40	common	sendfile		sys_sendfile64
41	common	socket			sys_socket
42	common	connect			sys_connect
43	common	accept			sys_accept
44	common	sendto			sys_sendto
45	64	recvfrom		sys_recvfrom
46	64	sendmsg			sys_sendmsg
47	64	recvmsg			sys_recvmsg
48	common	shutdown		sys_shutdown
49	common	bind			sys_bind
50	common	listen			sys_listen
51	common	getsockname		sys_getsockname
52	common	getpeername		sys_getpeername
53	common	socketpair		sys_socketpair
54	64	setsockopt		sys_setsockopt
55	64	getsockopt		sys_getsockopt
56	common	clone			sys_clone
57	common	fork			sys_fork
58	common	vfork			sys_vfork
59	64	execve			sys_execve
60	common	exit			sys_exit
61	common	wait4			sys_wait4
62	common	kill			sys_kill
63	common	uname			sys_newuname
64	common	semget			sys_semget
65	common	semop			sys_semop
66	common	semctl			sys_semctl
67	common	shmdt			sys_shmdt
68	common	msgget			sys_msgget
69	common	msgsnd			sys_msgsnd
70	common	msgrcv			sys_msgrcv
71	common	msgctl			sys_msgctl
72	common	fcntl			sys_fcntl
73	common	flock			sys_flock
74	common	fsync			sys_fsync
75	common	fdatasync		sys_fdatasync
76	common	truncate		sys_truncate
77	common	ftruncate		sys_ftruncate
78	common	getdents		sys_getdents
79	common	getcwd			sys_getcwd
80	common	chdir			sys_chdir
81	common	fchdir			sys_fchdir
82	common	rename			sys_rename
83	common	mkdir			sys_mkdir
84	common	rmdir			sys_rmdir
85	common	creat			sys_creat
86	common	link			sys_link
87	common	unlink			sys_unlink
88	common	symlink			sys_symlink
89	common	readlink		sys_readlink
90	common	chmod			sys_chmod
91	common	fchmod			sys_fchmod
92	common	chown			sys_chown
93	common	fchown			sys_fchown
94	common	lchown			sys_lchown
95	common	umask			sys_umask
96	common	gettimeofday		sys_gettimeofday
97	common	getrlimit		sys_getrlimit
98	common	getrusage		sys_getrusage
99	common	sysinfo			sys_sysinfo
100	common	times			sys_times
101	64	ptrace			sys_ptrace
102	common	getuid			sys_getuid
103	common	syslog			sys_syslog
104	common	getgid			sys_getgid
105	common	setuid			sys_setuid
106	common	setgid			sys_setgid
107	common	geteuid			sys_geteuid
108	common	getegid			sys_getegid
109	common	setpgid			sys_setpgid
110	common	getppid			sys_getppid
111	common	getpgrp			sys_getpgrp
112	common	setsid			sys_setsid
113	common	setreuid		sys_setreuid
114	common	setregid		sys_setregid
115	common	getgroups		sys_getgroups
116	common	setgroups		sys_setgroups
117	common	setresuid		sys_setresuid
118	common	getresuid		sys_getresuid
119	common	setresgid		sys_setresgid
120	common	getresgid		sys_getresgid
121	common	getpgid			sys_getpgid
122	common	setfsuid		sys_setfsuid
123	common	setfsgid		sys_setfsgid
124	common	getsid			sys_getsid
125	common	capget			sys_capget
126	common	capset			sys_capset
127	64	rt_sigpending		sys_rt_sigpending
128	64	rt_sigtimedwait		sys_rt_sigtimedwait
129	64	rt_sigqueueinfo		sys_rt_sigqueueinfo
130	common	rt_sigsuspend		sys_rt_sigsuspend
131	64	sigaltstack		sys_sigaltstack
132	common	utime			sys_utime
133	common	mknod			sys_mknod
134	64	uselib
135	common	personality		sys_personality
136	common	ustat			sys_ustat
137	common	statfs			sys_statfs
138	common	fstatfs			sys_fstatfs
139	common	sysfs			sys_sysfs
140	common	getpriority		sys_getpriority
141	common	setpriority		sys_setpriority
142	common	sched_setparam		sys_sched_setparam
143	common	sched_getparam		sys_sched_getparam
144	common	sched_setscheduler	sys_sched_setscheduler
145	common	sched_getscheduler	sys_sched_getscheduler
146	common	sched_get_priority_max	sys_sched_get_priority_max
147	common	sched_get_priority_min	sys_sched_get_priority_min
148	common	sched_rr_get_interval	sys_sched_rr_get_interval
149	common	mlock			sys_mlock
150	common	munlock			sys_munlock
151	common	mlockall		sys_mlockall
152	common	munlockall		sys_munlockall
153	common	vhangup			sys_vhangup
154	common	modify_ldt		sys_modify_ldt
155	common	pivot_root		sys_pivot_root
156	64	_sysctl			sys_ni_syscall
157	common	prctl			sys_prctl
158	common	arch_prctl		sys_arch_prctl
159	common	adjtimex		sys_adjtimex
160	common	setrlimit		sys_setrlimit
161	common	chroot			sys_chroot
162	common	sync			sys_sync
163	common	acct			sys_acct
164	common	settimeofday		sys_settimeofday
165	common	mount			sys_mount
166	common	umount2			sys_umount
167	common	swapon			sys_swapon
168	common	swapoff			sys_swapoff
169	common	reboot			sys_reboot
170	common	sethostname		sys_sethostname
171	common	setdomainname		sys_setdomainname
172	common	iopl			sys_iopl
173	common	ioperm			sys_ioperm
174	64	create_module
175	common	init_module		sys_init_module
176	common	delete_module		sys_delete_module
177	64	get_kernel_syms
178	64	query_module
179	common	quotactl		sys_quotactl
180	64	nfsservctl
181	common	getpmsg
182	common	putpmsg
183	common	afs_syscall
184	common	tuxcall
185	common	security
186	common	gettid			sys_gettid
187	common	readahead		sys_readahead
188	common	setxattr		sys_setxattr
189	common	lsetxattr		sys_lsetxattr
190	common	fsetxattr		sys_fsetxattr
191	common	getxattr		sys_getxattr
192	common	lgetxattr		sys_lgetxattr
193	common	fgetxattr		sys_fgetxattr
194	common	listxattr		sys_listxattr
195	common	llistxattr		sys_llistxattr
196	common	flistxattr		sys_flistxattr
197	common	removexattr		sys_removexattr
198	common	lremovexattr		sys_lremovexattr
199	common	fremovexattr		sys_fremovexattr
200	common	tkill			sys_tkill
201	common	time			sys_time
202	common	futex			sys_futex
203	common	sched_setaffinity	sys_sched_setaffinity
204	common	sched_getaffinity	sys_sched_getaffinity
205	64	set_thread_area
206	64	io_setup		sys_io_setup
207	common	io_destroy		sys_io_destroy
208	common	io_getevents		sys_io_getevents
209	64	io_submit		sys_io_submit
210	common	io_cancel		sys_io_cancel
211	64	get_thread_area
212	common	lookup_dcookie		sys_lookup_dcookie
213	common	epoll_create		sys_epoll_create
214	64	epoll_ctl_old
215	64	epoll_wait_old
216	common	remap_file_pages	sys_remap_file_pages
217	common	getdents64		sys_getdents64
218	common	set_tid_address		sys_set_tid_address
219	common	restart_syscall		sys_restart_syscall
220	common	semtimedop		sys_semtimedop
221	common	fadvise64		sys_fadvise64
222	64	timer_create		sys_timer_create
223	common	timer_settime		sys_timer_settime
224	common	timer_gettime		sys_timer_gettime
225	common	timer_getoverrun	sys_timer_getoverrun
226	common	timer_delete		sys_timer_delete
227	common	clock_settime		sys_clock_settime
228	common	clock_gettime		sys_clock_gettime
229	common	clock_getres		sys_clock_getres
230	common	clock_nanosleep		sys_clock_nanosleep
231	common	exit_group		sys_exit_group
232	common	epoll_wait		sys_epoll_wait
233	common	epoll_ctl		sys_epoll_ctl
234	common	tgkill			sys_tgkill
235	common	utimes			sys_utimes
236	64	vserver
237	common	mbind			sys_mbind
238	common	set_mempolicy		sys_set_mempolicy
239	common	get_mempolicy		sys_get_mempolicy
240	common	mq_open			sys_mq_open
241	common	mq_unlink		sys_mq_unlink
242	common	mq_timedsend		sys_mq_timedsend
243	common	mq_timedreceive		sys_mq_timedreceive
244	64	mq_notify		sys_mq_notify
245	common	mq_getsetattr		sys_mq_getsetattr
246	64	kexec_load		sys_kexec_load
247	64	waitid			sys_waitid
248	common	add_key			sys_add_key
249	common	request_key		sys_request_key
250	common	keyctl			sys_keyctl
251	common	ioprio_set		sys_ioprio_set
252	common	ioprio_get		sys_ioprio_get
253	common	inotify_init		sys_inotify_init
254	common	inotify_add_watch	sys_inotify_add_watch
255	common	inotify_rm_watch	sys_inotify_rm_watch
256	common	migrate_pages		sys_migrate_pages
257	common	openat			sys_openat
258	common	mkdirat			sys_mkdirat
259	common	mknodat			sys_mknodat
260	common	fchownat		sys_fchownat
261	common	futimesat		sys_futimesat
262	common	newfstatat		sys_newfstatat
263	common	unlinkat		sys_unlinkat
264	common	renameat		sys_renameat
265	common	linkat			sys_linkat
266	common	symlinkat		sys_symlinkat
267	common	readlinkat		sys_readlinkat
268	common	fchmodat		sys_fchmodat
269	common	faccessat		sys_faccessat
270	common	pselect6		sys_pselect6
271	common	ppoll			sys_ppoll
272	common	unshare			sys_unshare
273	64	set_robust_list		sys_set_robust_list
274	64	get_robust_list		sys_get_robust_list
275	common	splice			sys_splice
276	common	tee			sys_tee
277	common	sync_file_range		sys_sync_file_range
278	64	vmsplice		sys_vmsplice
279	64	move_pages		sys_move_pages
280	common	utimensat		sys_utimensat
281	common	epoll_pwait		sys_epoll_pwait
282	common	signalfd		sys_signalfd
283	common	timerfd_create		sys_timerfd_create
284	common	eventfd			sys_eventfd
285	common	fallocate		sys_fallocate
286	common	timerfd_settime		sys_timerfd_settime
287	common	timerfd_gettime		sys_timerfd_gettime
288	common	accept4			sys_accept4
289	common	signalfd4		sys_signalfd4
290	common	eventfd2		sys_eventfd2
291	common	epoll_create1		sys_epoll_create1
292	common	dup3			sys_dup3
293	common	pipe2			sys_pipe2
294	common	inotify_init1		sys_inotify_init1
295	64	preadv			sys_preadv
296	64	pwritev			sys_pwritev
297	64	rt_tgsigqueueinfo	sys_rt_tgsigqueueinfo
298	common	perf_event_open		sys_perf_event_open
299	64	recvmmsg		sys_recvmmsg
300	common	fanotify_init		sys_fanotify_init
301	common	fanotify_mark		sys_fanotify_mark
302	common	prlimit64		sys_prlimit64
303	common	name_to_handle_at	sys_name_to_handle_at
304	common	open_by_handle_at	sys_open_by_handle_at
305	common	clock_adjtime		sys_clock_adjtime
306	common	syncfs			sys_syncfs
307	64	sendmmsg		sys_sendmmsg
308	common	setns			sys_setns
309	common	getcpu			sys_getcpu
310	64	process_vm_readv	sys_process_vm_readv
311	64	process_vm_writev	sys_process_vm_writev
312	common	kcmp			sys_kcmp
313	common	finit_module		sys_finit_module
314	common	sched_setattr		sys_sched_setattr
315	common	sched_getattr		sys_sched_getattr
316	common	renameat2		sys_renameat2
317	common	seccomp			sys_seccomp
318	common	getrandom		sys_getrandom
319	common	memfd_create		sys_memfd_create
320	common	kexec_file_load		sys_kexec_file_load
321	common	bpf			sys_bpf
322	64	execveat		sys_execveat
323	common	userfaultfd		sys_userfaultfd
324	common	membarrier		sys_membarrier
325	common	mlock2			sys_mlock2
326	common	copy_file_range		sys_copy_file_range
327	64	preadv2			sys_preadv2
328	64	pwritev2		sys_pwritev2
329	common	pkey_mprotect		sys_pkey_mprotect
330	common	pkey_alloc		sys_pkey_alloc
331	common	pkey_free		sys_pkey_free
332	common	statx			sys_statx
333	common	io_pgetevents		sys_io_pgetevents
334	common	rseq			sys_rseq
# don&#39;t use numbers 387 through 423, add new calls after the last
# &#39;common&#39; entry
424	common	pidfd_send_signal	sys_pidfd_send_signal
425	common	io_uring_setup		sys_io_uring_setup
426	common	io_uring_enter		sys_io_uring_enter
427	common	io_uring_register	sys_io_uring_register
428	common	open_tree		sys_open_tree
429	common	move_mount		sys_move_mount
430	common	fsopen			sys_fsopen
431	common	fsconfig		sys_fsconfig
432	common	fsmount			sys_fsmount
433	common	fspick			sys_fspick
434	common	pidfd_open		sys_pidfd_open
435	common	clone3			sys_clone3
436	common	close_range		sys_close_range
437	common	openat2			sys_openat2
438	common	pidfd_getfd		sys_pidfd_getfd
439	common	faccessat2		sys_faccessat2
440	common	process_madvise		sys_process_madvise
441	common	epoll_pwait2		sys_epoll_pwait2
442	common	mount_setattr		sys_mount_setattr
443	common	quotactl_fd		sys_quotactl_fd
444	common	landlock_create_ruleset	sys_landlock_create_ruleset
445	common	landlock_add_rule	sys_landlock_add_rule
446	common	landlock_restrict_self	sys_landlock_restrict_self
447	common	memfd_secret		sys_memfd_secret
448	common	process_mrelease	sys_process_mrelease

#
# Due to a historical design error, certain syscalls are numbered differently
# in x32 as compared to native x86_64.  These syscalls have numbers 512-547.
# Do not add new syscalls to this range.  Numbers 548 and above are available
# for non-x32 use.
#
512	x32	rt_sigaction		compat_sys_rt_sigaction
513	x32	rt_sigreturn		compat_sys_x32_rt_sigreturn
514	x32	ioctl			compat_sys_ioctl
515	x32	readv			sys_readv
516	x32	writev			sys_writev
517	x32	recvfrom		compat_sys_recvfrom
518	x32	sendmsg			compat_sys_sendmsg
519	x32	recvmsg			compat_sys_recvmsg
520	x32	execve			compat_sys_execve
521	x32	ptrace			compat_sys_ptrace
522	x32	rt_sigpending		compat_sys_rt_sigpending
523	x32	rt_sigtimedwait		compat_sys_rt_sigtimedwait_time64
524	x32	rt_sigqueueinfo		compat_sys_rt_sigqueueinfo
525	x32	sigaltstack		compat_sys_sigaltstack
526	x32	timer_create		compat_sys_timer_create
527	x32	mq_notify		compat_sys_mq_notify
528	x32	kexec_load		compat_sys_kexec_load
529	x32	waitid			compat_sys_waitid
530	x32	set_robust_list		compat_sys_set_robust_list
531	x32	get_robust_list		compat_sys_get_robust_list
532	x32	vmsplice		sys_vmsplice
533	x32	move_pages		sys_move_pages
534	x32	preadv			compat_sys_preadv64
535	x32	pwritev			compat_sys_pwritev64
536	x32	rt_tgsigqueueinfo	compat_sys_rt_tgsigqueueinfo
537	x32	recvmmsg		compat_sys_recvmmsg_time64
538	x32	sendmmsg		compat_sys_sendmmsg
539	x32	process_vm_readv	sys_process_vm_readv
540	x32	process_vm_writev	sys_process_vm_writev
541	x32	setsockopt		sys_setsockopt
542	x32	getsockopt		sys_getsockopt
543	x32	io_setup		compat_sys_io_setup
544	x32	io_submit		compat_sys_io_submit
545	x32	execveat		compat_sys_execveat
546	x32	preadv2			compat_sys_preadv64v2
547	x32	pwritev2		compat_sys_pwritev64v2
# This is the end of the legacy x32 range.  Numbers 548 and above are
# not special and are not to be used for x32-specific syscalls.
</pre></div>
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>generated by <a href='https://git.zx2c4.com/cgit/about/'>cgit 1.2.3-1.el7</a> (<a href='https://git-scm.com/'>git 2.26.2</a>) at 2021-10-18 15:27:52 +0000</div>
</div> <!-- id=cgit -->
</body>
</html>

 [./syscall_64.tbl.html](./syscall_64.tbl.html)
<iframe src="./syscall_64.tbl.html">
# license
[![License: WTFPL](https://img.shields.io/badge/License-WTFPL-brightgreen.svg)](http://www.wtfpl.net/about/)
