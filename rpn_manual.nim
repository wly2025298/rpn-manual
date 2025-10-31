import nimib

nbInit

nbText: """
<div style="max-width:680px;margin:0 auto;font-family:'Helvetica Neue',Arial,sans-serif;line-height:1.8;color:#333;">

<p style="font-size:26px;font-weight:600;border-bottom:1px solid #e5e5e5;padding-bottom:8px;">RPN 计算器使用手册</p>

<p style="font-size:18px;font-weight:600;margin-top:40px;">安装与编译指南</p>

<ol style="padding-left:20px;">
  <li>安装 Nim 编译器<br>
      <span style="color:#666;">curl https://nim-lang.org/choosenim/init.sh -sSf | sh</span><br>
      <span style="color:#666;">echo 'export PATH=$HOME/.nimble/bin:$PATH' >> ~/.bashrc && source ~/.bashrc</span>
  </li>
  <li style="margin-top:14px;">安装 <strong>nimib</strong><br>
      <span style="color:#666;">nimble install nimib</span>
  </li>
  <li style="margin-top:14px;">编译 C++ 程序<br>
      <span style="color:#666;">g++ rpn_calc.cpp -o rpn_calc</span>
  </li>
  <li style="margin-top:14px;">生成 HTML<br>
      <span style="color:#666;">nim r rpn_manual.nim</span><br>
      输出文件 <strong>rpn_manual.html</strong> 与源文件同目录
  </li>
</ol>

<p style="font-size:18px;font-weight:600;margin-top:40px;">基本使用示例</p>
<p>启动程序后，逐行输入表达式，空格分隔，回车计算。</p>
<p style="background:#f7f7f7;padding:10px 14px;border-radius:4px;font-size:15px;color:#444;">
  > 5 5 + 3 *<br>
  <strong>结果 30</strong><br>
  <strong>栈  30</strong>
</p>

<p style="font-size:18px;font-weight:600;margin-top:40px;">支持的操作</p>
<table style="width:100%;border-collapse:collapse;font-size:15px;">
  <tr style="border-bottom:1px solid #e5e5e5;">
    <td style="padding:8px 0;"><strong>加法</strong></td>
    <td style="padding:8px 0;">符号 +</td>
    <td style="padding:8px 0;">栈深度 2</td>
  </tr>
  <tr style="border-bottom:1px solid #e5e5e5;">
    <td style="padding:8px 0;"><strong>减法</strong></td>
    <td style="padding:8px 0;">符号 -</td>
    <td style="padding:8px 0;">栈深度 2</td>
  </tr>
  <tr style="border-bottom:1px solid #e5e5e5;">
    <td style="padding:8px 0;"><strong>乘法</strong></td>
    <td style="padding:8px 0;">符号 *</td>
    <td style="padding:8px 0;">栈深度 2</td>
  </tr>
  <tr style="border-bottom:1px solid #e5e5e5;">
    <td style="padding:8px 0;"><strong>除法</strong></td>
    <td style="padding:8px 0;">符号 /</td>
    <td style="padding:8px 0;">栈深度 2</td>
  </tr>
  <tr>
    <td style="padding:8px 0;"><strong>退出</strong></td>
    <td style="padding:8px 0;">符号 q</td>
    <td style="padding:8px 0;">栈深度 0</td>
  </tr>
</table>
<p style="font-size:13px;color:#666;margin-top:6px;">浮点数与整数均可，例 <strong>3</strong> 或 <strong>3.14</strong></p>

<p style="font-size:18px;font-weight:600;margin-top:40px;">错误说明</p>
<p style="background:#fff5f5;padding:10px 14px;border-left:3px solid #d00;border-radius:4px;font-size:15px;">
  除零错误<br>
  > 5 0 /<br>
  <strong>错误 Divide by zero</strong>
</p>
<p style="background:#fff5f5;padding:10px 14px;border-left:3px solid #d00;border-radius:4px;font-size:15px;margin-top:12px;">
  栈空错误<br>
  > +<br>
  <strong>错误 Stack underflow</strong>
</p>
<p style="background:#fff5f5;padding:10px 14px;border-left:3px solid #d00;border-radius:4px;font-size:15px;margin-top:12px;">
  非法操作符<br>
  > 1 2 abc +<br>
  <strong>错误 Unknown operator abc</strong>
</p>

<p style="font-size:18px;font-weight:600;margin-top:40px;">输入输出速查</p>
<p>RPN 计算器（输入 q 退出）</p>
<p style="background:#f7f7f7;padding:10px 14px;border-radius:4px;font-size:15px;color:#444;">
  > 5 5 + 3 *<br>
  <strong>结果 30</strong><br>
  <strong>栈  30</strong>
</p>
<p style="background:#f7f7f7;padding:10px 14px;border-radius:4px;font-size:15px;color:#444;margin-top:10px;">
  > 5 0 /<br>
  <strong>错误 Divide by zero</strong>
</p>
<p style="background:#f7f7f7;padding:10px 14px;border-radius:4px;font-size:15px;color:#444;margin-top:10px;">
  > +<br>
  <strong>错误 Stack underflow</strong>
</p>
<p style="background:#f7f7f7;padding:10px 14px;border-radius:4px;font-size:15px;color:#444;margin-top:10px;">
  > 1 2 3<br>
  <strong>结果 3</strong><br>
  <strong>栈  1 2 3</strong>
</p>

</div>
"""

