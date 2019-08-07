---
layout: post
title: Investment related some issuse from my work
excerpt: summery of my work as investment strategy modeling at last two years.
我的这两年的投资策略研究工作中遇到问题的总结
categories:
    - tech
tags:
    - languages
layout: post
---

<div id="outline-container-sec-1" class="outline-2">
<h2 id="sec-1"><span class="section-number-2">1</span> 我的这两年的投资策略研究工作中遇到问题的总结</h2>
<div class="outline-text-2" id="text-1">
<p>
我最近两年做投资策略相关的工作，在不断尝试各种策略的同时，思考了一些相关的问题。我觉得有必要总结一些，或许对感兴趣的人有所帮助和启发。
</p>

<p>
首先讲一些数学上的基本概念和结论，有证明和推导过程。这些结论普遍适用，虽然无法直接用来获利，对于分析策略模型是有帮助的。
然后，提出三种数据取样方法和一个策略模型。
数据取样方法的规则比较明确，可以用程序在几秒钟之内处理完毕十年的数据，如果程序实现良好的话。满足取样规则的数据，我称为结构，可以作为构建策略的基本元素。
我现在用上面方法构建的策略模型，经过沪深300指数(000300.ICSI)十年数据回测，收益为10倍左右。这个模型的推广适用性，是否过优化等问题，仍然有待验证。我对此比较乐观。
</p>
</div>


<div id="outline-container-sec-1-1" class="outline-3">
<h3 id="sec-1-1"><span class="section-number-3">1.1</span> 一个简单的硬币游戏</h3>
<div class="outline-text-3" id="text-1-1">
</div><div id="outline-container-sec-1-1-1" class="outline-4">
<h4 id="sec-1-1-1"><span class="section-number-4">1.1.1</span> 规则和简单分析</h4>
<div class="outline-text-4" id="text-1-1-1">
<p>
首先，考虑玩一个简单的游戏。
</p>

<p>
抛一个均质硬币，猜正反面。假设两面概率完全相同(p1=p2=0.5)，竖立无效(如果出现就重抛，直到有效)。 每次下注 f 元， 如果猜对，
赌注f 返还， 另外赢 2f 元。如果猜错，赌注f 全部输掉。初始资金100元，最多玩100次。 f 每次取多少， 是最佳策略？
</p>

<p>
以一搏二，显然这是一个对我方有利的游戏。这里有利定义为收益的期望， 即单次游戏中，各种可能收益的加权平均值为正。
收益期望计算如下
</p>

<p>
E = 0.5*2*f+0.5*(-1)*f = 0.5*f &gt; 0
</p>

<p>
显然，每次下注f 越大时，单次的收益期望越大，累计期望同样也越大。另外一方面，每次下全部赌注，最终剩余资金不为零的概率为 （1/2^100），
换句话说，除非太阳打西边出来，否则最终收益一定是零。
同时，可以得到最终收益期望为(3^100/2^100)=1.5^100=4.066*10^17, 的确是一个很大的数字。
</p>

<p>
这里主要说明的是，计算收益的期望有助于我们判断游戏是否对我有利，但是不应该用来计算我们游戏时投注的比例(这里指连续游戏)。
</p>
</div>
</div>
<div id="outline-container-sec-1-1-2" class="outline-4">
<h4 id="sec-1-1-2"><span class="section-number-4">1.1.2</span> 体验游戏及数据实验</h4>
</div>
</div>

<div id="outline-container-sec-1-2" class="outline-3">
<h3 id="sec-1-2"><span class="section-number-3">1.2</span> 凯利(kelly)公式及推导</h3>
<div class="outline-text-3" id="text-1-2">
</div><div id="outline-container-sec-1-2-1" class="outline-4">
<h4 id="sec-1-2-1"><span class="section-number-4">1.2.1</span> 双倍下注或则过度下注是谎言</h4>
</div>
</div>

<div id="outline-container-sec-1-3" class="outline-3">
<h3 id="sec-1-3"><span class="section-number-3">1.3</span> 无预测模型， 保护线方法可否无往而不利</h3>
<div class="outline-text-3" id="text-1-3">
</div><div id="outline-container-sec-1-3-1" class="outline-4">
<h4 id="sec-1-3-1"><span class="section-number-4">1.3.1</span> 计算手续费率对模型的影响</h4>
</div>

<div id="outline-container-sec-1-3-2" class="outline-4">
<h4 id="sec-1-3-2"><span class="section-number-4">1.3.2</span> 连续价格假设</h4>
</div>

<div id="outline-container-sec-1-3-3" class="outline-4">
<h4 id="sec-1-3-3"><span class="section-number-4">1.3.3</span> 香农提出的无预测套利模型</h4>
</div>
</div>

<div id="outline-container-sec-1-4" class="outline-3">
<h3 id="sec-1-4"><span class="section-number-3">1.4</span> 收益由预测决定</h3>
</div>
</div>
