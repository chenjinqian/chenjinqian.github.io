---
layout: post
title: How to learn any language in six months -- Chris Lonsdale.
excerpt: Language learing theory from TED speach. With Chinese translation, still need some pictures.
categories:
    - tech
tags:
    - languages
layout: post
---
<ul class="org-ul">
<li>Investment related some issuse from my work  我工作中涉及到的一些投资相关的问题
</li>
</ul>

<p>
我最近两年做投资策略相关的工作，在不断尝试各种策略的同时，思考了一些相关的问题。
我觉得有必要总结一些，或许对感兴趣的人有所帮助和启发。
</p>


<p>
首先是一些数学上的基本概念和结论，有证明和推导过程。这些结论普遍适用。
当然，无法直接用来获利，但是对于构建策略模型是有帮助的。
然后，提出三种数据取样方法和一个策略模型。
数据取样方法的规则比较明确，可以用程序在几秒钟之内处理完毕十年的数据，如果程序实现良好的话。这些取样后的结构可以作为构建策略的基本元素。
我现在用上面方法构建的策略模型，经过沪深300指数(000300.ICSI)十年数据回测，收益为10倍左右。这个模型的推广适用性，是否过优化等问题，有待验证。
</p>

<p>
++ 简单游戏引出的凯利(kelly)公式
   首先，考虑玩一个简单的游戏。
</p>

<p>
   抛一个均质硬币，猜正反面。假设两面概率完全相同，不存在站立的情况(如果出现就重新抛一次，直到有效)。每次下注 f 元， 如果猜对，
赌注f 返还， 另外赢 2f 元。如果猜错，赌注f 全部输掉。初始资金100元，最多玩100次。 何种策略最佳？
</p>
